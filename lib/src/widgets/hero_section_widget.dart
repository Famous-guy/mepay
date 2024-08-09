import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mepay/core/core.dart';

import '../../config/config.dart';

class HeroSection extends StatelessWidget {
  const HeroSection({
    super.key,
    required this.whatWeDo,
    required this.button,
    required this.partners,
  });

  final List<String> whatWeDo;
  final List<String> button;
  final List<String> partners;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: size.width <= 892 ? 23 : 100.0,
      ),
      child: size.width <= 892
          ? Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // SizedBox(
                //   // width: 327,
                //   // height: 253,
                //   child:
                Image.asset(
                  'assets/images/png/mobile_mockup.png',
                  // fit: BoxFit.cover,
                  // ),
                ),
                // Expanded(
                //   child:
                24.v,
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 484,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text.rich(
                            TextSpan(
                              children: [
                                TextSpan(
                                  text: 'Unlock Automatic ',
                                  style: size.width <= 892
                                      ? FontstyleThemeConfig.titleBlack2
                                      : FontstyleThemeConfig.titleBlack,
                                ),
                                TextSpan(
                                  text: 'Payments ',
                                  style: size.width <= 892
                                      ? FontstyleThemeConfig.titleBlue2
                                      : FontstyleThemeConfig.titleBlue,
                                ),
                                TextSpan(
                                  text: 'and ',
                                  style: size.width <= 892
                                      ? FontstyleThemeConfig.titleBlack2
                                      : FontstyleThemeConfig.titleBlack,
                                ),
                                TextSpan(
                                  text: 'Reminders',
                                  style: size.width <= 892
                                      ? FontstyleThemeConfig.titleBlue2
                                      : FontstyleThemeConfig.titleBlue,
                                ),
                              ],
                              style: TextStyle(
                                height: 1.2,
                              ),
                            ),
                          ),
                          SizedBox(height: 24),
                          SizedBox(
                            width: 370,
                            child: Text(
                              'Helping you keep track of your bills and settle them as at when due.',
                              style: FontstyleThemeConfig.label4,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 24),
                    Wrap(
                      runAlignment: WrapAlignment.start,
                      crossAxisAlignment: WrapCrossAlignment.start,
                      spacing: 15.0, // Space between items
                      runSpacing: 10.0, // Space between lines
                      children: List.generate(
                        whatWeDo.length,
                        (index) {
                          final weDo = whatWeDo[index];
                          return Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              SvgPicture.string(
                                SvgAssetsConfig.check,
                              ),
                              SizedBox(width: 8.7),
                              Text(
                                weDo,
                                style: FontstyleThemeConfig.regular,
                              ),
                            ],
                          );
                        },
                      ),
                    ),
                    SizedBox(height: 36),
                    Column(
                      children: List.generate(
                        button.length,
                        (index) {
                          final buttons = button[index];
                          return Padding(
                            padding: EdgeInsets.only(
                              bottom: index == 0 ? 16.0 : 0,
                            ),
                            child: CustomButton(
                              showImage: false,
                              showOnlyOutline: index == 0 ? true : false,
                              onTap: () {},
                              label: buttons,
                              borderColor: index == 0
                                  ? ColorsThemeConfig.black900
                                  : ColorsThemeConfig.msb,
                              textStyle: index == 0
                                  ? FontstyleThemeConfig.label5
                                  : FontstyleThemeConfig.labelwhite2,
                            ),
                          );
                        },
                      ),
                    ),
                    SizedBox(
                      height: 53,
                    ),
                    Text(
                      'Investors and Partners',
                      style: FontstyleThemeConfig.label,
                    ),
                    SizedBox(height: 16),
                    Wrap(
                      spacing: 48.0, // Space between items
                      runSpacing: 10.0, // Space between lines
                      children: List.generate(partners.length, (index) {
                        final partner = partners[index];
                        return SvgPicture.string(
                          partner,
                        );
                      }),
                    ),
                  ],
                ),
                // ),
              ],
            )
          : Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 484,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text.rich(
                              TextSpan(
                                children: [
                                  TextSpan(
                                    text: 'Unlock Automatic ',
                                    style: FontstyleThemeConfig.titleBlack,
                                  ),
                                  TextSpan(
                                    text: 'Payments ',
                                    style: FontstyleThemeConfig.titleBlue,
                                  ),
                                  TextSpan(
                                    text: 'and ',
                                    style: FontstyleThemeConfig.titleBlack,
                                  ),
                                  TextSpan(
                                    text: 'Reminders',
                                    style: FontstyleThemeConfig.titleBlue,
                                  ),
                                ],
                                style: TextStyle(
                                  height: 1.2,
                                ),
                              ),
                            ),
                            SizedBox(height: 24),
                            SizedBox(
                              width: 370,
                              child: Text(
                                'Helping you keep track of your bills and settle them as at when due.',
                                style: FontstyleThemeConfig.label4,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 24),
                      Wrap(
                        spacing: 15.0, // Space between items
                        runSpacing: 10.0, // Space between lines
                        children: List.generate(
                          whatWeDo.length,
                          (index) {
                            final weDo = whatWeDo[index];
                            return Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                SvgPicture.string(
                                  SvgAssetsConfig.check,
                                ),
                                SizedBox(width: 8.7),
                                Text(
                                  weDo,
                                  style: FontstyleThemeConfig.regular,
                                ),
                              ],
                            );
                          },
                        ),
                      ),
                      SizedBox(height: 36),
                      Row(
                        children: List.generate(
                          button.length,
                          (index) {
                            final buttons = button[index];
                            return Padding(
                              padding: EdgeInsets.only(
                                right: index == 0 ? 16.0 : 0,
                              ),
                              child: CustomButton(
                                showImage: false,
                                showOnlyOutline: index == 0 ? true : false,
                                onTap: () {},
                                label: buttons,
                                borderColor: index == 0
                                    ? ColorsThemeConfig.black900
                                    : ColorsThemeConfig.msb,
                                textStyle: index == 0
                                    ? FontstyleThemeConfig.label5
                                    : FontstyleThemeConfig.labelwhite2,
                              ),
                            );
                          },
                        ),
                      ),
                      SizedBox(height: 95),
                      Text(
                        'Investors and Partners',
                        style: FontstyleThemeConfig.label,
                      ),
                      SizedBox(height: 16),
                      Wrap(
                        spacing: 48.0, // Space between items
                        runSpacing: 10.0, // Space between lines
                        children: List.generate(partners.length, (index) {
                          final partner = partners[index];
                          return SvgPicture.string(
                            partner,
                          );
                        }),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 390,
                  height: 607.33,
                  child: Image.asset(
                    'assets/images/png/mobile.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            ),
    );
  }
}
