import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mepay/core/core.dart';

import '../../config/config.dart';

class SectionTwo extends StatelessWidget {
  const SectionTwo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: size.width <= 892 ? 24 : 100.0,
      ),
      /**
       * size.width <= 892 ?
       */
      child: size.width <= 892
          ? Column(
              children: [
                Image.asset(
                  'assets/images/png/discover.png',
                  height: 299.31,
                  width: 327,
                ),
                50.v,
                SizedBox(
                  width: 415,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Explore',
                        style: FontstyleThemeConfig.label4,
                      ),
                      10.v,
                      Text(
                        'Discover',
                        style: FontstyleThemeConfig.bold3,
                      ),
                      Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                              text: 'ME',
                              style: FontstyleThemeConfig.bold3,
                            ),
                            TextSpan(
                              text: 'PAY ',
                              style: FontstyleThemeConfig.titleBlack6,
                            ),
                            TextSpan(
                              text: 'benefits ',
                              style: FontstyleThemeConfig.bold3,
                            ),
                          ],
                          style: TextStyle(
                            height: 1.2,
                          ),
                        ),
                      ),
                      16.v,
                      Text(
                        'Helping you keep track of your bills and settle them as at when due. Helping you keep track of your bills and settle them as at when due. Helping you keep track of your bills and settle them as at when due. ',
                        style: FontstyleThemeConfig.regular,
                      ),
                      11.v,
                      Row(
                        children: [
                          Text(
                            'Learn More',
                            style: FontstyleThemeConfig.labelblue,
                          ),
                          8.08.h,
                          SvgPicture.string(
                            SvgAssetsConfig.arrow,
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            )
          : Row(
              children: [
                Flexible(
                  child: Image.asset(
                    'assets/images/png/discover.png',
                    height: 400,
                    width: 437,
                  ),
                ),
                112.h,
                Flexible(
                  child: SizedBox(
                    width: 415,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Explore',
                          style: FontstyleThemeConfig.label4,
                        ),
                        10.v,
                        Text(
                          'Discover',
                          style: FontstyleThemeConfig.titleBlack3,
                        ),
                        Text.rich(
                          TextSpan(
                            children: [
                              TextSpan(
                                text: 'ME',
                                style: FontstyleThemeConfig.titleBlack3,
                              ),
                              TextSpan(
                                text: 'PAY ',
                                style: FontstyleThemeConfig.titleBlue3,
                              ),
                              TextSpan(
                                text: 'benefits ',
                                style: FontstyleThemeConfig.titleBlack3,
                              ),
                            ],
                            style: TextStyle(
                              height: 1.2,
                            ),
                          ),
                        ),
                        16.v,
                        Text(
                          'Helping you keep track of your bills and settle them as at when due. Helping you keep track of your bills and settle them as at when due. Helping you keep track of your bills and settle them as at when due. ',
                          style: FontstyleThemeConfig.regular,
                        ),
                        11.v,
                        Row(
                          children: [
                            Text(
                              'Learn More',
                              style: FontstyleThemeConfig.labelblue,
                            ),
                            8.08.h,
                            SvgPicture.string(
                              SvgAssetsConfig.arrow,
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
    );
  }
}
