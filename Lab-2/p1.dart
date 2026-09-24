import 'dart:io';
void main()
{
  List a=[];
  int even=0;
  int odd=0;
  print("Enter how many number you want to enter:");
  int n=int.parse(stdin.readLineSync()!);
  print("Enter $n number:-");
  for (int i=0;i<n;i++){
    a.add(int.parse(stdin.readLineSync()!));
  }
  for(int i=0;i<n;i++){
    if(a[i]%2==0){
      even++;
    }
    else{
      odd++;
    }
  }
  print("Total ODD number:$odd\nTotal EVEN number:$even");
}