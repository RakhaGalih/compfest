import 'package:compfest/icon.dart';
import 'package:flutter/material.dart';

Color shade = Colors.black.withOpacity(0.05);
Color lineColor = Colors.black.withOpacity(0.1);

const TextStyle kMediumTextStyle =
    TextStyle(fontSize: 18, fontWeight: FontWeight.w600);
List<IconTitle> journeyIcon = [
  IconTitle(icon: '🏡', title: 'Home'),
  IconTitle(icon: '📅', title: 'Fertility Tracking'),
  IconTitle(icon: '🥦', title: 'Healthy Food'),
  IconTitle(icon: '🔔', title: 'Reminders'),
  IconTitle(icon: '⚙️', title: 'Settings'),
];

List<IconTitle> bottomIcon = [
  IconTitle(icon: '🏡', title: 'Home'),
  IconTitle(icon: '📆', title: 'Calendar'),
  IconTitle(icon: '🍽️', title: 'Food'),
  IconTitle(icon: '🔔', title: 'Reminders'),
  IconTitle(icon: '⚙️', title: 'Settings'),
];

List<ImageFood> imageFood = [
  ImageFood(name: 'Quinoa Salad', nutrisi: 'High in nutrients', kal: '200 cal'),
  ImageFood(name: 'Salmon', nutrisi: 'Rich in Omega-3', kal: '300 cal'),
  ImageFood(
      name: 'Spinach Smoothie', nutrisi: 'Great for digestion', kal: '150 cal')
];
