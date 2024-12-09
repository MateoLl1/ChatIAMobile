

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AuthNavigation extends StatelessWidget {
  const AuthNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return Row(
      children: [
        Expanded(
          child: TextButton(
            onPressed: () => context.push('/login'),
            style: TextButton.styleFrom(
              minimumSize: const Size.fromHeight(60), 
            ),
            child: const Text(
              'Sign in',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
        Expanded(
          child: FilledButton(
            onPressed: () => context.push('/register'),
            style: FilledButton.styleFrom(
              backgroundColor: colors.secondary,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.only(topLeft: Radius.circular(30))
              ),
              minimumSize: const Size.fromHeight(60),
            ),
            child: const Text('Sign up'),
          ),
        ),
      ],
    );
  }
}