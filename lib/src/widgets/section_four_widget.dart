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
