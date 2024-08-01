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
  MenuItems(
    title: "Progess Indicators", 
    subtitle: "Generales y controlados", 
    links: "/progress", 
    icon: Icons.refresh_rounded,
    ),
  MenuItems(
    title: "Snackbars y dialogos", 
    subtitle: "Indicadores en pantalla", 
    links: "/snackbar", 
    icon: Icons.info_outline,
    ),
  MenuItems(
    title: "Animated Container", 
    subtitle: "Statefull widget animado", 
    links: "/animated", 
    icon: Icons.check_box_outline_blank_outlined,
    ),
  MenuItems(
    title: "UI Controls + Tiles", 
    subtitle: "Una serie de controles de Flutter", 
    links: "/ui_controls", 
    icon: Icons.car_rental_outlined,
    ),
];