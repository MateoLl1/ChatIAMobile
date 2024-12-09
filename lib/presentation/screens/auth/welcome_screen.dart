

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:chat_ia/presentation/widgets/widgets.dart';
import 'package:chat_ia/presentation/providers/providers.dart';
import 'package:chat_ia/presentation/screens/painters/painters.dart';

class WelcomeScreen extends ConsumerWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context,ref) {
    final colors = Theme.of(context).colorScheme;
    final isDark = ref.watch(darkThemeProvider);
    final textStyle = Theme.of(context).textTheme;
    return Scaffold(
      backgroundColor: colors.onSecondary,
      body: CustomPaint(
        size: Size.infinite,
        painter: LoginPainter(colorBase: colors.primary, isDark: isDark),
        child: SizedBox(
          width: double.infinity,
          height: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
          
              const Spacer(),
              Text('Welcome Back!',style:textStyle.titleLarge,),
              const Text(
                'Enter personal details to you\n employee account',
                maxLines: 2,
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.blue),
              ),
              
              const Spacer(),
              const AuthNavigation()

          
            ],
          ),
        ),
      ),
    );
  }
}


