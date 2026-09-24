import "dart:io";
void main(){
  print("Enter 1 Num :: ");
  int a = int.parse(stdin.readLineSync()!);

  print("Enter 2 Num :: ");
  int b = int.parse(stdin.readLineSync()!);

  print("Press 1 for ADDITION");
  print("Press 2 for SUBTRACTION");
  print("Press 3 for DIVISION");
  print("Press 4 for MULTIPLICATION");

  print("Enter your Choice :: ");
  int c = int.parse(stdin.readLineSync()!);

  switch(c){
    case 1:
      int ans = a+b;
      print("ADDITION :: $ans");
      break;

    case 2:
      int ans = a-b;
      print("SUBTRACTION :: $ans");
      break;

    case 3:
      var ans = a/b;
      print("DIVISION :: $ans");
      break;

    case 4:
      int ans = a*b;
      print("MULTIPLICATION :: $ans");
      break;

    default:
      print("Enter valid Number b/w 1 to 4 !! ");
      break;

  }
}