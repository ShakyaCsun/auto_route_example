import 'package:flutter/material.dart';

class AccountDetailsPage extends StatelessWidget {
  const AccountDetailsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AccountDetailsPage'),
      ),
      body: const Center(
        // Cant access the Bloc
        // child: BlocBuilder<BooksBloc, BooksState>(
        //   builder: (context, state) {
        //     return Text(state.toString());
        //   },
        // ),
        child: Text('AccountDetails'),
      ),
    );
  }
}
