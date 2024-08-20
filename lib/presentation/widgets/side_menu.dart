import 'dart:io';

import 'package:flutter/material.dart';
import 'package:widgets_app/config/menu/menu_items.dart';

class SideMenu extends StatefulWidget {
  const SideMenu({super.key});

  @override
  State<SideMenu> createState() => _SideMenuState();
}

class _SideMenuState extends State<SideMenu> {

  int navDrawerIndex = 1;

  @override
  Widget build(BuildContext context) {

    final hasNotch = MediaQuery.of(context).viewPadding.top > 35;
   


    return NavigationDrawer(
      selectedIndex: navDrawerIndex,
      onDestinationSelected: (value) {
        setState(() {
          navDrawerIndex = value;
        });
      },
      children: [

        Padding(
          padding:  EdgeInsets.fromLTRB(28, hasNotch ? 0 : 20 , 16, 10),
          child: const Text('Main'),
        ),

        ...appMenuItems
        
        .sublist(0,3)
        
        .map((item) =>

         NavigationDrawerDestination(
          icon: Icon( item.icon), 
          label: Text(item.title)
        ),
      ),

      const Padding(
        padding: EdgeInsets.fromLTRB(28, 16, 28, 10),
        child: Divider(),
      ),
     /*    NavigationDrawerDestination(
          icon: const Icon(Icons.add_shopping_cart_rounded), 
          label: const Text('Otra pantalla')
        ), */

        const Padding(
          padding:  EdgeInsets.fromLTRB(28, 0, 16, 10),
          child: Text('More options'),
        ),

       ...appMenuItems
        
        .sublist(3)
        
        .map((item) =>

         NavigationDrawerDestination(
          icon: Icon( item.icon), 
          label: Text(item.title)
        ),
        ),
      ]
    );
  }
}