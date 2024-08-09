// // import 'package:flutter/material.dart';
// // import 'package:flutter_svg/svg.dart';
// // import 'package:mepay/core/extensions/extensions.dart';

// // import '../../config/config.dart';

// // class SectionFour extends StatelessWidget {
// //   const SectionFour({
// //     super.key,
// //     required this.offers,
// //     required this.image,
// //   });

// //   final Map<String, dynamic> offers;
// //   final List<String> image;

// //   @override
// //   Widget build(BuildContext context) {
// //     final size = MediaQuery.of(context).size;
// //     return Container(
// //       padding: EdgeInsets.symmetric(
// //         vertical: 150,
// //         horizontal: size.width <= 892 ? 24 : 94,
// //       ),
// //       decoration: BoxDecoration(
// color: ColorsThemeConfig.bluegray20.withOpacity(
//   0.3,
// ),
// //       ),
// //       child: Column(
// //         crossAxisAlignment: CrossAxisAlignment.start,
// //         children: [
// //           Text(
// //             'How It Works?',
// style: size.width <= 892
//     ? FontstyleThemeConfig.titleBlack2
//     : FontstyleThemeConfig.titleBlack,
// //           ),
// //           Text(
// //             'Online banking is currently the real deal',
// //             style: FontstyleThemeConfig.label3,
// //           ),
// //           size.width <= 892 ? 50.v : 100.v,
// //           Column(
// //             children: List.generate(
// //               offers.length,
// //               (index) {
// //                 String key = offers.keys.elementAt(index);
// //                 String value = offers.values.elementAt(index);
// //                 final images = image[index];

// //                 // Check if the index is 1 to reverse the order
// //                 bool reverse = index == 1;

// //                 return size.width <= 892
// //                     ? Column(
// //                         mainAxisAlignment: MainAxisAlignment.center,
// //                         children: [
// //                           // if (!reverse)
// //                           Center(
// //                             child: Image.asset(
// //                               'assets/images/png/${images}.png',
// //                               width: 437,
// //                               height: 400,
// //                             ),
// //                           ),
// //                           // if (!reverse) 50.h,
// //                           SizedBox(
// //                             width: 384,
// //                             child: Column(
// //                               mainAxisAlignment: MainAxisAlignment.start,
// //                               crossAxisAlignment: CrossAxisAlignment.start,
// //                               children: [
// //                                 Text(
// //                                   key,
// //                                   style: FontstyleThemeConfig.bold2,
// //                                 ),
// //                                 16.v,
// //                                 Text(
// //                                   value,
// //                                   style: FontstyleThemeConfig.label2,
// //                                 ),
// //                                 25.5.v,
// //                                 Row(
// //                                   children: [
// //                                     Text(
// //                                       'Learn More',
// //                                       style: FontstyleThemeConfig.labelblue,
// //                                     ),
// //                                     8.08.h,
// //                                     SvgPicture.string(
// //                                       SvgAssetsConfig.arrow,
// //                                     ),
// //                                   ],
// //                                 ),
// //                               ],
// //                             ),
// //                           ),
// //                           // if (reverse) 50.h,
// //                           // if (reverse)
// //                           //   Image.asset(
// //                           //     'assets/images/png/${images}.png',
// //                           //     width: 437,
// //                           //     height: 400,
// //                           //   ),
// //                         ],
// //                       )
// //                     : Row(
// //                         mainAxisAlignment: MainAxisAlignment.center,
// //                         children: [
// //                           if (!reverse)
// //                             Flexible(
// //                               child: Image.asset(
// //                                 'assets/images/png/${images}.png',
// //                                 width: 437,
// //                                 height: 400,
// //                               ),
// //                             ),
// //                           if (!reverse) 50.h,
// //                           Flexible(
// //                             child: SizedBox(
// //                               width: 384,
// //                               child: Column(
// //                                 mainAxisAlignment: MainAxisAlignment.start,
// //                                 crossAxisAlignment: CrossAxisAlignment.start,
// //                                 children: [
// //                                   Text(
// //                                     key,
// //                                     style: FontstyleThemeConfig.bold2,
// //                                   ),
// //                                   16.v,
// //                                   Text(
// //                                     value,
// //                                     style: FontstyleThemeConfig.label2,
// //                                   ),
// //                                   52.v,
// //                                   Row(
// //                                     children: [
// //                                       Text(
// //                                         'Learn More',
// //                                         style: FontstyleThemeConfig.labelblue,
// //                                       ),
// //                                       8.08.h,
// //                                       SvgPicture.string(
// //                                         SvgAssetsConfig.arrow,
// //                                       ),
// //                                     ],
// //                                   ),
// //                                 ],
// //                               ),
// //                             ),
// //                           ),
// //                           if (reverse) 50.h,
// //                           if (reverse)
// //                             Flexible(
// //                               child: Image.asset(
// //                                 'assets/images/png/${images}.png',
// //                                 width: 437,
// //                                 height: 400,
// //                               ),
// //                             ),
// //                         ],
// //                       );
// //               },
// //             ),
// //           ),
// //         ],
// //       ),
// //     );
// //   }
// // }

