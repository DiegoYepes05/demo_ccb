import 'package:flutter/material.dart';

class CustomBottonNavigationBar extends StatelessWidget {
  const CustomBottonNavigationBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.grey,
        // unselectedLabelStyle: TextStyle(color: Colors.grey),
        items: const [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                size: 35,
              ),
              label: 'Inicio'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.airplanemode_on_sharp,
                size: 35,
              ),
              label: 'Circulo Afiliados'),
          BottomNavigationBarItem(
              icon: Icon(Icons.border_all_rounded, size: 35),
              label: 'Servicios'),
          BottomNavigationBarItem(
              icon: Icon(Icons.support_agent_sharp, size: 35),
              label: 'Contacto'),
        ]);
  }
}
