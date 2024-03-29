import 'package:cat_world_app/constants/colors.dart';
import 'package:flutter/material.dart';

class AppBarComponent extends StatelessWidget implements PreferredSizeWidget {
  const AppBarComponent({
    super.key,
    required this.data,
    required this.isBackButton,
  });
  final String? data;
  final bool isBackButton;
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: isBackButton ? Container() : BackButton(color: greyShade700),
      backgroundColor: backgroundColor,
      elevation: 0,
      centerTitle: true,
      title: Text(
        data ?? '',
        style: TextStyle(
            fontSize: 18,
            color: greyShade700,
            fontWeight: FontWeight.bold,
            fontFamily: 'Merienda'),
      ),
    );
  }
}
