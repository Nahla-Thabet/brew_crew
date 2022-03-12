import 'package:brew_crew/services/auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown[100],
      appBar: AppBar(
        backgroundColor: Colors.brown[400],
        title: Text('Brew Crew'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('SIGN IN ',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w600,
              ),
            ),
            Container(
              child: ElevatedButton(
                  onPressed: () async {
                   dynamic  result = await AuthServices().signInAnon();
                   if(result == null){
                     print('error in signing in ');
                     }else{
                     print('sign in');
                     print(result.uid);
                   }
                   },

                  child: Text('Sign in as Anon')),
            )


          ],
        ),
      ) ,
    );
  }
}
