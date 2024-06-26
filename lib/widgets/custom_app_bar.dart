import 'package:flutter/material.dart';
import 'package:jiitak/constants/colors.dart';
import 'package:jiitak/constants/text_styles.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({
    super.key,
    required this.title,
    this.centerTitle,
    this.leading,
    this.actions,
  });

  final String title;
  final bool? centerTitle;
  final Widget? leading;
  final List<Widget>? actions;

  @override
  Size get preferredSize => const Size.fromHeight(56);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: centerTitle,
      leading: leading,
      actions: actions,
      title: Text(title, style: homeCardtitleTextStyle),
      backgroundColor: transparentColor,
      elevation: 0,
    );
  }
}
