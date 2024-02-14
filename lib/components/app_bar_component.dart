import 'package:flutter/material.dart';

class AppBarComponent extends StatelessWidget implements PreferredSizeWidget {
  const AppBarComponent({
    super.key,
  });

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      title: const Text(
        "Types of cats",
        style: TextStyle(fontSize: 18),
      ),
      actions: const [
        IconButton(
            onPressed: null,
            icon: Icon(
              Icons.favorite,
              color: Colors.white,
            ))
      ],
    );
  }
}
