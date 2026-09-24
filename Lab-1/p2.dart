import "dart:io";
void main(){
  print("Enter English  Marks:");
  int eng = int.parse(stdin.readLineSync()!);

  print("Enter Maths Marks:");
  int maths = int.parse(stdin.readLineSync()!);

  print("Enter Science Marks:");
  int sci= int.parse(stdin.readLineSync()!);

  print("Enter OAT sub Marks:");
  int oat= int.parse(stdin.readLineSync()!);

  print("Enter OS sub Marks:");
  int os= int.parse(stdin.readLineSync()!);

  var per=(eng+maths+sci+oat+os)/500*100;

  print("Total Percentage $per");
}