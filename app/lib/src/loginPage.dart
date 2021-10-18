import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: content_body(),
    );
  }

  Widget content_body() {
    return Container(
      child: Column(
        children: [
          header_data(),
          form_data(),
        ],
      ),
    );
  }

  Widget header_data() {
    return Container();
  }

  Widget form_data() {
    return Container(
      child: Column(
        children: [
          Text("Usuario"),
          input_username(),
          Text("Clave"),
          input_password(),
          desing_btn_login(),
        ],
      ),
    );
  }

  Widget input_username() {
    return Container(
      padding: EdgeInsetsDirectional.only(start: 20, end: 20),
      child: TextFormField(
        decoration: const InputDecoration(
          hintText: 'Enter your email',
        ),
        validator: (String? value) {
          if (value == null || value.isEmpty) {
            return 'Please enter some text';
          }
          return null;
        },
      ),
    );
  }

  Widget input_password() {
    return Container(
      padding: EdgeInsetsDirectional.only(start: 20, end: 20),
      child: TextFormField(
        decoration: const InputDecoration(
          hintText: 'Enter your password',
        ),
        validator: (String? value) {
          if (value == null || value.isEmpty) {
            return 'Please enter some text';
          }
          return null;
        },
      ),
    );
  }

  Widget desing_btn_login() {
    return Container(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16.0),
        child: ElevatedButton(
          onPressed: () {},
          child: const Text('Submit'),
        ),
      ),
    );
  }
}
