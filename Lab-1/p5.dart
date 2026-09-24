import "dart:io";
void main(){
	print("Enter no 1:");
	int a = int.parse(stdin.readLineSync()!);

	print("Enter no 2:");
	int b = int.parse(stdin.readLineSync()!);

	print("Press 1 for Addition");
	print("Press 2 for Subtraction");
	print("Press 3 for Divide");
	print("Press 4 for Multiply");

	print("Enter Choice:");
	int c = int.parse(stdin.readLineSync()!);

	if(c==1){
		int ans = a+b;
		print("Addition is: $ans");
	}

	else if(c==2){
		int ans = a-b;
		print("Subtraction is: $ans");
	}

	else if(c==3){
		var ans = a/b;
		print("Divide is: $ans");
	}

	else if(c==4){
		int ans = a*b;
		print("Multiply is: $ans");
	}

	else{
		print("Enter valid Number b/w 1 to 4 !");
	}
}