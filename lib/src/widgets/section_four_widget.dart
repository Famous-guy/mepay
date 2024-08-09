import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mepay/core/extensions/extensions.dart';

import '../../config/config.dart';

class SectionFour extends StatelessWidget {
  const SectionFour({
    super.key,
    required this.offers,
    required this.image,
  });

  final Map<String, dynamic> offers;
  final List<String> image;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: 150,
        horizontal: size.width <= 892 ? 24 : 94,
      ),
      decoration: BoxDecoration(
        color: ColorsThemeConfig.bluegray20.withOpacity(
          0.3,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'How It Works?',
            style: size.width <= 892
                ? FontstyleThemeConfig.titleBlack2
                : FontstyleThemeConfig.titleBlack,
          ),
          Text(
            'Online banking is currently the real deal',
            style: FontstyleThemeConfig.label3,
          ),
          size.width <= 892 ? 50.v : 100.v,
          Column(
            children: List.generate(
              offers.length,
              (index) {
                String key = offers.keys.elementAt(index);
                String value = offers.values.elementAt(index);
                final images = image[index];

                // Check if the index is 1 to reverse the order
                bool reverse = index == 1;

                return size.width <= 892
                    ? Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          // if (!reverse)
                          Center(
                            child: Image.asset(
                              'assets/images/png/${images}.png',
                              width: 437,
                              height: 400,
                            ),
                          ),
                          // if (!reverse) 50.h,
                          SizedBox(
                            width: 384,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  key,
                                  style: FontstyleThemeConfig.bold2,
                                ),
                                16.v,
                                Text(
                                  value,
                                  style: FontstyleThemeConfig.label2,
                                ),
                                25.5.v,
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
                                ),
                              ],
                            ),
                          ),
                          // if (reverse) 50.h,
                          // if (reverse)
                          //   Image.asset(
                          //     'assets/images/png/${images}.png',
                          //     width: 437,
                          //     height: 400,
                          //   ),
                        ],
                      )
                    : Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          if (!reverse)
                            Flexible(
                              child: Image.asset(
                                'assets/images/png/${images}.png',
                                width: 437,
                                height: 400,
                              ),
                            ),
                          if (!reverse) 50.h,
                          Flexible(
                            child: SizedBox(
                              width: 384,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    key,
                                    style: FontstyleThemeConfig.bold2,
                                  ),
                                  16.v,
                                  Text(
                                    value,
                                    style: FontstyleThemeConfig.label2,
                                  ),
                                  52.v,
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
                                  ),
                                ],
                              ),
                            ),
                          ),
                          if (reverse) 50.h,
                          if (reverse)
                            Flexible(
                              child: Image.asset(
                                'assets/images/png/${images}.png',
                                width: 437,
                                height: 400,
                              ),
                            ),
                        ],
                      );
              },
            ),
          ),
        ],
      ),
    );
  }
}
