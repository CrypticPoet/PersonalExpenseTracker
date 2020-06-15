import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:learning_flutter/models/transaction.dart';

import './transaction_detail.dart';

class TransactionList extends StatelessWidget {
  final List<Transaction> transactions;
  final Function deleteHandler;

  TransactionList(this.transactions, this.deleteHandler);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: transactions
          .map(
            (tx) => TransactionDetail(
              title: tx.title,
              amount: tx.amount.toString(),
              date: DateFormat.yMMMEd().format(tx.date).toString(),
              index: transactions.indexOf(tx),
              handler: deleteHandler,
            ),
          )
          .toList(),
    );
  }
}
