import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class NotificationButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenUtil = ScreenUtil();
    return InkWell(
      onTap: () {},
      child: Container(
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          gradient: LinearGradient(
            colors: [
              Color.fromRGBO(255, 58, 68, 1),
              Color.fromRGBO(255, 128, 134, 1),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Center(
          child: SvgPicture.asset(
            'Assets/images/note_belle.svg',
            width: screenUtil.setWidth(22),
            height: screenUtil.setWidth(24),
          ),
        ),
      ),
    );
  }
}
