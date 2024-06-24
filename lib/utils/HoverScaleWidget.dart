import 'package:flutter/material.dart';

class HoverSensWidget extends StatefulWidget {
  final Widget child;

  const HoverSensWidget({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  State<HoverSensWidget> createState() => _HoverSensWidgetState();
}

class _HoverSensWidgetState extends State<HoverSensWidget> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => _handleHover(true),
      onExit: (_) => _handleHover(false),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        child: widget.child,
      ),
    );
  }

  void _handleHover(bool isHovered) {
    setState(() {
      _isHovered = isHovered;
    });
  }
}
