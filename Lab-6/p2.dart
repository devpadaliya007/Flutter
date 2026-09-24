import 'package:flutter/material.dart';

class RegScreen extends StatefulWidget {
  const RegScreen({super.key});

  @override
  State<RegScreen> createState() => _RegScreenState();
}

class _RegScreenState extends State<RegScreen> {
  final _formKey = GlobalKey<FormState>();

  String _gender = 'Male';
  List<String> _hobbies = [];
  String? _selectedCountry;

  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();

  List<String> countryList = ['India', 'USA', 'Australia', 'London', 'Switzerland'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:  Text('Registration Form')),
      body: Padding(
        padding:  EdgeInsets.all(20),
        child: Form(
          key: _formKey,
          child: ListView(
            children: [
               Text("Full Name"),
              TextFormField(
                controller: _nameController,
                validator: (value) =>
                value!.isEmpty ? 'Please enter your name' : null,
              ),
               SizedBox(height: 15),
               Text("Email"),
              TextFormField(
                controller: _emailController,
                validator: (value) =>
                value!.isEmpty ? 'Please enter your email' : null,
              ),
               SizedBox(height: 20),
               Text("Gender"),
              Row(
                children: [
                  Radio(
                    value: 'Male',
                    groupValue: _gender,
                    onChanged: (val) {
                      setState(() {
                        _gender = val!;
                      });
                    },
                  ),
                   Text("Male"),
                  Radio(
                    value: 'Female',
                    groupValue: _gender,
                    onChanged: (val) {
                      setState(() {
                        _gender = val!;
                      });
                    },
                  ),
                   Text("Female"),
                ],
              ),
               SizedBox(height: 20),
               Text("Hobbies"),
              CheckboxListTile(
                title:  Text("Photography"),
                value: _hobbies.contains("Photography"),
                onChanged: (val) {
                  setState(() {
                    val!
                        ? _hobbies.add("Photography")
                        : _hobbies.remove("Photography");
                  });
                },
              ),
              CheckboxListTile(
                title:  Text("Painting"),
                value: _hobbies.contains("Painting"),
                onChanged: (val) {
                  setState(() {
                    val!
                        ? _hobbies.add("Painting")
                        : _hobbies.remove("Painting");
                  });
                },
              ),
              CheckboxListTile(
                title:  Text("Sports"),
                value: _hobbies.contains("Sports"),
                onChanged: (val) {
                  setState(() {
                    val! ? _hobbies.add("Sports") : _hobbies.remove("Sports");
                  });
                },
              ),

               SizedBox(height: 20),
               Text("Country"),
              DropdownButtonFormField<String>(
                value: _selectedCountry,
                hint:  Text("Select Country"),
                items: countryList.map((country) {
                  return DropdownMenuItem(
                    value: country,
                    child: Text(country),
                  );
                }).toList(),
                onChanged: (val) {
                  setState(() {
                    _selectedCountry = val;
                  });
                },
                validator: (value) =>
                value == null ? 'Please select a country' : null,
              ),

               SizedBox(height: 30),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    showDialog(
                      context: context,
                      builder: (_) => AlertDialog(
                        title:  Text("Registration Successful!"),
                        content: Text(
                          "Name: ${_nameController.text}\n"
                          "Email: ${_emailController.text}\n"
                          "Gender: $_gender\n"
                          "Hobbies: ${_hobbies.join(', ')}\n"
                          "Country: $_selectedCountry",
                        ),
                      ),
                    );
                  }
                },
                child:  Text("Register"),
              )
            ],
          ),
        ),
      ),
    );
  }
}