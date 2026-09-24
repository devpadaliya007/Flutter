import 'dart:io';

class friend
{
  String? city;
  int? age;
  friend(this.city,this.age);
}

 void main()
 {
   Map<String,friend> frl =
       {
         "Dev":friend("Rajkot",20),
         "Shlok":friend("Morbi",18),
         "Hemang":friend("Rajkot",17),
          "Nirav":friend("Rajkot",17),
       };
   print("Enter name of friend:");
   String find = stdin.readLineSync()!;

   List names = frl.keys.toList();
   if(names.contains(find))
     {
       print("Found it...");
     }
   else
     {
       print("Not Found.....");
     }
 }