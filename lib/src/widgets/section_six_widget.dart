import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mepay/core/core.dart';

import '../../config/config.dart';

class SectionSix extends StatelessWidget {
  const SectionSix({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return size.width <= 892
        ? SizedBox(
            height: 624.99,
            width: 626.7,
            child: Stack(
              children: [
                Center(
                  child: SizedBox(
                    height: 624.99,
                    width: 626.7,
                    child: SvgPicture.string(
                      SvgAssetsConfig.ellips,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Center(
                  child: SizedBox(
                    height: 551.36,
                    width: 552.22,
                    child: SvgPicture.string(
                      SvgAssetsConfig.ellips3,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Center(
                  child: SizedBox(
                    height: 458.9,
                    width: 459.75,
                    child: SvgPicture.string(
                      SvgAssetsConfig.ellips2,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Center(
                  child: Container(
                    width: 327,
                    margin: const EdgeInsets.only(
                      bottom: 103,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text('Get Started Now!',
                            style: FontstyleThemeConfig.titleBlack2),
                        8.v,
                        SizedBox(
                          width: 420,
                          child: Text(
                              'Join thousands of people who use MEPAY for all their transactions.',
                              textAlign: TextAlign.center,
                              style: FontstyleThemeConfig.label2),
                        ),
                        24.v,
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: List.generate(
                            2,
                            (index) {
                              return Padding(
                                padding: EdgeInsets.only(
                                  bottom: index == 0 ? 12.0 : 0,
                                ),
                                child: CustomButton(
                                  showImage: true,
                                  padding: const EdgeInsets.symmetric(
                                    vertical: 14.95,
                                    horizontal: 15.5,
                                  ),
                                  image: index == 0
                                      ? SvgAssetsConfig.google
                                      : SvgAssetsConfig.apple,
                                  showOnlyOutline: false,
                                  onTap: () {},
                                  label: index == 0
                                      ? 'Google Play'
                                      : 'Apple Store',
                                  bgColor: ColorsThemeConfig.dsb900,
                                  textStyle: FontstyleThemeConfig.labelwhite,
                                  borderColor: Colors.transparent,
                                ),
                              );
                            },
                          ),
                        ),
                        38.v,
                        AnimatedContainer(
                          duration: const Duration(
                            milliseconds: 200,
                          ),
                          curve: Curves.linear,
                          padding: const EdgeInsets.all(
                            25,
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(
                              20,
                            ),
                            border: Border.all(
                              color: ColorsThemeConfig.msb300,
                              width: 3,
                            ),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SvgPicture.string(
                                SvgAssetsConfig.qrcode,
                              ),
                              24.h,
                              Expanded(
                                child: Text(
                                  'Scan the QR code with your phone camera to download the MegaPay app.',
                                  style: FontstyleThemeConfig.label,
                                  maxLines: 3, // Limit the text to 2 lines
                                  overflow: TextOverflow
                                      .ellipsis, // Add ellipsis if text overflows
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          )
        : SizedBox(
            height: 730,
            width: 732,
            child: Stack(
              children: [
                Center(
                  child: SvgPicture.string(
                    SvgAssetsConfig.ellips,
                  ),
                ),
                Center(
                  child: SvgPicture.string(
                    SvgAssetsConfig.ellips3,
                  ),
                ),
                Center(
                  child: SvgPicture.string(
                    SvgAssetsConfig.ellips2,
                  ),
                ),
                Center(
                  child: Container(
                    width: 530,
                    margin: const EdgeInsets.only(
                      bottom: 131,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          'Get Started Now!',
                          style: FontstyleThemeConfig.titleBlack,
                        ),
                        8.v,
                        SizedBox(
                          width: 420,
                          child: Text(
                            'Join thousands of people who use MEPAY for all their transactions.',
                            textAlign: TextAlign.center,
                            style: FontstyleThemeConfig.label4,
                          ),
                        ),
                        24.v,
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: List.generate(
                            2,
                            (index) {
                              return Padding(
                                padding: EdgeInsets.only(
                                  right: index == 0 ? 16.0 : 0,
                                ),
                                child: CustomButton(
                                  showImage: true,
                                  padding: const EdgeInsets.symmetric(
                                    vertical: 14.95,
                                    horizontal: 15.5,
                                  ),
                                  image: index == 0
                                      ? SvgAssetsConfig.google
                                      : SvgAssetsConfig.apple,
                                  showOnlyOutline: false,
                                  onTap: () {},
                                  label: index == 0
                                      ? 'Google Play'
                                      : 'Apple Store',
                                  bgColor: ColorsThemeConfig.dsb900,
                                  textStyle: FontstyleThemeConfig.labelwhite,
                                  borderColor: Colors.transparent,
                                ),
                              );
                            },
                          ),
                        ),
                        38.v,
                        AnimatedContainer(
                          duration: const Duration(
                            milliseconds: 200,
                          ),
                          curve: Curves.linear,
                          padding: const EdgeInsets.all(
                            25,
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(
                              20,
                            ),
                            border: Border.all(
                              color: ColorsThemeConfig.msb300,
                              width: 3,
                            ),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SvgPicture.string(
                                SvgAssetsConfig.qrcode,
                              ),
                              24.h,
                              Expanded(
                                child: Text(
                                  'Scan the QR code with your phone camera to download the MegaPay app.',
                                  style: FontstyleThemeConfig.label,
                                  maxLines: 2, // Limit the text to 2 lines
                                  overflow: TextOverflow
                                      .ellipsis, // Add ellipsis if text overflows
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          );
  }
}
