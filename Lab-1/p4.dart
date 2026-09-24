import "dart:io";
void main()
{
  print("Enter Number :: ");
  int num = int.parse(stdin.readLineSync()!);

  if(num>0){
    print("+ve number");
  }
  else if(num<0)
  {
    print("-ve number");
  }
  else
    {
      print("Number is zero");
    }
}