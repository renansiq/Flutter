import 'package:flutter/material.dart';

class widgetCorPreferida extends StatefulWidget {
  const widgetCorPreferida({ Key? key }) : super(key: key);

  @override
  State<widgetCorPreferida> createState() => _widgetCorPreferidaState();
}

class _widgetCorPreferidaState extends State<widgetCorPreferida> {
  String nomeCor="";

  @override
  Widget build(BuildContext context) {
    debugPrint("### Widget foi criado");
    return Scaffold(
      appBar: AppBar(
        title: Text("StatefulWidet")        
      ),
      body: Container(
        margin: EdgeInsets.all(20),  // margem de 20 para ficar mais alinhado
        //color: Colors.yellow,
        child: Column(          
          children: [
            TextField(
             onSubmitted: (String texto){   // quando usuário terminar de digitar vai ser preciso dar ENTER
             
               setState(() {        // setState é usado para notificar o framework que o estado interno de um objeto foi alterado.
                 debugPrint("### setState foi chamado -> redesenhar o Widget");
                 nomeCor = texto;
               });            
             },
            ),
            Padding(      // espaçamento/distância do TextField para o Text
              padding: const EdgeInsets.all(16.0),
              child: Text("A sua cor preferida é : $nomeCor ",
              style: TextStyle(fontSize: 20.0),
              ),
            ),            
          ],          
        ),
      )
    );
  }
}