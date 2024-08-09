import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../config/config.dart';

class CustomButton extends StatefulWidget {
  const CustomButton({
    super.key,
    this.bgColor,
    this.textStyle,
    this.borderColor,
    required this.showOnlyOutline,
    required this.onTap,
    required this.label,
    this.image,
    required this.showImage,
    this.padding,
    this.innerPadding,
  });
  final String? image;
  final bool showImage;
  final Color? bgColor;
  final TextStyle? textStyle;
  final Color? borderColor;
  final bool showOnlyOutline;
  final EdgeInsets? padding;
  final double? innerPadding;
  final Function() onTap;
  final String label;
  @override
  _CustomButtonState createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: MouseRegion(
        cursor: SystemMouseCursors.click,
        onEnter: (_) => _onHover(
          widget.showOnlyOutline ? true : false,
        ),
        onExit: (_) => _onHover(false),
        child: AnimatedContainer(
          duration: Duration(
            milliseconds: 200,
          ),
          curve: Easing.linear,
          padding: widget.padding ??
              EdgeInsets.symmetric(
                horizontal: 17,
                vertical: 15,
              ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            border: Border.all(
              color: widget.borderColor ?? ColorsThemeConfig.msb,
            ),
            color: _isHovered
                ? (widget.borderColor ?? ColorsThemeConfig.msb)
                : (widget.showOnlyOutline
                    ? Colors.transparent
                    : widget.bgColor ?? ColorsThemeConfig.msb),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Visibility(
                visible: widget.showImage,
                child: SvgPicture.string(
                  widget.image ?? '',
                ),
              ),
              Visibility(
                visible: widget.showImage,
                child: SizedBox(
                  width: widget.innerPadding ?? 8,
                ),
              ),
              Text(
                widget.label,
                style: _isHovered
                    ? FontstyleThemeConfig.labelwhite
                    : widget.textStyle ?? FontstyleThemeConfig.labelblue2,
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _onHover(bool isHovered) {
    setState(() {
      _isHovered = isHovered;
    });
  }
}
