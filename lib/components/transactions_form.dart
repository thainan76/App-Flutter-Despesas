import 'package:flutter/material.dart';

class TransactionsForm extends StatelessWidget {

  final titleController = TextEditingController();
  final valueController = TextEditingController();
  var value = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
            elevation: 5,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: <Widget>[
                  TextField(
                    controller: titleController,
                    decoration: InputDecoration(
                      labelText: 'Título',
                    ),
                  ),
                  TextField(
                    controller: valueController,
                    onChanged: (newValue) => value = newValue as int,
                    decoration: InputDecoration(
                      labelText: 'Valor (R\$)',
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      FlatButton(
                        textColor: Colors.purple,
                        onPressed: (){}, 
                        child: Text('Nova transicao')
                      ),
                    ],
                  )
                ]
              ),
            ),
          ),
    );
  }
}