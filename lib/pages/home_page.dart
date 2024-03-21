// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables;
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:block_auth_sample/auth_bloc/auth_event.dart';

import '../auth_bloc/auth_block.dart';
import '../auth_bloc/auth_state.dart';


class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Page"),
        elevation: 5,
      ),
      body: BlocBuilder<AuthBloc, AuthState>(
        builder: (context, state) {
          if (state is AuthSuccess) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Center(
                  child: Text('Hi  Welcome to the Mobile Dev'),
                ),
                const SizedBox(
                  height: 16,
                ),
                ElevatedButton(
                  onPressed: () {
                    context.read<AuthBloc>().add(LogoutEvent());
                  },
                  child: const Text('Logout'),
                )
              ],
            );
          }
          
          return const Center(
            child: CircularProgressIndicator(),
          );
        },
      )
      );
  }
}
