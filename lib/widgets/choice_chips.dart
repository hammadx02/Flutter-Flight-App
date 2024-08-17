import 'package:flutter/material.dart';

class ChoiceChips extends StatelessWidget {
  final IconData icon;
  final String name;
  final bool isSelected;

  const ChoiceChips({
    Key? key,
    required this.icon,
    required this.name,
    required this.isSelected,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
      margin: const EdgeInsets.symmetric(horizontal: 10.0),
      decoration: BoxDecoration(
        color: isSelected ? Colors.white : Colors.transparent,
        borderRadius: const BorderRadius.all(Radius.circular(10.0)),
        boxShadow: isSelected
            ? [
                BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    spreadRadius: 1,
                    blurRadius: 7,
                    offset: const Offset(0, 3))
              ]
            : [],
      ),
      child: Row(
        children: <Widget>[
          Icon(
            icon,
            color: isSelected ? Colors.black : Colors.grey,
          ),
          const SizedBox(
            width: 10.0,
          ),
          Text(
            name,
            style: TextStyle(
                fontSize: 16.0,
                color: isSelected ? Colors.black : Colors.grey,
                fontWeight: isSelected ? FontWeight.bold : FontWeight.normal),
          )
        ],
      ),
    );
  }
}
