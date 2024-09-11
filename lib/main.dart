// ignore_for_file: use_full_hex_values_for_flutter_colors

import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';
import 'package:url_launcher/url_launcher.dart';

Future<void> main() async {
  runApp(const MyFirstApp());
}

class MyFirstApp extends StatelessWidget {
  const MyFirstApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
            child: Column(
          children: [
            Container(
              height: 250,
              width: 450,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('images/facebook_back.png'),
                  fit: BoxFit.fill,
                ),
              ),
              child: const Icon(
                Icons.facebook_rounded,
                color: Colors.white,
                size: 64.0,
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () => launchUrl(Uri.parse('')),
                  child: const Text(
                    'Afrikaans',
                    style: TextStyle(color: Color(0xffb999999)),
                  ),
                ),
                const SizedBox(
                  width: 10.0,
                ),
                const Text(
                  '•',
                  style: TextStyle(fontSize: 17),
                ),
                const SizedBox(
                  width: 10.0,
                ),
                InkWell(
                  onTap: () => launchUrl(Uri.parse('')),
                  child: const Text(
                    'العربية',
                    style: TextStyle(color: Color(0xffb999999)),
                  ),
                ),
                const SizedBox(
                  width: 10.0,
                ),
                const Text(
                  '•',
                  style: TextStyle(fontSize: 17),
                ),
                const SizedBox(
                  width: 10.0,
                ),
                InkWell(
                  onTap: () => launchUrl(Uri.parse('')),
                  child: const Text(
                    'More...',
                    style: TextStyle(
                        decoration: TextDecoration.none, color: Colors.blue),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 25.0,
            ),
            const SizedBox(
              width: 250.0,
              child: TextField(
                decoration: InputDecoration(
                    hintText: 'Phone or Email',
                    hintStyle: TextStyle(color: Color(0xffb999999))),
              ),
            ),
            const SizedBox(
              width: 250.0,
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                    hintText: 'Password',
                    hintStyle: TextStyle(color: Color(0xffb999999))),
              ),
            ),
            const SizedBox(
              height: 25.0,
            ),
            SizedBox(
              width: 250.0,
              child: GFButton(
                fullWidthButton: true,
                onPressed: () {},
                text: "Log In",
                shape: GFButtonShape.standard,
              ),
            ),
            SizedBox(
                height: 25.0,
                child: InkWell(
                  onTap: () => launchUrl(Uri.parse('')),
                  child: const Text(
                    'Forgot Password?',
                    style: TextStyle(
                        decoration: TextDecoration.none, color: Colors.blue),
                  ),
                )),
            const SizedBox(
              height: 15.0,
            ),
            const Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 150,
                  child: Divider(
                    color: Color(0xffb999999),
                  ),
                ),
                SizedBox(
                  width: 5.0,
                ),
                Text(
                  'OR',
                  style: TextStyle(color: Color(0xffb999999)),
                ),
                SizedBox(
                  width: 5.0,
                ),
                SizedBox(
                  width: 150,
                  child: Divider(
                    color: Color(0xffb999999),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 25.0,
            ),
            SizedBox(
              width: 250.0,
              child: Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: GFButton(
                  color: const Color(0xffb2b9e45),
                  fullWidthButton: true,
                  onPressed: () {},
                  text: "Create new Facebook account",
                  shape: GFButtonShape.standard,
                ),
              ),
            ),
          ],
        )),
      ),
    );
  }
}
