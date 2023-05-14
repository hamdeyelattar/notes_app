import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_icon.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar(
      {super.key, required this.title, required this.icon, this.onPressed});
  final String title;
  final IconData icon;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: Row(
        children: [
          Text(
            title,
            style: const TextStyle(fontSize: 35),
          ),
          const Spacer(),
          CustomIcon(
            onPressed: onPressed,
            icon: icon,
          )
        ],
      ),
    );
  }
}
