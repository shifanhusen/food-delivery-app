import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final List<Widget>? actions;
  final bool showBackButton;
  final Widget? leading;
  final double elevation;
  final bool centerTitle;

  const CustomAppBar({
    Key? key,
    required this.title,
    this.actions,
    this.showBackButton = true,
    this.leading,
    this.elevation = 0,
    this.centerTitle = true,
  }) : super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(56);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    
    return AppBar(
      title: Text(
        title,
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: theme.brightness == Brightness.light 
              ? Colors.black
              : Colors.white,
        ),
      ),
      centerTitle: centerTitle,
      elevation: elevation,
      backgroundColor: theme.appBarTheme.backgroundColor,
      automaticallyImplyLeading: showBackButton,
      leading: leading,
      actions: actions,
      iconTheme: IconThemeData(
        color: theme.brightness == Brightness.light 
            ? Colors.black
            : Colors.white,
      ),
    );
  }
}