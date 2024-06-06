import 'package:flutter/material.dart';
import '../../../../../../core/theming/colors.dart';

class CustomDivider extends StatelessWidget {
  const CustomDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.0),
      child: Divider(
        thickness: 1,
        color: ColorsManger.dividerColor,
      ),
    );
  }
}
