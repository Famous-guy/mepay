import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mepay/core/core.dart';

import '../../config/config.dart';

class SectionFive extends StatelessWidget {
  const SectionFive({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.only(
        left: size.width <= 892 ? 24 : 100,
        right: size.width <= 892 ? 24 : 100,
        top: 150,
        bottom: 20,
      ),
      decoration: const BoxDecoration(
        color: Colors.transparent,
      ),
      child: Column(
        children: [
          Text(
            'Reviews',
            style: FontstyleThemeConfig.titleBlack,
          ),
          50.v,
          Center(
            child: Wrap(
              spacing: 24,
              runSpacing: 24,
              children: List.generate(
                3,
                (index) {
                  return Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: ColorsThemeConfig.dsb,
                      ),
                      borderRadius: BorderRadius.circular(
                        15,
                      ),
                    ),
                    padding: const EdgeInsets.all(
                      24,
                    ),
                    child: SizedBox(
                      width: 294,
                      child: Column(
                        children: [
                          Row(
                            children: List.generate(
                              5,
                              (index) {
                                return index == 4
                                    ? SvgPicture.string(
                                        SvgAssetsConfig.star,
                                        color: ColorsThemeConfig.gray,
                                      )
                                    : SvgPicture.string(
                                        SvgAssetsConfig.star,
                                      );
                              },
                            ),
                          ),
                          24.v,
                          Text(
                            'Save and invest in real estate companies Save and invest in real estate companies Save and invest in real estate companies',
                            style: FontstyleThemeConfig.label,
                          ),
                          24.v,
                          Row(
                            children: [
                              Container(
                                clipBehavior: Clip.hardEdge,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: ColorsThemeConfig.msb,
                                  ),
                                  borderRadius: BorderRadius.circular(
                                    50,
                                  ),
                                ),
                                child: CircleAvatar(
                                  backgroundColor: ColorsThemeConfig.bluegray30,
                                  backgroundImage: const AssetImage(
                                    'assets/images/png/avartar.png',
                                  ),
                                ),
                              ),
                              8.h,
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Ayokunmi',
                                    style: FontstyleThemeConfig.label25,
                                  ),
                                  5.v,
                                  Text(
                                    'Traveler',
                                    style: FontstyleThemeConfig.label26,
                                  ),
                                ],
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
