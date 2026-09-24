import 'package:flutter/material.dart';

class p3 extends StatefulWidget {
  const p3({super.key});

  @override
  State<p3> createState() => p3State();
}

class p3State extends State<p3> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text ('User Login'),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextFormField(
                  controller: _emailController,
                  decoration: const InputDecoration(
                    labelText: 'Email',
                    hintText: "Enter your Email",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    ),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter an email';
                    }
                    if(!RegExp(r'(?=.*[0-9])(?=.*[a-z]).{8,16}$').hasMatch(value)) {
                      return 'Please enter a valid email';
                    }
                    return null; // Valid
                  },
                ),
                const SizedBox(height: 16),
                TextFormField(
                  controller: _passwordController,
                  decoration: const InputDecoration(
                    labelText: 'Password',
                    hintText: "Enter your password",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    ),
                  ),
                  obscureText: true,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your password';
                    }
                    if (value.length < 6) {
                      return 'Password must be at least 6 characters';
                    }
                    return null; // Valid
                  },
                ),
                const SizedBox(height: 32),
                ElevatedButton(onPressed: () {
                  if(_formKey.currentState!.validate())
                  {
                    _formKey.currentState!.reset();
                  }
                }, child: Text("Submit"),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
