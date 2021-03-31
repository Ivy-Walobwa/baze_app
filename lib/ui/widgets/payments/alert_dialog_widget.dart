import 'package:flutter/material.dart';
import '../custom_button.dart';

class AlertDialogWidget extends StatelessWidget {
  const AlertDialogWidget(
      {@required this.cancelText,
      @required this.dialogText,
      @required this.proceedText,
      this.cancelTextColor,
      this.proceedTextColor,
      this.cancelButtonBorderColor,
      this.proceedButtonBorderColor,
      this.cancelButtonColor,
      this.proceedButtonColor});

  final InlineSpan dialogText;
  final String cancelText;
  final String proceedText;
  final Color cancelTextColor;
  final Color proceedTextColor;
  final Color cancelButtonBorderColor;
  final Color proceedButtonBorderColor;
  final Color cancelButtonColor;
  final Color proceedButtonColor;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            RichText(
              textAlign: TextAlign.center,
              // TODO: fetch text for dialog from input fields
              text: dialogText,
            ),
            SizedBox(
              height: 27,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomButton(
                  borderColor: cancelButtonBorderColor,
                  text: cancelText,
                  textColor: cancelTextColor,
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                CustomButton(
                  text: proceedText,
                  onTap: () {
                    // TODO: Implement changia msee
                    Navigator.pop(context);
                  },
                  buttonColor: proceedButtonColor,
                  textColor: proceedTextColor,
                  borderColor: proceedButtonBorderColor,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
