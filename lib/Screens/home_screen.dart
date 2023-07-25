import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:news_app/Shared/news_container.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenUtil = ScreenUtil();

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(
                left: screenUtil.setWidth(16),
                right: screenUtil.setWidth(16),
                top: screenUtil.setHeight(16),
                bottom: screenUtil.setHeight(16),
              ),
              child: SizedBox(
                width: screenUtil.setWidth(600),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Flexible(
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Search',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(
                              screenUtil.setWidth(30),
                            ),
                          ),
                          contentPadding: EdgeInsets.symmetric(
                            vertical: 0,
                            horizontal: screenUtil.setWidth(16),
                          ),
                          prefixIcon: const Icon(Icons.search),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: screenUtil.setWidth(16)),
                      child: SizedBox(
                        width: screenUtil.setWidth(40),
                        height: screenUtil.setWidth(40),
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
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding:
                  EdgeInsets.symmetric(horizontal: screenUtil.setWidth(16)),
              child: Row(
                children: [
                  Text(
                    'Latest News',
                    style: TextStyle(
                      fontSize: screenUtil.setSp(18),
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                      fontFamily: 'sans-serif',
                    ),
                  ),
                  const Spacer(),
                  TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                          screenUtil.setWidth(30),
                        ),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'See All',
                          style: TextStyle(
                            color: const Color(0xFF0080FF),
                            fontSize: screenUtil.setSp(14),
                          ),
                        ),
                        Icon(
                          Icons.arrow_forward,
                          color: const Color(0xFF0080FF),
                          size: screenUtil.setSp(20),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: 5,
                itemBuilder: (context, index) {
                  return NewsCard();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
