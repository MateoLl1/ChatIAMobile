
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:chat_ia/presentation/providers/providers.dart';
import 'package:chat_ia/presentation/screens/painters/painters.dart';



class LoginScreen extends ConsumerWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context,ref) {
    final colors = Theme.of(context).colorScheme;
    final isDark = ref.watch(darkThemeProvider);
    return Scaffold(
      backgroundColor: isDark ? colors.onSurface: colors.surface,
      body: CustomPaint(
        painter: LoginPainter(
          colorBase: colors.primary,
          isDark: isDark
        ),
        size: Size.infinite,
        // child: const _LoginFormView(),
      ),
    );
  }
}

class _LoginFormView extends StatelessWidget {
  const _LoginFormView();

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: double.infinity,
      width: double.infinity,
      child: Column(
        children: [
          Spacer(),
          _FormView(),
        ]
      ),
    );
  }
}

class _FormView extends StatelessWidget {
  const _FormView();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final colors = Theme.of(context).colorScheme;
    return Container(
      height: size.height*.6,
      padding: const EdgeInsets.only(top: 20),
      decoration: BoxDecoration(
        color: colors.surface,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        )
      ),
      child: const Column(
        children: [

          Text('Iniciar Session'),
          Divider()


        ],
      ),
    );
  }
}