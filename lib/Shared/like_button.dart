import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class LikeButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenUtil = ScreenUtil();
    return Stack(
      children: <Widget>[
        Positioned(
          bottom: 20.0,
          right: 20.0,
          child: Container(
            width: 60.0,
            height: 60.0,
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
            child: InkWell(
              onTap: () {
                print('Image container tapped!');
              },
              child: Center(
                child: SvgPicture.asset(
                  'Assets/images/like.svg',
                  width: screenUtil.setWidth(22),
                  height: screenUtil.setWidth(24),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
