// ignore_for_file: prefer_const_constructors

import 'package:catalog/utils/my_routes.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  final _formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Theme.of(context).primaryColor,
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(32, 64, 32, 32),
          child: Column(
            children: [
              Image.asset(
                "assets/images/lappylogin.png",
                height: 300,
                width: 300,
              ),
              Text(
                "Welcome $name",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Form(
                key: _formkey,
                child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                        labelText: "Username",
                        hintText: "Enter Username",
                      ),
                      onChanged: (value) {
                        name = value;
                        setState(() {});
                      },
                      validator: (value) {
                        return (value!.isEmpty)
                            ? "Username can't be empty."
                            : null;
                      },
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        labelText: "Password",
                        hintText: "Enter Password",
                      ),
                      obscureText: true,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Password can't be empty.";
                        }
                        if (value.length < 6) {
                          return "Password length should be atleast 6";
                        }
                        return null;
                      },
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {
                  if (_formkey.currentState!.validate()) {
                    Navigator.pushNamed(context, MyRoutes.homeRoute);
                  }
                },
                child: Text(
                  "Login",
                  style: TextStyle(fontSize: 18),
                ),
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(120, 40),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
