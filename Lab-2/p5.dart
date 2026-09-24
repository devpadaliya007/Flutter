import 'dart:io';
void main() {
  List a= [];
  print("Enter how many numbers you want to enter:");
  int n = int.parse(stdin.readLineSync()!);
  print("Enter $n number:-");
  for (int i = 0; i < n; i++) {
    a.add(int.parse(stdin.readLineSync()!));
  }
  for (int i=0;i<n;i++){
    int min=a[i];
    for(int j=i;j<n;j++){
      if(min>a[j]){
        int temp=a[j];
        a[j]=min;
        min=temp;
      }
      a[i]=min;
    }
  }
  print(a);
}