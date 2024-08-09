import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../config/config.dart';
import '../../core/core.dart';

class Footer extends StatelessWidget {
  const Footer({
    super.key,
    required this.socials,
    required this.features,
    required this.accounts,
    required this.aboutUs,
  });

  final List<String> socials;
  final List<String> features;
  final List<String> accounts;
  final List<String> aboutUs;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SizedBox(
      height: size.width <= 524
          ? 1500
          : size.width <= 536
              ? 1338
              : size.width <= 765
                  ? 1238
                  : size.width <= 1001
                      ? 1038
                      : 780,
      child: Stack(
        children: [
          Positioned(
            bottom: 0,
            right: 0,
            left: 0,
            child: Container(
              padding: const EdgeInsets.only(
                left: 100.0,
                right: 100.0,
                top: 150.0,
                bottom: 48,
              ),
              decoration: BoxDecoration(
                color: ColorsThemeConfig.dsb100,
              ),
              child: size.width <= 1020
                  ? Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Wrap(
                          // crossAxisAlignment: CrossAxisAlignment.start,
                          runSpacing: 50,
                          crossAxisAlignment: WrapCrossAlignment.start,
                          runAlignment: WrapAlignment.start,
                          spacing: 100,
                          children: List.generate(3, (inde) {
                            return Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: List.generate(
                                  inde == 0
                                      ? features.length
                                      : inde == 1
                                          ? accounts.length
                                          : aboutUs.length, (index) {
                                final all = inde == 0
                                    ? features[index]
                                    : inde == 1
                                        ? accounts[index]
                                        : aboutUs[index];
                                return Padding(
                                  padding: EdgeInsets.only(
                                    right: index == 0
                                        ? 20.0
                                        : index != features.length - 1
                                            ? 16.0
                                            : 0,
                                  ),
                                  child: Text(
                                    all,
                                    style: index == 0
                                        ? FontstyleThemeConfig.label9
                                        : FontstyleThemeConfig.label,
                                  ),
                                );
                              }),
                            );
                          }),
                        ),
                        50.v,
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SvgPicture.string(
                              SvgAssetsConfig.mepay,
                              height: 49,
                              width: 140,
                            ),
                            24.v,
                            Text(
                              'Banking made easier!',
                              style: FontstyleThemeConfig.label4,
                            ),
                            24.v,
                            SizedBox(
                              width: 189.19,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: List.generate(
                                  2,
                                  (index) {
                                    return Padding(
                                      padding: EdgeInsets.only(
                                        bottom: index == 0 ? 16.0 : 0,
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
                                        textStyle:
                                            FontstyleThemeConfig.labelwhite,
                                        borderColor: Colors.transparent,
                                      ),
                                    );
                                  },
                                ),
                              ),
                            ),
                            24.v,
                            Row(
                              children: List.generate(
                                socials.length,
                                (index) {
                                  final social = socials[index];
                                  return Padding(
                                    padding: EdgeInsets.only(
                                      right: index != socials.length - 1
                                          ? 32.0
                                          : 0,
                                    ),
                                    child: SvgPicture.string(
                                      social,
                                    ),
                                  );
                                },
                              ),
                            ),
                            50.v,
                            Wrap(
                              crossAxisAlignment: WrapCrossAlignment.center,
                              children: [
                                Text(
                                  'Copyright @ 2024',
                                  style: FontstyleThemeConfig.label4,
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 24.0,
                                  ),
                                  child: Text.rich(
                                    TextSpan(
                                      children: [
                                        TextSpan(
                                            text: 'ME',
                                            style: FontstyleThemeConfig
                                                .titleBlack5),
                                        TextSpan(
                                            text: 'PAY',
                                            style: FontstyleThemeConfig
                                                .titleBlue5),
                                      ],
                                    ),
                                  ),
                                ),

                                // Center(
                                //   child: SvgPicture.string(
                                //     SvgAssetsConfig.mepay,
                                //     height: 25,
                                //     width: 55,
                                //   ),
                                // ),
                                Text(
                                  'All rights reserved.',
                                  style: FontstyleThemeConfig.label4,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    )
                  : Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SvgPicture.string(
                              SvgAssetsConfig.mepay,
                              height: 49,
                              width: 140,
                            ),
                            24.v,
                            Text(
                              'Banking made easier!',
                              style: FontstyleThemeConfig.label4,
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
                                      textStyle:
                                          FontstyleThemeConfig.labelwhite,
                                      borderColor: Colors.transparent,
                                    ),
                                  );
                                },
                              ),
                            ),
                            24.v,
                            Row(
                              children: List.generate(
                                socials.length,
                                (index) {
                                  final social = socials[index];
                                  return Padding(
                                    padding: EdgeInsets.only(
                                      right: index != socials.length - 1
                                          ? 32.0
                                          : 0,
                                    ),
                                    child: SvgPicture.string(
                                      social,
                                    ),
                                  );
                                },
                              ),
                            ),
                            50.v,
                            Wrap(
                              crossAxisAlignment: WrapCrossAlignment.center,
                              children: [
                                Text(
                                  'Copyright @ 2024',
                                  style: FontstyleThemeConfig.label4,
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 24.0,
                                  ),
                                  child: Text.rich(
                                    TextSpan(
                                      children: [
                                        TextSpan(
                                            text: 'ME',
                                            style: FontstyleThemeConfig
                                                .titleBlack5),
                                        TextSpan(
                                            text: 'PAY',
                                            style: FontstyleThemeConfig
                                                .titleBlue5),
                                      ],
                                    ),
                                  ),
                                ),

                                // Center(
                                //   child: SvgPicture.string(
                                //     SvgAssetsConfig.mepay,
                                //     height: 25,
                                //     width: 55,
                                //   ),
                                // ),
                                Text(
                                  'All rights reserved.',
                                  style: FontstyleThemeConfig.label4,
                                ),
                              ],
                            ),
                          ],
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: List.generate(3, (inde) {
                            return Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: List.generate(
                                  inde == 0
                                      ? features.length
                                      : inde == 1
                                          ? accounts.length
                                          : aboutUs.length, (index) {
                                final all = inde == 0
                                    ? features[index]
                                    : inde == 1
                                        ? accounts[index]
                                        : aboutUs[index];
                                return Padding(
                                  padding: EdgeInsets.only(
                                    right: index == 0
                                        ? 20.0
                                        : index != features.length - 1
                                            ? 16.0
                                            : 0,
                                  ),
                                  child: Text(
                                    all,
                                    style: index == 0
                                        ? FontstyleThemeConfig.label9
                                        : FontstyleThemeConfig.label,
                                  ),
                                );
                              }),
                            );
                          }),
                        )
                      ],
                    ),
            ),
          ),
          size.width <= 1020
              ? Positioned(
                  right: 24,
                  bottom: size.width <= 524
                      ? 1150
                      : size.width <= 538
                          ? 1000
                          : size.width <= 758
                              ? 950
                              : size.width <= 1020
                                  ? 750
                                  : 950,
                  left: 24,
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 24,
                      vertical: 44.5,
                    ),
                    decoration: BoxDecoration(
                      color: ColorsThemeConfig.primaryColor,
                      borderRadius: BorderRadius.circular(
                        25.0,
                      ),
                    ),
                    child: Column(
                      children: [
                        Text(
                          'Subscribe To Our NewsLetter',
                          style: FontstyleThemeConfig.boldwhite,
                        ),
                        24.v,
                        Visibility(
                          visible: size.width <= 538,
                          child: TextFormField(
                            decoration: InputDecoration(
                              contentPadding: const EdgeInsets.symmetric(
                                horizontal: 16,
                                vertical: 23.5,
                              ),
                              prefixIcon: Padding(
                                padding: const EdgeInsets.only(
                                    left: 16.0, right: 10.0),
                                child: SvgPicture.string(
                                  SvgAssetsConfig.mail,
                                  height: 24,
                                  width: 24,
                                ),
                              ),
                              prefixIconConstraints: const BoxConstraints(
                                minWidth: 40,
                                minHeight: 40,
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(
                                  19,
                                ),
                                borderSide: const BorderSide(
                                  color: Colors.white,
                                ),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(19),
                                borderSide: const BorderSide(
                                  color: Colors.white,
                                ),
                              ),
                              fillColor: Colors.white,
                              filled: true,
                              hintText: 'Enter your email address',
                              hintStyle: FontstyleThemeConfig.labelblue2,
                            ),
                          ),
                        ),
                        if (size.width <= 538) 12.v,
                        Visibility(
                          visible: size.width > 538,
                          child: Stack(
                            children: [
                              TextFormField(
                                decoration: InputDecoration(
                                  contentPadding: const EdgeInsets.symmetric(
                                    horizontal: 16,
                                    vertical: 23.5,
                                  ),
                                  prefixIcon: Padding(
                                    padding: const EdgeInsets.only(
                                        left: 16.0, right: 10.0),
                                    child: SvgPicture.string(
                                      SvgAssetsConfig.mail,
                                      height: 24,
                                      width: 24,
                                    ),
                                  ),
                                  prefixIconConstraints: const BoxConstraints(
                                    minWidth: 40,
                                    minHeight: 40,
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(
                                      19,
                                    ),
                                    borderSide: const BorderSide(
                                      color: Colors.white,
                                    ),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(19),
                                    borderSide: const BorderSide(
                                      color: Colors.white,
                                    ),
                                  ),
                                  fillColor: Colors.white,
                                  filled: true,
                                  hintText: 'Enter your email address',
                                  hintStyle: FontstyleThemeConfig.labelblue2,
                                ),
                              ),
                              Positioned(
                                right: 8,
                                top: 6,
                                bottom: 6,
                                child: CustomButton(
                                  showOnlyOutline: false,
                                  onTap: () {},
                                  label: 'Subscribe',
                                  showImage: false,
                                  bgColor: ColorsThemeConfig.msb,
                                  textStyle: const TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  padding: const EdgeInsets.symmetric(
                                    vertical: 5.0,
                                    horizontal: 20.0,
                                  ),
                                  // borderRadius: BorderRadius.circular(20),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Visibility(
                          visible: size.width <= 538,
                          child: CustomButton(
                            showOnlyOutline: false,
                            onTap: () {},
                            label: 'Subscribe',
                            showImage: false,
                            bgColor: ColorsThemeConfig.dsb900,
                            textStyle: const TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                            padding: const EdgeInsets.symmetric(
                              vertical: 14.0,
                              horizontal: 20.0,
                            ),
                            // borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              : Positioned(
                  right: 100,
                  bottom: 436,
                  left: 100,
                  child: Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: size.width <= 1155 ? 50 : 236,
                      vertical: 80,
                    ),
                    decoration: BoxDecoration(
                      color: ColorsThemeConfig.primaryColor,
                      borderRadius: BorderRadius.circular(
                        25.0,
                      ),
                    ),
                    child: Column(
                      children: [
                        Text(
                          'Subscribe To Our NewsLetter',
                          style: FontstyleThemeConfig.boldwhite,
                        ),
                        24.v,
                        Stack(
                          children: [
                            TextFormField(
                              decoration: InputDecoration(
                                contentPadding: const EdgeInsets.symmetric(
                                  horizontal: 16,
                                  vertical: 23.5,
                                ),
                                prefixIcon: Padding(
                                  padding: const EdgeInsets.only(
                                      left: 16.0, right: 10.0),
                                  child: SvgPicture.string(
                                    SvgAssetsConfig.mail,
                                    height: 24,
                                    width: 24,
                                  ),
                                ),
                                prefixIconConstraints: const BoxConstraints(
                                  minWidth: 40,
                                  minHeight: 40,
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(
                                    19,
                                  ),
                                  borderSide: const BorderSide(
                                    color: Colors.white,
                                  ),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(19),
                                  borderSide: const BorderSide(
                                    color: Colors.white,
                                  ),
                                ),
                                fillColor: Colors.white,
                                filled: true,
                                hintText: 'Enter your email address',
                                hintStyle: FontstyleThemeConfig.labelblue2,
                              ),
                            ),
                            Positioned(
                              right: 8,
                              top: 6,
                              bottom: 6,
                              child: CustomButton(
                                showOnlyOutline: false,
                                onTap: () {},
                                label: 'Subscribe',
                                showImage: false,
                                bgColor: ColorsThemeConfig.msb,
                                textStyle: const TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                                padding: const EdgeInsets.symmetric(
                                  vertical: 5.0,
                                  horizontal: 20.0,
                                ),
                                // borderRadius: BorderRadius.circular(20),
                              ),
                            ),
                          ],
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
