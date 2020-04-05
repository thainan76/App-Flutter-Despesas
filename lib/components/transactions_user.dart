import 'package:app_despesas_flutter/models/transaction.dart';
import 'package:flutter/material.dart';
import 'transactions_form.dart';
import 'transactions_list.dart';


class TransactionsUser extends StatefulWidget {
  @override
  _TransactionsUserState createState() => _TransactionsUserState();
}

class _TransactionsUserState extends State<TransactionsUser> {

  final _transactions = [
    Transaction(
      id: 't1',
      title: 'Novo tênis de corrida',
      value: 300.21,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't2',
      title: 'Nova bolsa da Lui viton',
      value: 1300.21,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't3',
      title: 'Placa de vídeo',
      value: 2300.21,
      date: DateTime.now(),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        TransactionsList(_transactions),
        TransactionsForm(),
      ],
    );
  }
}