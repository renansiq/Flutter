import 'package:flutter/material.dart';

class widgetTela extends StatelessWidget {
  const widgetTela ({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.abc),
          title: Text("Testes com borda"),
          backgroundColor: Colors.green,
          centerTitle: true,                
      ),
      body: Column(        
        children: [SizedBox(height: 30,),
             Container(
                margin: EdgeInsets.only(left:50),
                width: 500,
                height: 500,                
                decoration: BoxDecoration(
                  color: Color.fromARGB(200, 76, 175, 79),
                  borderRadius: BorderRadius.circular(25),
                  border: Border.all(color: Colors.purple, width: 5),                                    
                ),
              child: Column(                
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Testes com borda",
                  textAlign: TextAlign.center,
                  style: TextStyle(                  
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 16.0,
                    )
                  ),
                ],
              ),
            ),
        ]
      ),
    );
  }
}