// import 'package:flutter/material.dart';
// import 'package:flutter_svg/svg.dart';
// import 'package:mepay/core/core.dart';
// import '../../config/config.dart';

// class SectionFour extends StatefulWidget {
//   const SectionFour({
//     super.key,
//     required this.offers,
//     required this.image,
//     required this.scrollController,
//     required this.sectionKey,
//   });

//   final Map<String, dynamic> offers;
//   final List<String> image;
//   final ScrollController scrollController;
//   final GlobalKey sectionKey;

//   @override
//   _SectionFourState createState() => _SectionFourState();
// }

// class _SectionFourState extends State<SectionFour> {
//   bool _isInView = false;

//   @override
//   void initState() {
//     super.initState();
//     widget.scrollController.addListener(_scrollListener);
//   }

//   void _scrollListener() {
//     RenderBox? renderBox =
//         widget.sectionKey.currentContext?.findRenderObject() as RenderBox?;
//     if (renderBox != null) {
//       double widgetPosition = renderBox.localToGlobal(Offset.zero).dy;
//       double screenHeight = MediaQuery.of(context).size.height;

//       if (widgetPosition < screenHeight && !_isInView) {
//         setState(() {
//           _isInView = true;
//         });
//       }
//     }
//   }

//   @override
//   void dispose() {
//     widget.scrollController.removeListener(_scrollListener);
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     final size = MediaQuery.of(context).size;
//     return Container(
//       padding: EdgeInsets.symmetric(
//         vertical: 150,
//         horizontal: size.width <= 892 ? 24 : 94,
//       ),
//       decoration: BoxDecoration(
//         color: ColorsThemeConfig.bluegray20.withOpacity(
//           0.3,
//         ),
//       ),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Text(
//             'How It Works?',
//             style: size.width <= 892
//                 ? FontstyleThemeConfig.titleBlack2
//                 : FontstyleThemeConfig.titleBlack,
//           ),
//           Text(
//             'Online banking is currently the real deal',
//             style: FontstyleThemeConfig.label3,
//           ),
//           size.width <= 892 ? 50.v : 100.v,
//           Column(
//             children: List.generate(
//               widget.offers.length,
//               (index) {
//                 String key = widget.offers.keys.elementAt(index);
//                 String value = widget.offers.values.elementAt(index);
//                 final images = widget.image[index];

//                 // Check if the index is 1 to reverse the order
//                 bool reverse = index == 1;

//                 return size.width <= 892
//                     ? Column(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         children: [
//                           _buildAnimatedImage(images, reverse),
//                           50.h,
//                           SizedBox(
//                             width: 384,
//                             child: Column(
//                               mainAxisAlignment: MainAxisAlignment.start,
//                               crossAxisAlignment: CrossAxisAlignment.start,
//                               children: [
//                                 Text(
//                                   key,
//                                   style: FontstyleThemeConfig.bold2,
//                                 ),
//                                 16.v,
//                                 Text(
//                                   value,
//                                   style: FontstyleThemeConfig.label2,
//                                 ),
//                                 25.5.v,
//                                 Row(
//                                   children: [
//                                     Text(
//                                       'Learn More',
//                                       style: FontstyleThemeConfig.labelblue,
//                                     ),
//                                     8.08.h,
//                                     SvgPicture.string(
//                                       SvgAssetsConfig.arrow,
//                                     ),
//                                   ],
//                                 ),
//                               ],
//                             ),
//                           ),
//                         ],
//                       )
//                     : Row(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         children: [
//                           if (!reverse)
//                             Flexible(
//                               child: _buildAnimatedImage(images, reverse),
//                             ),
//                           if (!reverse) 50.h,
//                           Flexible(
//                             child: SizedBox(
//                               width: 384,
//                               child: Column(
//                                 mainAxisAlignment: MainAxisAlignment.start,
//                                 crossAxisAlignment: CrossAxisAlignment.start,
//                                 children: [
//                                   Text(
//                                     key,
//                                     style: FontstyleThemeConfig.bold2,
//                                   ),
//                                   16.v,
//                                   Text(
//                                     value,
//                                     style: FontstyleThemeConfig.label2,
//                                   ),
//                                   52.v,
//                                   Row(
//                                     children: [
//                                       Text(
//                                         'Learn More',
//                                         style: FontstyleThemeConfig.labelblue,
//                                       ),
//                                       8.08.h,
//                                       SvgPicture.string(
//                                         SvgAssetsConfig.arrow,
//                                       ),
//                                     ],
//                                   ),
//                                 ],
//                               ),
//                             ),
//                           ),
//                           if (reverse) 50.h,
//                           if (reverse)
//                             Flexible(
//                               child: _buildAnimatedImage(images, reverse),
//                             ),
//                         ],
//                       );
//               },
//             ),
//           ),
//         ],
//       ),
//     );
//   }

