import 'package:flutter/material.dart';
import '../../constants.dart';

class ConditionalViewWithTwoIcons extends StatefulWidget {
  const ConditionalViewWithTwoIcons(
      {@required this.text, @required this.conditionalWidget, this.textStyle, @required this.iconWidget, @required this.widgetColor});

  final String text;
  final Widget conditionalWidget;
  final TextStyle textStyle;
  final Widget iconWidget;
  final Color widgetColor;

  @override
  _ConditionalViewWithTwoIconsState createState() =>
      _ConditionalViewWithTwoIconsState();
}

class _ConditionalViewWithTwoIconsState extends State<ConditionalViewWithTwoIcons> {
  bool open = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 17),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                widget.text,
                style: widget.textStyle == null
                    ? Theme.of(context)
                        .textTheme
                        .headline2
                        .copyWith(color: yellowColor)
                    : widget.textStyle,
              ),
              Row(
                children: [
                  widget.iconWidget,
                  SizedBox(
                    width: 25,
                  ),
                  GestureDetector(
                      onTap: () {
                        setState(() {
                          open = !open;
                        });
                      },
                      child: Icon(
                        open
                            ? Icons.keyboard_arrow_down
                            : Icons.keyboard_arrow_up,
                        color: widget.widgetColor,
                      )),
                ],
              )
            ],
          ),
          Visibility(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 9),
              child: widget.conditionalWidget,
            ),
            visible: open,
          )
        ],
      ),
    );
  }
}
