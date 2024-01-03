import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:my_wallet_app/helper/data.dart';
import 'package:my_wallet_app/widgets/piechart.dart';

class ExpensesSection extends StatelessWidget {
  const ExpensesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
            margin: EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              'Expenses',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            )),
        Row(
          children: [
            Expanded(
                flex: 5,
                child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 20, vertical: 40),
                    child: Column(
                      children: expenses
                          .map((value) => Padding(
                                padding: EdgeInsets.all(2.0),
                                child: Row(
                                  children: [
                                    CircleAvatar(
                                      radius: 5,
                                      backgroundColor:
                                          pieColors[expenses.indexOf(value)],
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      value['name'],
                                      style: TextStyle(fontSize: 18),
                                    )
                                  ],
                                ),
                              ))
                          .toList(),
                    ))),
            Expanded(flex: 5, child: PieChart()),
          ],
        ),
      ],
    );
  }
}
