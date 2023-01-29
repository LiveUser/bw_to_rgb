import 'package:bw_to_rgb/bw_to_rgb.dart';
import 'package:test/test.dart';

void main() {
  test("Color to Black and White", (){
    print(rgbToBlackAndWhite(
      r: 30, 
      g: 238,
      b: 231,
    ));
  });
  test("Black and white to RGB", (){
    int greyscale = rgbToBlackAndWhite(
      r: 30, 
      g: 238, 
      b: 231,
    );
    ConvertedRGB convertedRGB = blackAndWhiteToRGB(greyscale);
    print("r:${convertedRGB.r}");
    print("g:${convertedRGB.g}");
    print("b:${convertedRGB.b}");
  });
}
