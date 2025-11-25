import 'package:flutter/material.dart';

class IconAboveTextButton extends StatelessWidget {
  final double width;
  final double height;
  final IconData icon;
  final String label;
  final VoidCallback? onPressed;
  final Color backgroundColor;
  final Color iconBackgroundColor;
  final TextStyle? labelStyle;

  const IconAboveTextButton({
    super.key,
    this.width = 120,
    this.height = 120,
    required this.icon,
    required this.label,
    this.onPressed,
    this.backgroundColor = Colors.white,
    this.iconBackgroundColor = Colors.blue,
    this.labelStyle,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        borderRadius: BorderRadius.circular(16),
        onTap: onPressed,
        child: Container(
          width: width,
          height: height,
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              Positioned.fill(
                child: Container(
                  decoration: BoxDecoration(
                    color: backgroundColor,
                    borderRadius: BorderRadius.circular(16),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12,
                        blurRadius: 8,
                        offset: Offset(0, 4),
                      )
                    ],
                  ),
                ),
              ),
              Positioned(
                top: -20,
                left: 0,
                right: 0,
                child: Center(
                  child: Container(
                    width: 56,
                    height: 56,
                    decoration: BoxDecoration(
                      color: iconBackgroundColor,
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black26,
                          blurRadius: 6,
                          offset: Offset(0, 3),
                        )
                      ],
                    ),
                    child: Icon(icon, color: Colors.white, size: 28),
                  ),
                ),
              ),
              Positioned(
                left: 12,
                right: 12,
                bottom: 16,
                child: Text(
                  label,
                  textAlign: TextAlign.center,
                  style: labelStyle ?? const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
