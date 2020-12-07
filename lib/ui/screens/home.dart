import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:single_screen_ui/ui/widgets/card.dart';
import 'package:single_screen_ui/ui/widgets/container.dart';
import 'package:single_screen_ui/values/colors.dart';
import 'package:single_screen_ui/values/dimens.dart';
import 'package:single_screen_ui/values/strings.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              // alignment: Alignment.center,
              children: [
                Column(
                  children: [
                    Stack(
                      children: [
                        ClipPath(
                          clipper: BoxClipper(),
                          child: Container(
                            height: MediaQuery.of(context).size.height * 0.33,
                            decoration:
                                BoxDecoration(color: AppColors.topBoxColor),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(
                            Dimens.topBoxPadding,
                            Dimens.topBoxPadding,
                            Dimens.topBoxPadding,
                            0,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              DropdownButton(
                                icon: Icon(
                                  Icons.arrow_drop_down,
                                  color: AppColors.dropDownColor,
                                ),
                                onChanged: (val) {},
                                underline: Container(),
                                style: TextStyle(color: Colors.white),
                                items: [
                                  DropdownMenuItem(
                                    child: Text(Strings.en),
                                  ),
                                ],
                              ),
                              IconButton(
                                icon: Image.asset('assets/bell/bell.png'),
                                onPressed: null,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: Dimens.sixty,
                    ),
                    MiddleContainer(),
                  ],
                ),
                Positioned(
                  top: MediaQuery.of(context).size.height * 0.125,
                  left: MediaQuery.of(context).size.width * 0.05,
                  right: MediaQuery.of(context).size.width * 0.05,
                  child: MiddleCard(),
                ),
              ],
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.33,
            ),
          ],
        ),
      ),
    );
  }
}

class BoxClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, size.height - (size.height * 0.25));
    path.quadraticBezierTo(size.width / 2, size.height, size.width,
        size.height - (size.height * 0.25));
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}
