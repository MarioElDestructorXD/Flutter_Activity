import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:learning_b/kernel/widgets/custom_text_field_password.dart';

class CreateAccount extends StatefulWidget {
  const CreateAccount({super.key});

  @override
  State<CreateAccount> createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Registrate"),
        backgroundColor: Colors.amber,
        titleTextStyle: const TextStyle(fontSize: 16, color: Colors.white),
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: SingleChildScrollView(
        child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/logo.png',
                    width: 200,
                    height: 200,
                  ),
                  Form(
                      key: _formKey,
                      child: Column(
                        children: [
                          TextFormField(
                            keyboardType: TextInputType.emailAddress,
                            decoration: const InputDecoration(
                                hintText: 'Correo electronico',
                                labelText: 'Correo electronico'),
                          ),
                          const SizedBox(
                            height: 16.0,
                          ),
                          TextFieldPassword(controller: _passwordController),
                          const SizedBox(
                            height: 16.0,
                          ),
                          TextFieldPassword(
                            controller: _confirmPasswordController,
                            hintText: 'Confirmar Contraseña',
                            labelText: 'Confirmar Contraseña',
                          ),
                          const SizedBox(
                            height: 16,
                          ),
                          SizedBox(
                            width: double.infinity,
                            height: 48,
                            child: ElevatedButton(
                                onPressed: () async {
                                  try {
                                    final credential = await FirebaseAuth
                                        .instance
                                        .createUserWithEmailAndPassword(
                                            email: _emailController.text.trim(),
                                            password: _passwordController.text.trim());
                                    print(credential);
                                  } on FirebaseAuthException catch (e) {
                                    if (e.code == 'user-not-found') {
                                      print('No user found for that email.');
                                    } else if (e.code == 'wrong-password') {
                                      print(
                                          'Wrong password provided for that user.');
                                    }
                                  }
                                },
                                child: const Text('Crear cuenta')),
                          )
                        ],
                      )),
                ],
              ),
            )),
      ),
    );
  }
}
