import 'package:ekar_project/utils/colors.dart';
import 'package:ekar_project/utils/images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final Widget? leadingIcon;
  const CustomAppBar({Key? key, this.leadingIcon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: AppColors.white,
      leading: leadingIcon,
      title: SvgPicture.asset(
        AppImages.logoSvg,
        height: 30,
        width: 60,
      ),
      centerTitle: true,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
