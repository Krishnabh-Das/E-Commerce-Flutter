import 'package:ecommerce/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class settingsMenuTile extends StatelessWidget {
  const settingsMenuTile(
      {super.key,
      required this.icon,
      required this.Title,
      required this.subtitle,
      this.trailing,
      this.onTap});

  final IconData icon;
  final String Title, subtitle;
  final Widget? trailing;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
        icon,
        size: 28,
        color: MyAppColors.primary,
      ),
      title: Text(
        Title,
        style: Theme.of(context).textTheme.headlineSmall,
      ),
      subtitle: Text(
        subtitle,
        style: Theme.of(context).textTheme.labelMedium,
      ),
      trailing: trailing,
      onTap: onTap,
    );
  }
}
