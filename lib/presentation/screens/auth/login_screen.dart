
import 'package:chat_ia/presentation/widgets/links/register_link.dart';
import 'package:chat_ia/presentation/widgets/widgets.dart';
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
        child: const _LoginFormView(),
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

class _FormView extends StatefulWidget {
  const _FormView();

  @override
  State<_FormView> createState() => _FormViewState();
}

class _FormViewState extends State<_FormView> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final colors = Theme.of(context).colorScheme;
    final textStyle = Theme.of(context).textTheme;
    return Container(
      height: size.height*.6,
      width: double.infinity,
      padding: const EdgeInsets.only(top: 20),
      decoration: BoxDecoration(
        color: colors.surface,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        )
      ),
      child: Form(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
            
                const SizedBox(height: 15,),
                Text('Get Started',style: textStyle.titleLarge?.copyWith(color: colors.primary),),
                const SizedBox(height: 20,),
                const CustomTextFormField(
                  label: 'Email',
                  hintText: 'ejemplo@gmail.com',
                ),
            
                const SizedBox(height: 20,),
                const CustomTextFormField(
                  label: 'Password',
                  hintText: '*********',
                ),
                const SizedBox(height: 20,),
            
                SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: FilledButton(
                    onPressed: (){}, 
                    child: const Text('Sing In')
                  )
                ),
          
                const SizedBox(height: 10,),
                TermsAndConditionsCheckbox(
                  onChanged: (p0) {
                    
                  }, 
                  onTermsTap: () {
                    
                  },
                ),
          
          
                const SingInWith(),
                const SizedBox(height: 5,),
                const RegisterLink(),
                const SizedBox(height: 20,),
              ],
            ),
          ),
        ),
      ),
    );
  }
}