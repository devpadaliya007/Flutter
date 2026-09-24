import 'package:flutter/material.dart';

class SurveyForm extends StatefulWidget {
  const SurveyForm({super.key});

  @override
  State<SurveyForm> createState() => _SurveyFormState();
}

class _SurveyFormState extends State<SurveyForm> {
  TextEditingController nameController = TextEditingController();
  String gender = "";
  bool likesSports = false;
  bool likesMusic = false;

  void submit() {
    showDialog(
      context: context,
      builder: (_) => AlertDialog(
        title: const Text("Survey Submitted"),
        content: Text(
          "Name: ${nameController.text}\n"
              "Gender: $gender\n"
              "Likes Sports: ${likesSports ? "Yes" : "No"}\n"
              "Likes Music: ${likesMusic ? "Yes" : "No"}",
        ),
        actions: [
          TextButton(onPressed: () => Navigator.pop(context), child: const Text("OK"))
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Survey Form")),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text("Name:"),
            TextField(
              controller: nameController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Enter your name",
              ),
            ),
            const SizedBox(height: 20),
            const Text("Gender:"),
            RadioListTile(
              title: const Text("Male"),
              value: "Male",
              groupValue: gender,
              onChanged: (value) => setState(() => gender = value.toString()),
            ),
            RadioListTile(
              title: const Text("Female"),
              value: "Female",
              groupValue: gender,
              onChanged: (value) => setState(() => gender = value.toString()),
            ),
            const SizedBox(height: 10),
            CheckboxListTile(
              title: const Text(" I Like Sports"),
              value: likesSports,
              onChanged: (value) => setState(() => likesSports = value!),
            ),
            CheckboxListTile(
              title: const Text("I Like Music"),
              value: likesMusic,
              onChanged: (value) => setState(() => likesMusic = value!),
            ),
            const SizedBox(height: 20),
            Center(
              child: ElevatedButton(
                onPressed: submit,
                child: const Text("Submit"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
