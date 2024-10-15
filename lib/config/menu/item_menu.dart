import 'package:flutter/material.dart';

class MenuItems {
  final String title;

  final IconData icon;
  final String link;

  const MenuItems({
    required this.title,
    required this.icon,
    required this.link,
  });
}

const appMenuItems = <MenuItems>[
  MenuItems(
    title: 'Sobre la CCB',
    icon: Icons.accessibility_new_rounded,
    link: '/nosotros',
  ),
  MenuItems(
    title: 'Notificaciones',
    icon: Icons.smart_button_outlined,
    link: '/notificaciones',
  ),
  MenuItems(
    title: 'Noticias',
    icon: Icons.notifications_none_outlined,
    link: '/noticias',
  ),
  MenuItems(
    title: 'Términos y condiciones',
    icon: Icons.refresh_rounded,
    link: '/term',
  ),
  MenuItems(
    title: 'Protección de datos personales',
    icon: Icons.info_outline,
    link: '/person',
  ),
  MenuItems(
    title: 'Sectores empresariales',
    icon: Icons.check_box_outline_blank_rounded,
    link: '/otra',
  ),
];
