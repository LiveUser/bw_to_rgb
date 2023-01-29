import 'package:number_system/number_system.dart';

class ConvertedRGB{
  final int r;
  final int g;
  final int b;
  ConvertedRGB({
    required this.r,
    required this.g,
    required this.b,
  });
}
int _allPossibleColors = 16777216;
int rgbToBlackAndWhite({
  required int r,
  required int g,
  required int b,
}){
  if(r < 0 || 255 < r){
    throw "Red number must be between 0-255";
  }
  if(g < 0 || 255 < g){
    throw "Green number must be between 0-255";
  }
  if(b < 0 || 255 < b){
    throw "Blue number must be between 0-255";
  }
  String red = r.decToHex();
  //remove #
  red = red.replaceAll("#", "");
  String green = g.decToHex();
  //remove #
  green = green.replaceAll("#", "");
  String blue = b.decToHex();
  //remove #
  blue = blue.replaceAll("#", "");
  String hexColor = "#$red$green$blue";
  int decColor = hexColor.hexToDEC();
  double percentage = decColor / (_allPossibleColors - 1);
  return (percentage * 255).ceil();
}
ConvertedRGB blackAndWhiteToRGB(int greyscale){
  if(greyscale < 0 || 255 < greyscale){
    throw "Greyscale number must be between 0-255";
  }
  double percentage = greyscale / 255;
  int decColor = (percentage * (_allPossibleColors - 1)).ceil();
  String hexColor = decColor.decToHex(7);
  //remove #
  hexColor = hexColor.replaceAll("#", "");
  String red = hexColor.substring(0,2);
  String green = hexColor.substring(2,4);
  String blue = hexColor.substring(4,6);
  return ConvertedRGB(
    r: red.hexToDEC(), 
    g: green.hexToDEC(), 
    b: blue.hexToDEC(),
  );
}