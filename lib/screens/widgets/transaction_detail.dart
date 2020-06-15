import 'package:flutter/material.dart';
import 'package:learning_flutter/constants.dart';

class TransactionDetail extends StatelessWidget {
  final String title;
  final String amount;
  final String date;
  final int index;
  final Function handler;

  TransactionDetail({this.title, this.amount, this.date, this.index, this.handler});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            width: 60,
            alignment: Alignment.center,
            height: 60,
            decoration: kCircleBoxDecoration,
            margin: EdgeInsets.only(right: 15),
            padding: EdgeInsets.all(2),
            child: FittedBox(
              child: Text(
                '₹$amount',
                style: kTextStyle.copyWith(fontSize: 16),
              ),
            ),
          ),
          Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                  width: 180,
                  child: Text(
                    title,
                    style: kTextStyle,
                  )),
              Text('Date : $date', style: kSecTextSyle.copyWith(color: kTextSecColor), maxLines: 1),
            ],
          ),
          Spacer(),
          IconButton(
            icon: Icon(
              Icons.delete_forever,
              color: Colors.red,
            ),
            onPressed: () => handler(index),
            iconSize: 30,
          ),
        ],
      ),
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.only(bottom: 20),
      decoration: kBoxDecoration,
    );
  }
}
