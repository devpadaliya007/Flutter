import 'dart:io';
void main() {
  List<String> a= [];
  print("Enter how many words you want to enter:");
  int n = int.parse(stdin.readLineSync()!);
  print("Enter $n words:-");
  for (int i = 0; i < n; i++) {
    a.add(stdin.readLineSync()!);
  }
  print(a);
}