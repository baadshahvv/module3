import 'package:flutter/material.dart';

class SlideRoute extends PageRouteBuilder {
  final Widget page;

  SlideRoute({required this.page})
      : super(
    transitionDuration: const Duration(milliseconds: 400),
    pageBuilder: (context, animation, secondaryAnimation) => page,
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      final offset = Tween<Offset>(
        begin: const Offset(1, 0),
        end: Offset.zero,
      ).animate(animation);
      return SlideTransition(position: offset, child: child);
    },
  );
}
