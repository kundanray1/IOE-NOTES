import 'package:book/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class SuperText extends StatefulWidget {
  const SuperText({super.key, required this.title});
  final String title;
  @override
  State<SuperText> createState() => _SuperTextState();
}

class _SuperTextState extends State<SuperText> {
  @override
  Widget build(BuildContext context) {
    return Text(
      widget.title,
      style: const TextStyle(
        color: Colors.white,
        fontSize: 20,
        fontWeight: FontWeight.w800,
        shadows: [
          Shadow(
            blurRadius: 10.0,
            color: Colors.blue,
            offset: Offset(2.0, 2.0),
          ),
        ],
      ),
    );
  }
}

class SectionHeader extends StatefulWidget {
  const SectionHeader({super.key, required this.title});
  final String title;
  @override
  State<SectionHeader> createState() => _SectionHeaderState();
}

class _SectionHeaderState extends State<SectionHeader> {
  @override
  Widget build(BuildContext context) {
    return Text(
      widget.title,
      style: const TextStyle(
        color: tdBlack,
        fontSize: 20,
        fontWeight: FontWeight.w800,
        shadows: [
          Shadow(
            blurRadius: 10.0,
            color: Colors.white,
            offset: Offset(2.0, 2.0),
          ),
        ],
      ),
    );
  }
}
