
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ChatDrawer extends StatefulWidget {
  const ChatDrawer({super.key});

  @override
  State<ChatDrawer> createState() => _ChatDrawerState();
}

class _ChatDrawerState extends State<ChatDrawer> {

  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    final textStyle = Theme.of(context).textTheme;
    return NavigationDrawer(
      selectedIndex: selectedIndex,
      onDestinationSelected: (value) {
        selectedIndex = value;
        setState(() {});
      },
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20,top: 10),
          child: Text('Tu historial', style: textStyle.titleLarge),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Divider(),
        ),
        
        const NavigationDrawerDestination(
          icon: Icon(Icons.arrow_forward_ios,size: 15,),
          label: Text('Receta de cocina'),
        ),
        const NavigationDrawerDestination(
          icon: Icon(Icons.arrow_forward_ios,size: 15,),
          label: Text('Enseñame a programar'),
        ),
        const NavigationDrawerDestination(
          icon: Icon(Icons.arrow_forward_ios,size: 15,),
          label: Text('Introduccion a base de datos'),
        ),

        
        const Padding(
          padding:  EdgeInsets.symmetric(horizontal: 20),
          child:  Divider(),
        ),

        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
          child: FilledButton(
          onPressed: () => context.go('/'),
          style: FilledButton.styleFrom(
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
              )
            ),
          ),
          child: const Text('Close session'),
        ),
        )

      ],
    );
  }
}
