import 'package:anahuac_eats/Menu.dart';
import 'package:flutter/material.dart';
import 'package:anahuac_eats/Register.dart';
import 'package:anahuac_eats/ForgotPassword.dart';

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(10),
        child: ListView(
          children: <Widget>[
            Container(
                alignment: Alignment.center,
                margin: const EdgeInsets.only(top: 30),
                height: 100,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage("https://i.ibb.co/RhSQLNF/Anahuac-Eats.png")
                    )
                )),
            Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.all(10),
                margin: const EdgeInsets.only(top: 20),
                child: const Text(
                  'Anáhuac Eats',
                  style: TextStyle(
                      color: Colors.deepOrange,
                      fontWeight: FontWeight.w500,
                      fontSize: 30),
                )),
            Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.all(10),
                margin: const EdgeInsets.only(bottom: 30),
                child: const Text(
                  'Sign in',
                  style: TextStyle(fontSize: 18),
                )),
            Container(
              padding: const EdgeInsets.all(10),
              child: TextField(
                controller: nameController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Email',
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 50),
              child: TextField(
                obscureText: true,
                controller: passwordController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Password',
                ),
              ),
            ),
            Container(
                height: 50,
                padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: ElevatedButton(
                  child: const Text('Login'),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const MyMenu()),
                    );
                  },
                )
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Text('Does not have account?'),
                TextButton(
                  child: const Text(
                    'Sign up',
                    style: TextStyle(fontSize: 16),
                  ),
                  onPressed: () {
                    //signIn screen
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const SignupPage()),
                    );},
                )
              ],
            ),
            TextButton(
              onPressed: () {
                //forgot password screen
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const ForgotPassword()));
              },
              child: const Text('Forgot Password',),
            ),
          ],
        ));

  }
}