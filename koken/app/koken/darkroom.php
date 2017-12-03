<?php

require_once(dirname(__FILE__) . '/icc.php');

class Darkroom {

	public static $presets = array(
		'tiny' => array(
			'width' => 60,
			'height' => 60
		),
		'small' => array(
			'width' => 100,
			'height' => 100
		),
		'medium' => array(
			'width' => 480,
			'height' => 480
		),
		'medium_large' => array(
			'width' => 800,
			'height' => 800
		),
		'large' => array(
			'width' => 1024,
			'height' => 1024
		),
		'xlarge' => array(
			'width' => 1600,
			'height' => 1600
		),
		'huge' => array(
			'width' => 2048,
			'height' => 2048
		)
	);

	////
	// The workhorse develop function
	////
	static function develop($options) {

		$defaults = array(
			'square' => false,
			'force' => false,
			'hires' => false,
			'source_width' => false,
			'source_height' => false,
			'strip' => true
		);

		$o = array_merge($defaults, $options);

		$old_mask = umask(0);

		if ($o['hires'])
		{
			$o['width'] *= 2;
			$o['height'] *= 2;
			$o['quality'] = max(50, $o['quality'] - ($o['quality']*0.15));
			$o['sharpness'] /= 2;
		}

		list($im_version, $lib) = self::processing_library_version();

		if (!$o['source_width'] || !$o['source_height'])
		{
			list($o['source_width'], $o['source_height'], $source_image_type) = getimagesize($o['source']);
		}

		if ($o['width'] == $o['source_width'] && $o['height'] == $o['source_height'] && !$o['force']) {
			copy($o['source'], $o['destination']);
			return;
		}

		$original_aspect = $o['source_width']/$o['source_height'];
		$new_aspect = $o['width']/$o['height'];

		if ($o['sharpening'] > 0 && ($lib === 'GD' || version_compare($im_version, '6.2.9', '>=')))
		{
			$sigma = $o['sharpening'];
			if ($sigma < 1)
			{
				$sigma = 1;
			}
			else
			{
				$sigma = sqrt($sigma);
			}
		}
		else
		{
			$o['sharpening'] = false;
		}

		if (!$o['strip'] && $options['width'] < 480 && $options['height'] < 480)
		{
			$o['strip'] = true;
		}

		if (version_compare($im_version, '6.0.0') && $o['strip'])
		{
			$strip = ' -strip';
		}
		else if (!$lib)
		{
			$strip = '';
		}

		if ((!empty($strip) || $lib !== 'GD') && preg_match('/\.jpe?g$/i', $o['source']))
		{
			$icc = new JPEG_ICC;
			$icc->LoadFromJpeg($o['source']);
		}

		if ($lib === false)
		{
			exec(str_replace('convert', 'identify', MAGICK_PATH_FINAL) . ' -list resource', $limits);
			if (strpos(strtolower($limits[0]), 'thread') !== false)
			{
				$strip .= ' -limit thread 1';
			}
		}
		else
		{
			// Up mem limit for Imagick and GD
			$memory_limit = (int) ini_get('memory_limit');

			if (is_numeric($memory_limit) && $memory_limit < 256)
			{
				@ini_set('memory_limit', '256M');
			}
		}

		if ($lib === 'Imagick')
		{
			$image = new Imagick();
		}
		else if ($lib === 'GD')
		{
			if (!isset($source_image_type))
			{
				list(,,$source_image_type) = getimagesize($o['source']);
			}

			switch($source_image_type) {
				case IMAGETYPE_JPEG:
					$src_img = imagecreatefromjpeg($o['source']);
					break;

				case IMAGETYPE_PNG:
					$src_img = imagecreatefrompng($o['source']);
					break;

				case IMAGETYPE_GIF:
					$src_img = imagecreatefromgif($o['source']);
					break;
			}

			if (!isset($src_img))
			{
				return false;
			}
		}

		if ($o['square'])
		{
			$resize_h = $resize_w = 0;

			if ($original_aspect >= $new_aspect) {
				$resize_h = $o['height'];
				$size_str = 'x' . $o['height'];
				$int_w = ($o['source_width']*$o['height'])/$o['source_height'];
				$int_h = $o['height'];
				$pos_x = $int_w * ($o['focal_x']/100);
				$pos_y = $o['height'] * ($o['focal_y']/100);
				$hint_w = $int_w;
				$hint_h = $o['height'];
			} else {
				$resize_w = $o['width'];
				$size_str = $o['width'] . 'x';
				$int_h = ($o['source_height']*$o['width'])/$o['source_width'];
				$int_w = $o['width'];
				$pos_x = $o['width'] * ($o['focal_x']/100);
				$pos_y = $int_h * ($o['focal_y']/100);
				$hint_w = $o['width'];
				$hint_h = $int_w;
			}

			$crop_y = $pos_y - ($o['height']/2);
			$crop_x = $pos_x - ($o['width']/2);

			if ($crop_y < 0) {
				$crop_y = 0;
			} else if (($crop_y+$o['height']) > $int_h) {
				$crop_y = $int_h - $o['height'];
			}
			if ($crop_x < 0) {
				$crop_x = 0;
			} else if (($crop_x+$o['width']) > $int_w) {
				$crop_x = $int_w - $o['width'];
			}

			if ($lib === 'Imagick')
			{
				$image->setSize($hint_w, $hint_h);
				$image->readImage($o['source']);
				if ($o['strip'])
				{
					$image->stripImage();
				}
				$image->setImageCompressionQuality($o['quality']);
				$image->scaleImage($resize_w, $resize_h, $bestfit);
				$image->cropImage($o['width'], $o['height'], $crop_x, $crop_y);
				$image->setImagePage($o['width'], $o['height'], 0, 0);
			}
			else if ($lib === 'GD')
			{
				$temp_img = self::create_gd_proportional($int_w, $int_h, $o['source_width'], $o['source_height'], $src_img);
				$final_img = imagecreatetruecolor($o['width'], $o['height']);
				if ($source_image_type == IMAGETYPE_PNG)
				{
					$transparency = imagecolorallocatealpha($final_img, 0, 0, 0, 127);
					imagefill($final_img, 0, 0, $transparency);
				}
				imagecopy($final_img, $temp_img, 0, 0, $crop_x, $crop_y, $o['width'], $o['height']);
				imagedestroy($temp_img);
			}
			else
			{
				$cmd = MAGICK_PATH_FINAL . $strip . " -size {$hint_w}x{$hint_h} \"{$o['source']}\" -limit memory 33554432 -limit map 67108864 -depth 8 -density 72 -quality {$o['quality']} -resize $size_str -crop {$o['width']}x{$o['height']}+{$crop_x}+{$crop_y} -page 0+0";
			}
		}
		else
		{
			$bestfit = true;
			if ($o['width'] == 0 || $o['height'] == 0)
			{
				$hint_w = $hint_h = max($o['width'], $o['height']);
				if ($lib !== 'GD')
				{
					if ($lib === false && version_compare($im_version, '6.3.8-2') < 0)
					{
						if ($o['width'] == 0)
						{
							$o['width'] = 10000;
						}
						else
						{
							$o['height'] = 10000;
						}
					}
					else
					{
						$o['width'] = max($o['width'], 0);
						$o['height'] = max($o['height'], 0) . '^';
					}
					$bestfit = false;
				}
			}
			else
			{
				if ((($original_aspect >= $new_aspect && $o['width'] > $o['source_width']) || ($original_aspect < $new_aspect && $o['height'] > $o['source_height'])) && !$o['force']) {
					copy($o['source'], $o['destination']);
					if (isset($src_img))
					{
						imagedestroy($src_img);
					}
					return;
				}

				$hint_w = $o['width'];
				$hint_h = $o['height'];
			}

			if ($lib === 'Imagick')
			{
				$image->setSize($hint_w, $hint_h);
				$image->readImage($o['source']);
				if ($o['strip'])
				{
					$image->stripImage();
				}
				$image->setImageCompressionQuality($o['quality']);
				$image->scaleImage( $o['width'], $o['height'], $bestfit);
			}
			else if ($lib === 'GD')
			{
				if ($o['width'] == 0 || $o['height'] == 0)
				{
					if ($o['width'] == 0)
					{
						$thumb_h = $o['height'];
						$thumb_w = ($o['height']*$o['source_width'])/$o['source_height'];
					}
					else
					{
						$thumb_w = $o['width'];
						$thumb_h = ($o['width']*$o['source_height'])/$o['source_width'];
					}
				}
				else
				{
					if ($original_aspect >= $new_aspect)
					{
						$thumb_w = $o['width'];
						$thumb_h = ($o['width']*$o['source_height'])/$o['source_width'];
					}
					else
					{
						$thumb_w = ($o['height']*$o['source_width'])/$o['source_height'];
						$thumb_h = $o['height'];
					}
				}

				$final_img = self::create_gd_proportional($thumb_w, $thumb_h, $o['source_width'], $o['source_height'], $src_img);
			}
			else
			{
				$cmd = MAGICK_PATH_FINAL . $strip . " -size {$hint_w}x{$hint_h} \"{$o['source']}\" -limit memory 33554432 -limit map 67108864 -depth 8 -density 72 -quality {$o['quality']} -resize {$o['width']}x{$o['height']}";
			}

		}

		if ($o['sharpening'] > 0)
		{
			if ($lib !== 'GD')
			{
				// Set radius to 0 to let IM decide the best value based on sigma
				$o['sharpening'] = 0;
			}

			if ($lib === 'Imagick')
			{
				$image->unsharpMaskImage( $o['sharpening'], $sigma, 1, 0 );
			}
			else if ($lib === 'GD')
			{
				if ($o['sharpening'] != 1)
				{
					$o['sharpening'] = abs(1 - $o['sharpening']);
				}

				if ($o['sharpening'] > 0)
				{
					$matrix = array
					(
					    array(-1, -1, -1),
					    array(-1, ceil($o['sharpening']*60), -1),
					    array(-1, -1, -1),
					);

					$divisor = array_sum(array_map('array_sum', $matrix));

					imageconvolution($final_img, $matrix, $divisor, 0);
				}
			}
			else
			{
				$cmd .= " -unsharp {$o['sharpening']}x{$sigma}+1.0+0";
			}
		}


		if ($lib === 'Imagick')
		{
			$image->writeImage( $o['destination'] );
			$image->clear();
			$image->destroy();
		}
		else if ($lib === 'GD')
		{
			if ($source_image_type === IMAGETYPE_PNG) {
				imagealphablending($final_img, false);
				imagesavealpha($final_img, true);
				imagepng($final_img, $o['destination']);
			} elseif ($source_image_type === IMAGETYPE_GIF) {
				imagegif($final_img, $o['destination']);
			} else {
				imagejpeg($final_img, $o['destination'], min($o['quality'], 99));
			}

			imagedestroy($final_img);
			imagedestroy($src_img);
		}
		else
		{

			$cmd .= " \"{$o['destination']}\"";
			exec($cmd);
		}

		if (isset($icc))
		{
			$icc->SaveToJPEG($o['destination']);
		}
	}