//   Widget _buildAnimatedImage(String imageName, bool reverse) {
//     final size = MediaQuery.of(context).size;

//     return AnimatedContainer(
//       duration: Duration(milliseconds: 500),
//       curve: Curves.easeInOut,
//       transform: Matrix4.translationValues(
//         _isInView
//             ? 0.0
//             : reverse
//                 ? 300.0
//                 : -300.0, // Move the image in from the side
//         0.0,
//         0.0,
//       ),
//       child: Transform.rotate(
//         angle: reverse ? 0.0 : 0.0, // No rotation for now
//         child: Image.asset(
//           'assets/images/png/$imageName.png',
//           width: 437,
//           height: 400,
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:visibility_detector/visibility_detector.dart';

import '../../config/config.dart';

class SectionFour extends StatefulWidget {
  final Map<String, String> offers;
  final List<String> image;

  const SectionFour({
    Key? key,
    required this.offers,
    required this.image,
  }) : super(key: key);

  @override
  _SectionFourState createState() => _SectionFourState();
}

class _SectionFourState extends State<SectionFour>
    with TickerProviderStateMixin {
  late List<AnimationController> _controllers;
  late List<Animation<Offset>> _animations;

  @override
  void initState() {
    super.initState();

    _controllers = List.generate(
      widget.image.length,
      (index) => AnimationController(
        duration: const Duration(seconds: 1),
        vsync: this,
      ),
    );

    _animations = List.generate(
      widget.image.length,
      (index) {
        final beginOffset = index.isEven
            ? Offset(-1.5, 0)
            : Offset(1.5, 0); // Left to right or right to left
        return Tween<Offset>(
          begin: beginOffset,
          end: Offset.zero,
        ).animate(CurvedAnimation(
          parent: _controllers[index],
          curve: Curves.easeInOut,
        ));
      },
    );
  }

  @override
  void dispose() {
    for (final controller in _controllers) {
      controller.dispose();
    }
    super.dispose();
  }

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
        crossAxisAlignment: CrossAxisAlignment.center,
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
          SizedBox(height: size.width <= 892 ? 50 : 100),
          Column(
            children: List.generate(widget.offers.length, (index) {
              String key = widget.offers.keys.elementAt(index);
              String value = widget.offers.values.elementAt(index);
              String imageName = widget.image[index];

              bool isLeftAligned = index.isEven; // Left for even, right for odd

              return VisibilityDetector(
                key: Key('offer-$index'),
                onVisibilityChanged: (info) {
                  if (info.visibleFraction > 0.5) {
                    _controllers[index].forward();
                  }
                },
                child: size.width <= 892
                    ? Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SlideTransition(
                            position: _animations[index],
                            child: Center(
                              child: Image.asset(
                                'assets/images/png/$imageName.png',
                                width: 437,
                                height: 400,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 384,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  key,
                                  style: FontstyleThemeConfig.bold2,
                                  // style: Theme.of(context).textTheme.headline6,
                                ),
                                SizedBox(height: 16),
                                Text(
                                  value,
                                  style: FontstyleThemeConfig.label2,
                                  // style: Theme.of(context).textTheme.bodyText2,
                                ),
                                SizedBox(height: 25.5),
                                Row(
                                  children: [
                                    Text(
                                      'Learn More',
                                      style: TextStyle(color: Colors.blue),
                                    ),
                                    SizedBox(width: 8.08),
                                    Icon(Icons.arrow_forward,
                                        color: Colors.blue),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      )
                    : Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          if (isLeftAligned)
                            SlideTransition(
                              position: _animations[index],
                              child: Flexible(
                                child: Image.asset(
                                  'assets/images/png/$imageName.png',
                                  width: 437,
                                  height: 400,
                                ),
                              ),
                            ),
                          if (isLeftAligned) SizedBox(width: 50),
                          Flexible(
                            child: SizedBox(
                              width: 384,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    key,
                                    // style:
                                    //     Theme.of(context).textTheme.headline6,
                                    style: FontstyleThemeConfig.bold2,
                                  ),
                                  SizedBox(height: 16),
                                  Text(
                                    value,
                                    style: FontstyleThemeConfig.label2,
                                    // style:
                                    //     Theme.of(context).textTheme.bodyText2,
                                  ),
                                  SizedBox(height: 52),
                                  Row(
                                    children: [
                                      Text(
                                        'Learn More',
                                        style: TextStyle(color: Colors.blue),
                                      ),
                                      SizedBox(width: 8.08),
                                      Icon(Icons.arrow_forward,
                                          color: Colors.blue),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                          if (!isLeftAligned) SizedBox(width: 50),
                          if (!isLeftAligned)
                            SlideTransition(
                              position: _animations[index],
                              child: Flexible(
                                child: Image.asset(
                                  'assets/images/png/$imageName.png',
                                  width: 437,
                                  height: 400,
                                ),
                              ),
                            ),
                        ],
                      ),
              );
            }),
          ),
        ],
      ),
    );
  }
}
