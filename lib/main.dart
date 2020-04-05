import 'package:flutter/material.dart';
import 'models/transaction.dart';
import 'package:app_despesas_flutter/components/transactions_user.dart';

main() => runApp(Expenses());

class Expenses extends StatelessWidget {
  const Expenses({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  } 
}

class MyHomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Despesas pessoais')
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Container(
            child: Card(
              color: Colors.blue,
              child: Text('Gráfico'),
              elevation: 5,
            ),
          ),
          TransactionsUser(), 
        ]
      )
    );
  }
}