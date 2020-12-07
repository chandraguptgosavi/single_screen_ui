import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:single_screen_ui/values/colors.dart';
import 'package:single_screen_ui/values/dimens.dart';
import 'package:single_screen_ui/values/strings.dart';

class MiddleContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Row(
                children: [
                  IconButton(
                    icon: Image.asset('assets/tips/tips.png'),
                    onPressed: () {},
                  ),
                  Text(
                    Strings.tips,
                  ),
                ],
              ),
              Row(
                children: [
                  Text(
                    Strings.set_rate_alerts,
                  ),
                  Transform.scale(
                    scale: 0.6,
                    child: CupertinoSwitch(
                      value: false,
                      onChanged: (value) {},
                    ),
                  ),
                ],
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                Strings.rates_warning,
                style: TextStyle(
                  fontSize: Dimens.twelve,
                ),
              ),
            ],
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.02,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Column(
                  children: [
                    IconButton(
                      icon: CircleAvatar(
                        child: Image.asset(
                            'assets/bank_transfer/bank_transfer.png'),
                        backgroundColor: AppColors.middleIconsBackgroundColor,
                      ),
                      onPressed: () {},
                    ),
                    Text(
                      Strings.bank,
                    ),
                    Text(
                      Strings.transfer,
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  children: [
                    IconButton(
                      icon: CircleAvatar(
                        child: Image.asset('assets/payouts/payouts.png'),
                        backgroundColor: AppColors.middleIconsBackgroundColor,
                      ),
                      onPressed: () {},
                    ),
                    Text(
                      Strings.cash,
                    ),
                    Text(
                      Strings.payouts,
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  children: [
                    IconButton(
                      icon: CircleAvatar(
                        child: Image.asset('assets/wallet/wallet.png'),
                        backgroundColor: AppColors.middleIconsBackgroundColor,
                      ),
                      onPressed: () {},
                    ),
                    Text(
                      Strings.client_wallet,
                    ),
                    Text(
                      Strings.transfer,
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.02,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Column(
                  children: [
                    IconButton(
                      icon: CircleAvatar(
                        child:
                            Image.asset('assets/mobile_left/mobile_left.png'),
                        backgroundColor: AppColors.middleIconsBackgroundColor,
                      ),
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  children: [
                    IconButton(
                      icon: CircleAvatar(
                        child: Image.asset(
                            'assets/mobile_middle/mobile_middle.png'),
                        backgroundColor: AppColors.middleIconsBackgroundColor,
                      ),
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  children: [
                    IconButton(
                      icon: CircleAvatar(
                        child:
                            Image.asset('assets/mobile_right/mobile_right.png'),
                        backgroundColor: AppColors.middleIconsBackgroundColor,
                      ),
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
            ],
          ),
          Card(
            child: Padding(
              padding: const EdgeInsets.all(Dimens.eight),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        IconButton(
                          icon: Image.asset('assets/compass/compass.png'),
                          onPressed: () {},
                        ),
                        Text(
                          Strings.branches,
                          style: TextStyle(
                            fontSize: Dimens.twelve,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        IconButton(
                          icon: Image.asset(
                              'assets/opposite_arrow/opposite_arrow.png'),
                          onPressed: () {},
                        ),
                        Text(
                          Strings.track,
                          style: TextStyle(
                            fontSize: Dimens.twelve,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        Card(
                          elevation: Dimens.six,
                          shape: CircleBorder(),
                          child: Padding(
                            padding: const EdgeInsets.all(Dimens.ten),
                            child: Column(
                              children: [
                                Text(
                                  Strings.client,
                                  style: TextStyle(
                                    fontSize: Dimens.twelve,
                                  ),
                                ),
                                Text(
                                  Strings.logo,
                                  style: TextStyle(
                                    fontSize: Dimens.twelve,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        IconButton(
                          icon: Image.asset('assets/bulb/bulb.png'),
                          onPressed: () {},
                        ),
                        Text(
                          Strings.help,
                          style: TextStyle(
                            fontSize: Dimens.twelve,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        IconButton(
                          icon: Image.asset('assets/three_dots/three_dots.png'),
                          onPressed: () {},
                        ),
                        Text(
                          Strings.more,
                          style: TextStyle(
                            fontSize: Dimens.twelve,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.01,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: const EdgeInsets.fromLTRB(
                    Dimens.eight, Dimens.four, Dimens.eight, Dimens.four),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(Dimens.fifteen),
                ),
                child: Row(
                  children: [
                    Text(
                      Strings.show_more,
                      style: TextStyle(
                        color: AppColors.showMoreTextColor,
                      ),
                    ),
                    Image.asset('assets/show_more/show_more.png'),
                  ],
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(Dimens.sixteen),
            child: Row(
              children: [
                Text(
                  Strings.exclusive_offers,
                  style: TextStyle(
                    fontSize: Dimens.eighteen,
                    color: AppColors.cardsListHeaderColor,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.16,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(Dimens.sixteen, 0, 0, 0),
                  child: Stack(
                    alignment: Alignment.bottomRight,
                    children: [
                      Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(Dimens.twelve),
                        ),
                        child: Container(
                          width: MediaQuery.of(context).size.width * 0.80,
                          padding: const EdgeInsets.all(Dimens.sixteen),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(Dimens.twelve),
                            gradient: LinearGradient(
                              colors: [
                                AppColors.bottomCardGradient1,
                                AppColors.bottomCardGradient2,
                              ],
                            ),
                          ),
                          child: Row(
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    Strings.bottomCardText1,
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: Dimens.thirteen,
                                    ),
                                  ),
                                  Text(
                                    Strings.bottomCardText2,
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: Dimens.sixteen,
                                    ),
                                  ),
                                  Text(
                                    Strings.bottomCardText3,
                                    style: TextStyle(
                                      color: AppColors.bottomCardText3Color,
                                      fontSize: Dimens.thirteen,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        right: Dimens.sixteen,
                        child: Image.asset(
                          'assets/girl_trolly/trolly_girl.png',
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(Dimens.sixteen, 0, 0, 0),
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(Dimens.twelve),
                    ),
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.80,
                      padding: EdgeInsets.all(
                          MediaQuery.of(context).size.width * 0.05),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(Dimens.twelve),
                        gradient: LinearGradient(
                          colors: [
                            AppColors.bottom2CardGradient1,
                            AppColors.bottom2CardGradient2,
                          ],
                        ),
                      ),
                      child: Row(
                        children: [
                          Image.asset('assets/aeroplane/aeroplane.png'),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
