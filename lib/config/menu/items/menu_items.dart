import 'package:flutter/material.dart';

class MenuItems {
  final String title;
  final String subtitle;
  final String url;
  final IconData icon;

  MenuItems({
    required this.title, 
    required this.subtitle, 
    required this.url, 
    required this.icon});
}

List<MenuItems> appMenuItems = [
  MenuItems(
    title: "Botones", 
    subtitle: "Varios Botones en Flutter", 
    url: "/buttons", 
    icon: Icons.smart_button_outlined
    ),
  MenuItems(
    title: "Botones", 
    subtitle: "Varios Botones en Flutter", 
    url: "/buttons", 
    icon: Icons.smart_button_outlined
    ),
  MenuItems(
    title: "Tarjetas", 
    subtitle: "Un conenedor estilizado", 
    url: "/cards", 
    icon: Icons.credit_card
    ),
];