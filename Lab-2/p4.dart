import 'dart:io';
void main() {
  List<double> a= [];
  double sum=0;
  print("Enter how many numbers you want to enter:");
  int n = int.parse(stdin.readLineSync()!);
  print("Enter $n number:-");
  for (int i = 0; i < n; i++) {
    a.add(double.parse(stdin.readLineSync()!));
    sum+=a[i];
  }
  print("Your list:$a");
  print("Total Sum:${sum.toStringAsFixed(2)}");
}