	private static function create_gd_proportional($w, $h, $source_w, $source_h, $src_img)
	{
		$final_img = imagecreatetruecolor($w, $h);
		if ($source_image_type == IMAGETYPE_PNG)
		{
			$transparency = imagecolorallocatealpha($final_img, 0, 0, 0, 127);
			imagefill($final_img, 0, 0, $transparency);
		}
		imagecopyresampled($final_img, $src_img, 0, 0, 0, 0, $w, $h, $source_w, $source_h);
		return $final_img;
	}

	////
	// Check ImageMagick version
	////
	static function processing_library_version() {

		$version_string = $version = $lib = false;

		if (function_exists('gd_info')) {
			$gd = gd_info();
			$version = preg_replace('/[a-zA-Z\s\(\)]/', '', $gd['GD Version']);
			$lib = 'GD';
		}

		if (in_array('imagick', get_loaded_extensions()) && class_exists('Imagick'))
		{
			$im = new Imagick;
			$v = $im->getVersion();
			$version_string = $v['versionString'];
			$imagick = 'Imagick';
		}
		else if (function_exists('exec') && (DIRECTORY_SEPARATOR == '/' || (DIRECTORY_SEPARATOR == '\\' && MAGICK_PATH_FINAL != 'convert'))) {
			exec(MAGICK_PATH_FINAL . ' -version', $out);
			if (count($out)) {
				$version_string = $out[0];
				$imagick = false;
			}
		}

		if ($version_string)
		{
			preg_match('/\d+\.\d+\.\d+([^\s]+)?/', $version_string, $matches);
			if ($matches)
			{
				$version = $matches[0];
				$lib = $imagick;
			}
		}
		return array($version, $lib);
	}
}

