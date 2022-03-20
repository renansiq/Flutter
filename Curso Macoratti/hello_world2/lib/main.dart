import 'package:flutter/material.dart';

void main() {
  runApp(
    MyApp()   // classe Myapp que recebem os Widgets para serem executados pela main (aplicação)
  );
} // main

// statelessWidget - widgets que não alteram seu estado
class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);
  
  //construtor da classe Myapp que nesse caso retorna um MaterialApp
  @override 
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Lista básica",
      theme: ThemeData(primaryColor: Colors.blue),
      home: Scaffold(
        drawer: Drawer(
          backgroundColor: Color.fromARGB(199, 255, 235, 59),
          child: drawerListView(),
        ),
        appBar: AppBar(          
          centerTitle: true,
          title: Text("Lista Básica",           
           style: TextStyle(color: Colors.black,
           fontWeight: FontWeight.bold           
           ),
          ),
        backgroundColor: Colors.red          
        ),
      body: buildListView(),
      )   // home: primeira tela que será exibida, fiz um método para colocar um Scaffold
    );
  }
}
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
          title: Text("texto"),
          subtitle: Text("meu texto"),
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