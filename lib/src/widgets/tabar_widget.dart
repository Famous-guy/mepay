import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mepay/config/assets/svg_assets_config.dart';
import 'package:mepay/config/theme/fontstyle_theme_config.dart';
import 'package:mepay/core/widgets/custom_button.dart';

import '../../config/config.dart';

class TabarWidget extends StatefulWidget {
  const TabarWidget({super.key});

  @override
  State<TabarWidget> createState() => _TabarWidgetState();
}

class _TabarWidgetState extends State<TabarWidget> {
  List<String> tab = [
    'Our Company',
    'Services',
    'Stories',
    'FAQs',
    'Resources',
  ];

  List<String> button = [
    'Login',
    'Create free account',
  ];

  // Track hover state for each tab
  List<bool> _isHovered = List.filled(5, false);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: size.width <= 892 ? 24 : 100,
        vertical: 35,
      ),
      child: Row(
        mainAxisAlignment: size.width <= 1104
            ? MainAxisAlignment.spaceBetween
            : MainAxisAlignment.start,
        children: [
          SvgPicture.string(
            SvgAssetsConfig.mepay,
            height: 29,
            width: 84,
          ),
          const SizedBox(
            width: 36,
          ), // Use SizedBox instead of 36.h
          Visibility(
            visible: size.width > 1104,
            child: Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: List.generate(
                      tab.length,
                      (index) {
                        final tabs = tab[index];
                        return Padding(
                          padding: EdgeInsets.only(
                            right: index != tab.length - 1 ? 24 : 0,
                          ),
                          child: Row(
                            children: [
                              GestureDetector(
                                onTap: () {},
                                child: MouseRegion(
                                  cursor: SystemMouseCursors.click,
                                  onEnter: (_) => _onHover(
                                    index,
                                    true,
                                  ),
                                  onExit: (_) => _onHover(index, false),
                                  child: AnimatedContainer(
                                    duration: const Duration(
                                      milliseconds: 200,
                                    ),
                                    curve: Easing.linear,
                                    child: Text(
                                      tabs,
                                      style: _isHovered[index]
                                          ? TextStyle(
                                              fontSize: 16,
                                              fontFamily:
                                                  FontFamilyThemeConfig.inter,
                                              fontWeight: FontWeight.w400,
                                              color: ColorsThemeConfig.black900
                                                  .withOpacity(
                                                0.5,
                                              ),
                                            )
                                          : FontstyleThemeConfig.label,
                                    ),
                                  ),
                                ),
                              ),
                              Visibility(
                                visible: index == 1,
                                child: const SizedBox(
                                  width: 10.92,
                                ),
                              ),
                              Visibility(
                                visible: index == 1,
                                child: SvgPicture.string(
                                  SvgAssetsConfig.down,
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ),
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
                            textStyle: index == 0
                                ? FontstyleThemeConfig.labelblue
                                : FontstyleThemeConfig.labelwhite,
                            showOnlyOutline: index == 0 ? true : false,
                            onTap: () {},
                            label: buttons,
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
          Visibility(
            visible: size.width <= 1104,
            child: SvgPicture.string(
              SvgAssetsConfig.more,
              height: 24,
              width: 24,
            ),
          ),
        ],
      ),
    );
  }

  void _onHover(int index, bool isHovered) {
    setState(() {
      _isHovered[index] = isHovered;
    });
  }
}
