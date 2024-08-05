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
  MenuItems(
    title: "Introducción a la Aplicación", 
    subtitle: "Pequeño turorial introductorio", 
    links: "/app_tutorial", 
    icon: Icons.interests_rounded,
    ),
  MenuItems(
    title: "InfiniteScroll y Pull", 
    subtitle: "Listas infinitas y pull to refresh", 
    links: "/infinite_scroll", 
    icon: Icons.list_alt_outlined,
    ),
  MenuItems(
    title: "Riverpod Counter", 
    subtitle: "Introduccion a Riverpod", 
    links: "/counter", 
    icon: Icons.add_box_rounded,
    ),
  MenuItems(
    title: "Select Theme", 
    subtitle: "Seleccionar tema preferido", 
    links: "/theme_changer", 
    icon: Icons.format_paint_outlined,
    ),
];