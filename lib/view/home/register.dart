import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../common/color.dart';

class Register extends StatelessWidget {
  const Register({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              RichText(
                  text: const TextSpan(
                      text: 'B\n',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 100,
                          fontWeight: FontWeight.w900),
                      children: [
                        TextSpan(
                          text: 'Buy',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 24,
                              fontWeight: FontWeight.w900),
                        ),
                        TextSpan(
                          text: 'Box',
                          style: TextStyle(
                              color: yellowColor,
                              fontSize: 24,
                              fontWeight: FontWeight.w900),
                        )
                      ])),
              const Text(
                'Let\'s get your signed up!',
                style: TextStyle(
                    fontSize: 26,
                    color: blueColor,
                    fontWeight: FontWeight.bold),
              ),
              const Text(
                'Access your account and shop groceries online',
              ),TextFormField(
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: blueColor),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: blueColor),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  label: const Text('Username'),
                ),
              ),
              TextFormField(
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: blueColor),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: blueColor),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  label: const Text('Email/Phone number'),
                ),
              ),
              TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: blueColor),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: blueColor),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  label: const Text('Password'),
                ),
              ),
              SizedBox(
                height: 50,
                width: double.infinity,
                child: ElevatedButton(
                    style: ButtonStyle(
                        shape: WidgetStatePropertyAll<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5))),
                        backgroundColor: WidgetStateProperty.all(blueColor)),
                    onPressed: () {
                      Navigator.pushNamed(context, '/home');
                    },
                    child: const Text(
                      'Register',
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    )),
              ),
              const Text('Or Register with'),
              SizedBox(
                height: 50,
                width: double.infinity,
                child: ElevatedButton.icon(
                  iconAlignment: IconAlignment.start,
                  style: ButtonStyle(
                      backgroundColor: const WidgetStatePropertyAll(Colors.white),
                      shape: WidgetStatePropertyAll<RoundedRectangleBorder>(
                          RoundedRectangleBorder(side: const BorderSide(color: blueColor),
                              borderRadius: BorderRadius.circular(8)))),
                  onPressed: () {},
                  icon: const FaIcon(FontAwesomeIcons.google),
                  label: const Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SizedBox(width: 40,),
                      Text(
                        'Connect With Google',
                        style: TextStyle(color: Colors.black),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 50,
                width: double.infinity,
                child: ElevatedButton.icon(
                  iconAlignment: IconAlignment.start,
                  style: ButtonStyle(
                      backgroundColor: const WidgetStatePropertyAll(Colors.white),
                      shape: WidgetStatePropertyAll<RoundedRectangleBorder>(
                          RoundedRectangleBorder(side: const BorderSide(color: blueColor),
                              borderRadius: BorderRadius.circular(8)))),
                  onPressed: () {},
                  icon: const FaIcon(FontAwesomeIcons.apple),
                  label: const Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SizedBox(width: 40,),
                      Text(
                        'Connect With Apple',
                        style: TextStyle(color: Colors.black),
                      )
                    ],
                  ),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
