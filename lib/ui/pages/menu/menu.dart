import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../../../constants.dart';
import '../../widgets/menu/menu.dart';
import '../../widgets/menu/menu_button.dart';

class MenuPage extends StatelessWidget {
  MenuPage(
      {@required this.menuTextColor,
      @required this.imageString,
      @required this.userName,
      @required this.buttonText,
      @required this.buttonColor,
      @required this.iconTextWidgets,@required this.onTap});

  final Color menuTextColor;
  final String imageString;
  final String userName;
  final String buttonText;
  final Color buttonColor;
  final List<IconTextWidget> iconTextWidgets;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(32.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Wrap(
                runSpacing: 30,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Menu Page',
                        style: Theme.of(context)
                            .textTheme
                            .headline3
                            .copyWith(color: menuTextColor, height: 0),
                      ),
                      GestureDetector(
                        child: Icon(
                          Icons.close,
                          size: 24,
                        ),
                        onTap: () {
                          Navigator.pop(context);
                        },
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      GestureDetector(
                        child: CircleAvatar(
                          backgroundColor: yellowColor,
                          child: Icon(
                            Icons.arrow_back,
                            size: 16,
                            color: whiteColor,
                          ),
                          radius: 16,
                        ),
                        onTap: () {
                          Navigator.pop(context);
                        },
                      ),
                      SizedBox(
                        width: 16,
                      ),
                      Text(
                        'Home',
                        style: Theme.of(context)
                            .textTheme
                            .headline3
                            .copyWith(color: brownColor, height: 2),
                      ),
                    ],
                  ),
                  Wrap(
                    spacing: 20,
                    crossAxisAlignment: WrapCrossAlignment.center,
                    children: [
                      CircleAvatar(
                        child: Image.asset(imageString),
                        radius: 25,
                      ),
                      Text(
                        userName,
                        style: Theme.of(context)
                            .textTheme
                            .headline2
                            .copyWith(color: yellowColor),
                      ),
                    ],
                  ),
                  ...iconTextWidgets
                ],
              ),
              MenuButton(
                buttonColor: buttonColor,
                text: buttonText,
                onTap:onTap,
              ),
              BottomMenuLinks(),
              SizedBox(),
            ],
          ),
        ),
      ),
    );
  }
}
