

import 'package:flutter/material.dart';


class SingInWith extends StatelessWidget {
  const SingInWith({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [

        const Text('Sing up with'),
        const Divider(),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            IconButton(
              onPressed: (){}, 
              icon: const Icon(Icons.apple)
            ),
            IconButton(
              onPressed: (){}, 
              icon: const Icon(Icons.facebook)
            ),
            IconButton(
              onPressed: (){}, 
              icon: const Icon(Icons.email)
            ),

          ],
        )

      ],
    );
  }
}