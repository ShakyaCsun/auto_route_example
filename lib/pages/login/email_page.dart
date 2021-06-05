import 'package:flutter/material.dart';

class EmailPage extends StatefulWidget {
  const EmailPage({Key? key, required this.onNext}) : super(key: key);

  final void Function(String result) onNext;

  @override
  _EmailPageState createState() => _EmailPageState();
}

class _EmailPageState extends State<EmailPage> {
  final emailController = TextEditingController();

  @override
  void dispose() {
    emailController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Spacer(flex: 10),
          TextField(
            controller: emailController,
            keyboardType: TextInputType.emailAddress,
            decoration: const InputDecoration(
              prefixIcon: Icon(Icons.email_outlined),
              labelText: 'Email',
            ),
          ),
          const Spacer(),
          ElevatedButton(
            onPressed: () {
              widget.onNext(emailController.text);
            },
            child: const Text('NEXT'),
          ),
          const Spacer(flex: 10),
        ],
      ),
    );
  }
}
