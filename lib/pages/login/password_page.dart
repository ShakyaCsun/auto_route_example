import 'package:flutter/material.dart';

class PasswordPage extends StatefulWidget {
  const PasswordPage({Key? key, required this.onNext}) : super(key: key);

  final void Function(String password) onNext;

  @override
  _PasswordPageState createState() => _PasswordPageState();
}

class _PasswordPageState extends State<PasswordPage> {
  final passwordController = TextEditingController();

  @override
  void dispose() {
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Spacer(flex: 10),
          TextField(
            controller: passwordController,
            keyboardType: TextInputType.visiblePassword,
            obscureText: true,
            decoration: const InputDecoration(
              prefixIcon: Icon(Icons.lock_outline),
              labelText: 'Password',
            ),
          ),
          const Spacer(),
          ElevatedButton(
            onPressed: () {
              widget.onNext(passwordController.text);
            },
            child: const Text('NEXT'),
          ),
          const Spacer(flex: 10),
        ],
      ),
    );
  }
}
