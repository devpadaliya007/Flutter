import "dart:io";
  class candidate
  {
    int? candidate_id,candidate_age;
    String? candidate_name;
    double? candidate_weight,candidate_height;

    get_candidate_details()
    {
      print("Enter ID:");
      candidate_id=int.parse(stdin.readLineSync()!);

      print("Enter Age:");
      candidate_age=int.parse(stdin.readLineSync()!);

      print("Enter Name:");
      candidate_name=(stdin.readLineSync()!);

      print("Enter Weight:");
      candidate_weight=double.parse(stdin.readLineSync()!);

      print("Enter Height:");
      candidate_height=double.parse(stdin.readLineSync()!);
    }
    display_candidate_details()
    {
      print("candidate id: $candidate_id");
      print("candidate age: $candidate_age");
      print("candidate name: $candidate_name");
      print("candidate height: $candidate_height");
      print("candidate weight: $candidate_weight");
    }

  }

void main()
{
  candidate c=candidate();

  c.get_candidate_details();
  c.display_candidate_details();
}