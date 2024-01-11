import 'package:flutter/material.dart';

import 'widgets/btn_login_social.dart';

class SignInView extends StatelessWidget {
  const SignInView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0x00040b1a),
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 20.0),
              Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(217, 31, 35, 44),
                      borderRadius: BorderRadius.circular(9.0),
                    ),
                    child: const TextField(
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          contentPadding:
                              EdgeInsets.symmetric(horizontal: 10.0),
                          hintText: "Email or username",
                          hintStyle: TextStyle(color: Colors.white)),
                      style: TextStyle(color: Colors.white),
                      cursorColor: Colors.white,
                    ),
                  )),
              const SizedBox(
                height: 20.0,
              ),
              Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(217, 34, 38, 50),
                      borderRadius: BorderRadius.circular(9.0),
                    ),
                    child: const TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          contentPadding:
                              EdgeInsets.symmetric(horizontal: 10.0),
                          hintText: "Password",
                          hintStyle: TextStyle(color: Colors.white)),
                      style: TextStyle(color: Colors.white),
                      cursorColor: Colors.white,
                    ),
                  )),
              Container(
                margin: const EdgeInsets.only(top: 20.0),
                child: SizedBox(
                  width: 364.0,
                  height: 44.0,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.resolveWith<Color>(
                        (Set<MaterialState> states) {
                          if (states.contains(MaterialState.disabled)) {
                            return Colors.grey;
                          }
                          return const Color.fromARGB(255, 255, 59, 121);
                        },
                      ),
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      )),
                    ),
                    child: const Text(
                      'Login',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 22.0,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: TextButton(
                      onPressed: () {},
                      child: const Text(
                        'I forgot my password',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 15.0,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  )
                ],
              ),
              Container(
                margin: const EdgeInsets.only(bottom: 2.0, top: 20.0),
                child: const Text(
                  'You can too',
                  style: TextStyle(color: Colors.white, fontSize: 15.0),
                ),
              ),
              const BtnLoginSocial(
                pathIcon: "lib/src/assets/icons/apple_icon.svg",
                title: 'Login with Apple',
              ),
              const BtnLoginSocial(
                  pathIcon: "lib/src/assets/icons/google_icon.svg",
                  title: 'Login with Google'),
              const BtnLoginSocial(
                  pathIcon: "lib/src/assets/icons/mail_icon.svg",
                  title: 'Login with Email'),
            ],
          ),
        ));
  }
}
