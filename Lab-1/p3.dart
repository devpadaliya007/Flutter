import "dart:io";
void main()
{

  print("Enter weight in pounds:");
  var weight=int.parse(stdin.readLineSync()!) * 0.45359237;

  print("Enter height in inches:");
  var height=int.parse(stdin.readLineSync()!) * 0.0254;

  var BMI=weight/(height*height);

  print("BMI:: $BMI");
}