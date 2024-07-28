import 'package:flutter/material.dart';

class MenuItems {
  final String title;
  final String subtitle;
  final String links;
  final IconData icon;

  MenuItems({
    required this.title, 
    required this.subtitle, 
    required this.links, 
    required this.icon});
}

List<MenuItems> appMenuItems = [
  MenuItems(
    title: "Botones", 
    subtitle: "Varios Botones en Flutter", 
    links: "/buttons", 
    icon: Icons.smart_button_outlined
    ),
  MenuItems(
    title: "Tarjetas", 
    subtitle: "Un conenedor estilizado", 
    links: "/cards", 
    icon: Icons.credit_card
    ),
];