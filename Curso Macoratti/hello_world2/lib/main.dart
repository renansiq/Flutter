import 'package:flutter/material.dart';
import 'package:hello_world2/widget_listView.dart';


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
        appBar: AppBar(          
          //centerTitle: true,
          title: Text("Lista Dinâmica",           
           style: TextStyle(color: Colors.black,
           fontWeight: FontWeight.bold           
           ),
          ),
        backgroundColor: Colors.red          
        ),
      body: builderListView(),
      )   // home: primeira tela que será exibida, fiz um método para colocar um Scaffold
    );
  }
}
builderListView() {
  final itens = List<String>.generate(1000, (i) => "item $i");   // gerador de lista de String
  return ListView.builder(
    // itemCount: itens.length,     // para cálculo do tamanho da Tamanho da lista
    //scrollDirection: Axis.horizontal,
    itemBuilder: (context, index){
      return ListTile(
        leading: Icon(Icons.arrow_right),
        title: Text('${itens[index]}'),
        onTap: (){
          debugPrint('${itens[index]} foi selecionado');
        },
      );
      /* return Container(
        margin: const EdgeInsets.symmetric(horizontal: 1.0),
        color: Colors.lightGreen,
        child: Text('$index'),
      ); */
    },
  );
}


