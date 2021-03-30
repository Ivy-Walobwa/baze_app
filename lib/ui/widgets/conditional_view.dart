import 'package:flutter/material.dart';
import '../../constants.dart';

class ConditionalView extends StatefulWidget {
  const ConditionalView(
      {@required this.text, @required this.conditionalWidget, @required this.iconColor});

  final String text;
  final Widget conditionalWidget;
  final Color iconColor;

  @override
  _ConditionalViewState createState() => _ConditionalViewState();
}

class _ConditionalViewState extends State<ConditionalView> {
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
                style: Theme.of(context)
                    .textTheme
                    .headline2
                    .copyWith(color: yellowColor),
              ),
              GestureDetector(
                  onTap: () {
                    setState(() {
                      open = !open;
                    });
                  },
                  child: Icon(
                    open ? Icons.keyboard_arrow_down : Icons.keyboard_arrow_up,
                    color: widget.iconColor,
                  ))
            ],
          ),
          Visibility(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 17),
              child: widget.conditionalWidget,
            ),
            visible: open,
          )
        ],
      ),
    );
  }
}
