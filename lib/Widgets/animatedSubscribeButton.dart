import 'package:flutter/material.dart';

class AnimatedSubscribeButton extends StatefulWidget {
  final String initialText, finalText;
  final StyleOfButton buttonStyle;
  final IconData iconData;
  final double iconSize;
  final Duration animationDuration;

  AnimatedSubscribeButton(
    {required this.initialText,required this.finalText,required this.iconData,required this.buttonStyle,required this.animationDuration,required this.iconSize}
      );

  @override
  State<AnimatedSubscribeButton> createState() => _AnimatedSubscribeButtonState();
}

class _AnimatedSubscribeButtonState extends State<AnimatedSubscribeButton> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {

    return Material(
      elevation: widget.buttonStyle.elevation,
      child: InkWell(
        onTap: () {},
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 48, vertical: 8),
          color: widget.buttonStyle.primaryColor,
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Icon(widget.iconData, size: widget.iconSize, color: widget.buttonStyle.primaryColor,),
              Text(
                widget.initialText,
                style: widget.buttonStyle.initialTextStyle,
              )

            ],
          ),
        ),
      ),
    );
  }
}

class StyleOfButton {
  final TextStyle initialTextStyle, finalTextStyle;
  final Color primaryColor, secondaryColor;
  final double elevation;

  StyleOfButton(
      { required this.primaryColor,required this.secondaryColor,required this.initialTextStyle,required this.finalTextStyle,required this.elevation,}
      );
}

enum ButtonState {
  SHOW_ONLY_TEXT,
  SHOW_ONLY_ICON,
  SHOW_TEXT_ICON,
}