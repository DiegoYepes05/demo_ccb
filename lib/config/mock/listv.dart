import 'package:flutter/material.dart';

class LisvInfo {
  final IconData icon;
  final String text;

  LisvInfo({
    required this.icon,
    required this.text,
  });
}

final lisv = <LisvInfo>[
  LisvInfo(icon: Icons.refresh_rounded, text: 'Renovaciones'),
  LisvInfo(icon: Icons.calendar_month_outlined, text: 'Calendario de eventos'),
  LisvInfo(icon: Icons.monetization_on_rounded, text: 'Ordenes de pago'),
  LisvInfo(icon: Icons.group, text: 'Evalua tu empresa'),
];
