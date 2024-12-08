import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';


class TermsAndConditionsCheckbox extends StatefulWidget {
  final Function(bool) onChanged;
  final bool initialValue;
  final String termsText;
  final VoidCallback onTermsTap;

  const TermsAndConditionsCheckbox({
    super.key,
    required this.onChanged,
    this.initialValue = false,
    this.termsText = 'Acepto los términos y condiciones',
    required this.onTermsTap,
  });

  @override
  TermsAndConditionsCheckboxState createState() =>
      TermsAndConditionsCheckboxState();
}

class TermsAndConditionsCheckboxState
    extends State<TermsAndConditionsCheckbox> {
  late bool isChecked;

  @override
  void initState() {
    super.initState();
    isChecked = widget.initialValue;
  }

  @override
  Widget build(BuildContext context) {
    final textStyle = Theme.of(context).textTheme;
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Checkbox(
            value: isChecked,
            onChanged: (value) {
              setState(() {
                isChecked = value ?? false;
                widget.onChanged(isChecked);
              });
            },
          ),
          GestureDetector(
            onTap: () => context.pushNamed('/term-and-conditions'),
            child: RichText(
              text: TextSpan(
                text: 'I agree the ',
                style: textStyle.labelLarge,
                children: [
                  TextSpan(
                    text: 'terms and conditions',
                    style: textStyle.labelLarge?.copyWith(
                      color: Colors.lightBlueAccent,
                      decoration: TextDecoration.underline
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
