import 'package:flutter/material.dart';
import '../../../constants.dart';
import '../../widgets/edit_widget.dart';

const List tableTitles = ['Room', 'Name', 'Status', ''];


class TenantTable extends StatelessWidget {
  const TenantTable({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Table(
      columnWidths: {
        0: FlexColumnWidth(2),
        1: FlexColumnWidth(5),
        2: FlexColumnWidth(2),
        3: FlexColumnWidth(0.5),
      },
      children: [
        TableRow(children: [
          ...tableTitles.map((e) => TableCell(
              child: Text(
                e,
                style: Theme.of(context)
                    .textTheme
                    .headline3
                    .copyWith(color: yellowColor, fontWeight: FontWeight.w700),
              ))),
        ]),
        ...List.generate(
            5,
                (index) => TableRow(children: [
              TableCell(
                child: Container(
                  padding: EdgeInsets.only(bottom: 13),
                  child: Text(
                    '1A',
                    style: Theme.of(context)
                        .textTheme
                        .bodyText1
                        .copyWith(color: brownColor),
                  ),
                ),
              ),
              TableCell(
                child: Text('JEDIDAH MUIGAI',
                    style: Theme.of(context)
                        .textTheme
                        .bodyText1
                        .copyWith(color: brownColor)),
              ),
              TableCell(
                child: Text('Paid',
                    style: Theme.of(context).textTheme.caption.copyWith(
                        color: brownColor, fontWeight: FontWeight.w700)),
              ),
              TableCell(
                child: Editwidget(),
              )
            ])),
      ],
    );
  }
}
