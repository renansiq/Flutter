import 'package:flutter/material.dart';

  buildListView() {
    return ListView(
      children:[
        ListTile(
          leading: Icon(Icons.add_location),
          title: Text("texto"),
          subtitle: Text("meu texto"),
          trailing: Icon(Icons.add_shopping_cart),
          selected: true,       // Destacar (selecionado)
          onTap: (){
            print("ok");
          } ,
        ),

        ListTile(
          leading: Icon(Icons.add_to_photos),
          title: Text("texto 2"),
          subtitle: Text("meu texto 2"),
          trailing: Icon(Icons.add_box),
          enabled: true,   // indica como opção/botão desativado
          onLongPress: (){
            print("");
          },
        ),

        Padding(
          padding: const EdgeInsets.only(top: 30.0),
          child: Text("Texto de Exemplo",
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 25.0),
          ),
        ),

        Padding(
          padding: const EdgeInsets.only(top: 10.0),
          child: Container(            
            color: Colors.green,
            height: 20.0,          
          ),
        )
      ],
    );
  }

  drawerListView() {
    return ListView(
      children:[
        ListTile(
          leading: Icon(Icons.add_location),
          title: Text("texto"),
          subtitle: Text("meu texto"),
          trailing: Icon(Icons.add_shopping_cart),
          selected: true,       // Destacar (selecionado)
          onTap: (){
            print("ok");
          },
        ),

        ListTile(
          leading: Icon(Icons.add_a_photo),
          title: Text("texto"),
          subtitle: Text("meu texto"),
          trailing: Icon(Icons.add_box),
          enabled: true,   // indica como opção/botão desativado
          onLongPress: (){
            print("");
          },
        )
      ]
    );
  }

