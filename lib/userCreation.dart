import 'package:flutter/material.dart';
import 'package:align_with_me/layout.dart';
import 'package:align_with_me/resultPage.dart';
import 'package:align_with_me/userRegistrationForm.dart';
import 'package:align_with_me/homePage.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AlignWithMeAppBar(),
      backgroundColor: const Color.fromARGB(255, 157, 160, 163),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Expanded(
            flex: 1,
            child: LeftNavView(),
          ),
          Expanded(
            flex: 3,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text(
                    'LOGIN',
                    style: TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 10),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.25,
                    child: TextFormField(
                      decoration: const InputDecoration(
                        labelText: 'User Id',
                        filled: true,
                        fillColor: Color.fromARGB(255, 228, 225, 225),
                        //border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.25,
                    child: TextFormField(
                      obscureText: true,
                      decoration: const InputDecoration(
                        labelText: 'Password',
                        filled: true,
                        fillColor: Color.fromARGB(255, 228, 225, 225),
                        //border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.25,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: const Text('Login'),
                    ),
                  ),
                  const SizedBox(height: 10),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.25,
                    child: ElevatedButton.icon(
                      onPressed: () {},
                      icon: const Icon(Icons.facebook, color: Colors.white),
                      label: const Text(
                        'Sign Up with Facebook',
                        style: TextStyle(color: Colors.white),
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue,
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.25,
                    child: ElevatedButton.icon(
                      onPressed: () {},
                      icon: const Icon(Icons.mail, color: Colors.white),
                      label: const Text(
                        'Sign Up with Gmail',
                        style: TextStyle(color: Colors.white),
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.red,
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.25,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => RegistrationForm()),
                        );
                      },
                      child: const Text('Create New Account'),
                    ),
                  ),
                  const SizedBox(height: 10),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.25,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                const ResultPage(resultMessage: 'Success!'),
                          ),
                        );
                      },
                      child: const Text('Continue as Guest'),
                    ),
                  ),
                ],
              ),
            ),
          ),
          const Expanded(
            flex: 1,
            child: RightNavView(),
          ),
        ],
      ),
    );
  }
}
