import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:block_auth_sample/auth_bloc/auth_event.dart';
import 'package:block_auth_sample/auth_bloc/auth_state.dart';

import '../auth_bloc/auth_block.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login Page'),
        elevation: 5,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Center(
              child: Text('Welcome to the Mobile Dev'),
            ),
            const SizedBox(
              height: 16,
            ),
            ElevatedButton(
              onPressed:(){
                context.read<AuthBloc>().add(LoginEvent());
              },
              child: const Text('Login'),
              )
          ],
        ),
      ),
    );
  }
}