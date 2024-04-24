import 'package:flutter/material.dart';

import 'contato.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: ListaPage(),
    );
  }
}


class ListaPage extends StatelessWidget {
   ListaPage({super.key});

 List<Contato> contatos = [
  Contato("Nome Sobrenome", "nomeemail@email.com"),
  Contato("Nome Sobrenome", "nomeemail@email.com"),
  Contato("Nome Sobrenome", "nomeemail@email.com"),
  Contato("Nome Sobrenome", "nomeemail@email.com"),
  Contato("Nome Sobrenome", "nomeemail@email.com"),
  Contato("Nome Sobrenome", "nomeemail@email.com"),
  Contato("Nome Sobrenome", "nomeemail@email.com"),
  Contato("Nome Sobrenome", "nomeemail@email.com"),
  Contato("Nome Sobrenome", "nomeemail@email.com"),
  Contato("Nome Sobrenome", "nomeemail@email.com"),
  Contato("Nome Sobrenome", "nomeemail@email.com"),
  Contato("Nome Sobrenome", "nomeemail@email.com"),
 
  ];
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('ListView Builder')),
      body: ListView.builder(
        itemCount: 11,
        itemBuilder: (BuildContext contexto, int index){ //retorna widget ou nulo, pois é o q forma a tela/"atualiza"
          return ListTile(leading: CircleAvatar(), title: Text(contatos[index].nome), subtitle: Text(contatos[index].email));
        },
      ),
    );
  }
}