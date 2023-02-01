import 'package:flutter/material.dart';

class CoffeType extends StatelessWidget {
  const CoffeType(
      {super.key,
      required this.coffeTypes,
      required this.isSelected,
      required this.onTap});

  final String coffeTypes;
  final bool isSelected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(left: 25),
        child: Text(
          coffeTypes,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: isSelected ? Colors.orange : Colors.white,
          ),
        ),
      ),
    );
  }
}
