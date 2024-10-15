import 'package:demo_ccb/config/menu/item_menu.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomDrawer extends StatefulWidget {
  const CustomDrawer({
    super.key,
  });

  @override
  State<CustomDrawer> createState() => _CustomDrawerState();
}

class _CustomDrawerState extends State<CustomDrawer> {
  int navDraverIndex = 0;

  @override
  Widget build(BuildContext context) {
    final hasNotch = MediaQuery.of(context).viewPadding.top > 35;
    return NavigationDrawer(
      selectedIndex: navDraverIndex,
      onDestinationSelected: (value) {
        setState(() {
          navDraverIndex = value;
        });

        final menuItem = appMenuItems[value];
        context.push(menuItem.link);
      },
      indicatorColor: Colors.red,
      children: [
        Padding(
          padding: EdgeInsets.fromLTRB(28, hasNotch ? 0 : 20, 16, 25),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Cámara \nde Comercio \nde Bogotá',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
              ),
              IconButton(
                  onPressed: () => context.pop(),
                  icon: const Icon(
                    Icons.close_rounded,
                    size: 40,
                  ))
            ],
          ),
        ),
        ...appMenuItems.map(
          (item) => NavigationDrawerDestination(
            icon: Icon(
              item.icon,
            ),
            label: Text(item.title),
          ),
        ),
        const Padding(
          padding: EdgeInsets.fromLTRB(28, 50, 16, 10),
          child: Row(
            children: [
              Icon(
                Icons.door_back_door,
                color: Colors.red,
              ),
              SizedBox(width: 20),
              Text(
                'Cerrar sesión',
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.red),
              ),
            ],
          ),
        )
      ],
    );
  }
}
