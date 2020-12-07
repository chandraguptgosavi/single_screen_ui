import 'package:flutter/material.dart';
import 'package:single_screen_ui/values/colors.dart';
import 'package:single_screen_ui/values/dimens.dart';
import 'package:single_screen_ui/values/strings.dart';

class MiddleCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          Strings.bank_transfer,
          style: TextStyle(
              color: AppColors.primaryTextColor,
              fontSize: Dimens.bankTransferTextSize),
        ),
        Card(
          elevation: Dimens.cardElevation,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
              Dimens.cardBorderRadius,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(Dimens.cardStackPadding),
            child: Stack(
              alignment: Alignment.center,
              children: [
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Text(
                              Strings.you_send,
                              style: TextStyle(
                                color: AppColors.cardLeftTextColor,
                              ),
                            ),
                            SizedBox(
                              height: Dimens.eight,
                            ),
                            Text(
                              Strings.amount,
                              style: TextStyle(
                                color: AppColors.cardLeftValueColor,
                                fontSize: Dimens.sendReceiveTextSize,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.all(Dimens.flag_padding),
                              child: Image.asset('assets/uae/uae.png'),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(0, 0, Dimens.sixteen, 0),
                              child: Text(
                                Strings.aed,
                                style: TextStyle(
                                    color: AppColors.cardRightTextColor),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(Dimens.cardDividerPadding),
                      child: Divider(
                        color: AppColors.cardDividerColor,
                        height: Dimens.cardDividerHeight,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Text(
                              Strings.they_receive,
                              style:
                                  TextStyle(color: AppColors.cardLeftTextColor),
                            ),
                            SizedBox(
                              height: Dimens.eight,
                            ),
                            Text(
                              Strings.amount,
                              style: TextStyle(
                                color: AppColors.cardLeftValueColor,
                                fontSize: Dimens.sendReceiveTextSize,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.all(Dimens.eight),
                              child: Image.asset('assets/india/india.png'),
                            ),
                            DropdownButton(
                              icon: Icon(
                                Icons.arrow_drop_down,
                                color: AppColors.dropDownColor,
                              ),
                              onChanged: (val) {},
                              underline: Container(),
                              items: [
                                DropdownMenuItem(
                                  child: Text(
                                    Strings.inr,
                                    style: TextStyle(
                                        color: AppColors.cardRightTextColor),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
                Container(
                  padding: const EdgeInsets.all(Dimens.eight),
                  child: Text(Strings.card_middle_text),
                  decoration: BoxDecoration(
                    color: AppColors.carMiddleTextBackground,
                    borderRadius: BorderRadius.circular(
                        Dimens.cardMiddleTextContainerBorderRadius),
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
