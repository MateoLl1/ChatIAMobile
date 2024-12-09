

import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  final String label;
  final String hintText;
  final String? Function(String?)? validator;
  final void Function(String)? onChanged;
  const CustomTextFormField({
    super.key, 
    this.validator, 
    this.onChanged, 
    required this.label, 
    required this.hintText
  });

  @override
  Widget build(BuildContext context) {
    final focusNode = FocusNode();
    final border = OutlineInputBorder(
      borderRadius: BorderRadius.circular(15),
    );
    return TextFormField(
      focusNode: focusNode,
      decoration: InputDecoration(
        border: border,
        hintText: hintText,
        isDense: true,
        label: Text(label)
      ),
      onTapOutside: (event) => focusNode.unfocus(),
      validator: validator,
      onChanged: onChanged,
    );
  }
}