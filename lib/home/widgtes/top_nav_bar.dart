
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TopNavBar extends StatelessWidget implements PreferredSizeWidget {
  const TopNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.black,
      title: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 50.0),
        child: Row(
          children: [
            SvgPicture.asset("assets/icons/logo.svg"),
            const Spacer(),
            if (MediaQuery.of(context).size.width > 800) ...[
              _buildNavItem('Items'),
              _buildNavItem('Pricing'),
              _buildNavItem('Info'),
              _buildNavItem('Tasks'),
              _buildNavItem('Analytics'),
            ],
            const SizedBox(width: 16),
            SvgPicture.asset("assets/icons/setting_icon.svg"),
            const SizedBox(width: 16),
            SvgPicture.asset("assets/icons/notification_icon.svg"),
            const SizedBox(width: 16),
            CircleAvatar(
              backgroundImage: AssetImage('assets/images/back_card1.png'),
              radius: 16,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildNavItem(String title) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: Text(
        title,
        style: const TextStyle(color: Colors.white, fontSize: 14),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
