# Black and white to RGB
Convert Black and White to RGB and vice versa.
Hecho en 🇵🇷 por Radamés J. Valentín Reyes
## Import
~~~dart
import 'package:bw_to_rgb/bw_to_rgb.dart';
~~~
## Functions
### Color to Black and White
Takes RGB as arguments and returns a number ranging from 0-255
~~~dart
int greyscale = rgbToBlackAndWhite(
  r: 30, 
  g: 238,
  b: 231,
);
~~~
### Black and white to RGB
Takes a grayscale number ranging from 0-255 and converts it into RGB values. The resulting color is not exact but similar to the original.
~~~dart
int greyscale = rgbToBlackAndWhite(
  r: 30, 
  g: 238, 
  b: 231,
);
ConvertedRGB convertedRGB = blackAndWhiteToRGB(greyscale);
~~~