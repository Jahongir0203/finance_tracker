import '../../../../../../exports.dart';

class WProfileItem extends StatelessWidget {
  const WProfileItem({
    super.key,
    required this.onTap,
    required this.icon,
    required this.title,
    this.trailing,
    this.iconColor,
  });

  final VoidCallback onTap;
  final IconData icon;
  final String title;
  final String? trailing;
  final Color? iconColor;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      leading: Icon(icon, color: iconColor??AppColors.c0E33F3, size: 28),
      tileColor: context.color.cardColor,
      style: ListTileStyle.list,
      title: Text(title, style: context.textStyle.listTileTitle),
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (trailing != null)
            Text(trailing!, style: context.textStyle.listTileTrailing),
          Icon(
            Icons.navigate_next,
            color: context.textStyle.listTileTrailing.color,
          ),
        ],
      ),
      shape: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide.none,
      ),
    );
  }
}
