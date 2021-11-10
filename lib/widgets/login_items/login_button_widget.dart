import 'package:catalog/utils/my_routes.dart';
import 'package:flutter/material.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({
    Key? key,
    required GlobalKey<FormState> formkey,
  })  : _formkey = formkey,
        super(key: key);

  final GlobalKey<FormState> _formkey;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        if (_formkey.currentState!.validate()) {
          Navigator.pushNamed(context, MyRoutes.homeRoute);
        }
      },
      child: const Text(
        "Login",
        style: TextStyle(fontSize: 18),
      ),
      style: ElevatedButton.styleFrom(
        minimumSize: const Size(120, 40),
      ),
    );
  }
}
