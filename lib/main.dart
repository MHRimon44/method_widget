// ignore_for_file: prefer_const_constructors,prefer_const_literals_to_create_immutables, avoid_print

import 'package:flutter/material.dart';


void main(List<String> args) {
  return runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Method Widget Example',
    theme: ThemeData(
      primarySwatch: Colors.purple,
      scaffoldBackgroundColor: Colors.white,
    ),
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Method Widget Example')),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 50),
            child: Column(
              children: [
                Text(
                  'Login page',
                  style: TextStyle(
                      fontSize: 25,
                      color: Colors.purple,
                      fontStyle: FontStyle.italic),
                ),
                SizedBox(
                  height: 15,
                ),
                loginForm()
              ],
            ),
          ),
        ),
      ),
    );
  }

  //Create Method Widget
  Widget loginForm() {
    return Container(
      height: 250,
      width: 300,
      decoration: BoxDecoration(
          color: Colors.lime,
          borderRadius: BorderRadius.all(
            Radius.circular(15),
          )),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                hintText: 'Enter your user name',
                labelText: 'User Name',
                labelStyle: TextStyle(color: Colors.orange, fontSize: 14),
                hintStyle: TextStyle(color: Colors.redAccent, fontSize: 14),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                prefixIcon: Icon(Icons.account_circle),
              ),
              keyboardType: TextInputType.text,
            ),
            SizedBox(
              height: 10,
            ),
            TextField(
              decoration: InputDecoration(
                hintText: 'Enter your Password',
                labelText: 'Password',
                labelStyle: TextStyle(color: Colors.orange, fontSize: 14),
                hintStyle: TextStyle(color: Colors.redAccent, fontSize: 14),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                prefixIcon: Icon(Icons.account_circle),
              ),
              keyboardType: TextInputType.text,
              obscureText: true,
              obscuringCharacter: '*',
            ),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () {
                print('on pressed');
              },
              child: Text('Log in'),
            )
          ],
        ),
      ),
    );
  }
}
