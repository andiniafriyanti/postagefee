import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:postagecheck/data/services/firebase_auth_service.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController? emailController = TextEditingController();
  TextEditingController? passwordController = TextEditingController();
  bool isHide = true;
  bool isLoading = false;

  Future<void> loginGoogle() async {
    setState(() {
      isLoading = true;
    });
    await FirebaseAuthService().signInWithGoogle();
    setState(() {
      isLoading = false;
    });
  }

  @override
  void initState() {
    emailController = TextEditingController();
    passwordController = TextEditingController();

    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    emailController!.dispose();
    passwordController!.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: ListView(
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 100),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "POSTAGE FEE",
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.all(32),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 20,
                    ),
                    TextField(
                      controller: emailController,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(13))),
                        hintText: "Email",
                      ),
                    ),
                    const SizedBox(height: 20),
                    TextField(
                      controller: passwordController,
                      obscureText: isHide,
                      decoration: InputDecoration(
                        border: const OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(13))),
                        hintText: "Password",
                        suffixIcon: IconButton(
                          icon: Icon(
                            isHide
                                ? Icons.remove_red_eye
                                : Icons.remove_red_eye_outlined,
                          ),
                          onPressed: () {
                            setState(() {
                              isHide = !isHide;
                            });
                          },
                        ),
                      ),
                    ),
                    const SizedBox(height: 50),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.only(
                              left: 90, right: 90, top: 18, bottom: 18),
                          backgroundColor: Colors.red[700],
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(13),
                            ),
                          ),
                        ),
                        onPressed: () {
                          if (emailController?.text == "andiniaaf@gmail.com" &&
                              passwordController?.text == "12345678") {
                            context.go("/home");
                          } else {
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                  content: Text('Invalid Credentials')),
                            );
                          }

                        },
                        child: const Text('LOGIN')),
                    const SizedBox(height: 10),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.only(
                              left: 50, right: 50, top: 18, bottom: 18),
                          backgroundColor: Colors.red[700],
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(13),
                            ),
                          ),
                        ),
                        onPressed: () {
                          loginGoogle();
                          context.go("/home");
                        },
                        child: const Text('Sign in with Google'))
                  ],
                ),
              ),
              Column(
                children: [
                  Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text('Don\'t have an account ?'),
                        const SizedBox(
                          width: 2,
                        ),
                        TextButton(
                          onPressed: () {},
                          child: const Text(
                            'Register',
                            style: TextStyle(
                              decoration: TextDecoration.underline,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
