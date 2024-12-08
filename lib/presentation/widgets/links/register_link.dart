
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart'; 

class RegisterLink extends StatelessWidget {
  const RegisterLink({super.key});

  @override
  Widget build(BuildContext context) {
    final textStyle = Theme.of(context).textTheme;
    return Column(
      children: [

        GestureDetector(
          onTap: () => context.push('/register'),
          child: RichText(
            text: TextSpan(
              text: 'Already have a account?',
              style: textStyle.labelLarge,
              children: [
                TextSpan(
                  text: ' Sing in',
                  style: textStyle.labelLarge?.copyWith(
                    color: Colors.lightBlueAccent,
                    decoration: TextDecoration.underline
                  ),
                ),
              ],
            ),
          ),
        )

      ],
    );
  }
}