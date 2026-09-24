import 'dart:io';
void main() {
  List<int> a = [];

  print("Enter how many numbers you want to enter:");
  int n = int.parse(stdin.readLineSync()!);

  print("Enter $n numbers:");
  for (int i = 0; i < n; i++) {
    int num = int.parse(stdin.readLineSync()!);
    a.add(num);
  }

  print("Numbers in the list: $a");
}
