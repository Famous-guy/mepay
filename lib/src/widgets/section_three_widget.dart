import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mepay/core/core.dart';

import '../../config/config.dart';

class SectionThree extends StatelessWidget {
  const SectionThree({
    super.key,
    required this.brief,
  });

  final Map<String, dynamic> brief;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: size.width <= 892 ? 24 : 100.0,
      ),
      child: Container(
        clipBehavior: Clip.hardEdge,
        decoration: BoxDecoration(
          // border: Border.all(
          //   color: ColorsThemeConfig.dsb50,
          //   width: 1,
          // ),
          borderRadius: BorderRadius.circular(
            20,
          ),
        ),
        /**
         *    String key = widget.shootings.keys.elementAt(index);
            String value = widget.shootings.values.elementAt(index);
         */
        child: Center(
          child: Wrap(
            children: List.generate(
              brief.length,
              (index) {
                String key = brief.keys.elementAt(index);
                String value = brief.values.elementAt(index);
                return Container(
                  padding: EdgeInsets.all(
                    36,
                  ),
                  width: 360,
                  // height: 268,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: ColorsThemeConfig.dsb50,
                      width: 1,
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SvgPicture.string(
                        SvgAssetsConfig.mepay,
                        width: 56,
                        height: 19,
                      ),
                      8.v,
                      Text(
                        key,
                        style: FontstyleThemeConfig.bold2,
                      ),
                      24.v,
                      Text(
                        value,
                        style: FontstyleThemeConfig.label2,
                      ),
                      24.v,
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
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
