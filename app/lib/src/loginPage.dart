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
    return Container(
      margin: EdgeInsetsDirectional.only(top: 100),
      child: Column(
        children: [
          Text(
            "HousApp",
            style: TextStyle(
              fontSize: 30,
            ),
          ),
        ],
      ),
    );
  }

  Widget form_data() {
    return Container(
      padding: EdgeInsetsDirectional.only(start: 20, end: 20, top: 40),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          desing_text("Usuario"),
          input_username(),
          desing_text("Clave"),
          input_password(),
          desing_btn_login(),
        ],
      ),
    );
  }

  Widget input_username() {
    return Container(
      padding: EdgeInsetsDirectional.only(top: 10, bottom: 40),
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
      padding: EdgeInsetsDirectional.only(top: 10, bottom: 10),
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

  Widget desing_text(String text) {
    return Container(
      child: Text(
        text,
        style: TextStyle(fontSize: 20),
      ),
    );
  }

  Widget desing_btn_login() {
    return Container(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16.0),
        child: ElevatedButton(
          onPressed: () {},
          child: const Text(
            'Login',
            style: TextStyle(fontSize: 18),
          ),
        ),
      ),
    );
  }
}
