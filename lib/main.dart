import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          body: ListaTransferencia(),
          appBar: AppBar(
              title: AppBar(
            title: const Text('Transferências'),
          )),
          floatingActionButton: FloatingActionButton(
            onPressed: () {},
            child: const Icon(Icons.add),
          ),
        ),
      ),
    );

class ListaTransferencia
    extends StatelessWidget //StatelessWidget é usado para coisas constantes que não mudam. StatefulWidgets são usados para coisas que mudam.
{
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ItemTransferencia(Transferencia(100, 1000)),
        ItemTransferencia(Transferencia(200, 2000)),
        ItemTransferencia(Transferencia(300, 3000)),
      ],
    );
  }
}

class ItemTransferencia extends StatelessWidget {
  final Transferencia _transferencia;

  ItemTransferencia(this._transferencia);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: const Icon(Icons.monetization_on),
        title: Text(_transferencia.valor.toString()),
        subtitle: Text(_transferencia.numeroConta.toString()),
      ),
    );
  }
}

class Transferencia {
  final double valor;
  final int numeroConta;

  Transferencia(this.valor, this.numeroConta);
}
