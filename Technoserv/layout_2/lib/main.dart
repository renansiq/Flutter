import 'package:flutter/material.dart';
import 'package:layout_2/quadradro.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Containers',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: minhaTela(),
    );    
  }
}

class minhaTela extends StatelessWidget {
  const minhaTela({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    Size tamanho = MediaQuery.of(context).size;

    var estilo = TextStyle(color: Colors.white, fontSize: 20.0, fontFamily: "Sans-serif", fontWeight: FontWeight.bold);
    var estilo2 = TextStyle(color: Colors.white, fontSize: 30.0, fontFamily: "times");
       
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Row(          
              children: [
                Container(                                    
                  width: tamanho.width/3,
                  height: tamanho.height/3,
                  color: Colors.red,                  
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text("Quadrado 1",                                     
                      textAlign: TextAlign.center,
                      style: estilo                    
                      ),
                      Icon(Icons.add_circle)
                    ],
                  )
                ),              
                Container(                      
                  width: tamanho.width/3,
                  height: tamanho.height/3,
                  color: Colors.yellow,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Quadrado 2",
                       style: estilo.copyWith(decoration: TextDecoration.underline,
                       wordSpacing: 1.0,
                       color: Colors.black,
                       decorationStyle: TextDecorationStyle.wavy,
                       letterSpacing: 3.0)
                      ),
                      Icon(Icons.add_alarm) 
                    ],
                  ),
                ),
                Container(
                  width: tamanho.width/3,
                  height: tamanho.height/3,
                  color: Colors.green,
                  padding: EdgeInsets.only(bottom: 15.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [      
                      Icon(Icons.add_task_rounded),                
                      Text("Quadrado 3",
                      style: estilo.copyWith(
                        fontStyle: FontStyle.italic)
                      )                      
                    ],
                  ),
                )
              ],
            ),
            Row(
              children: [
                Container(
                  width: tamanho.width/2,
                  height: tamanho.height/3,
                  color: Colors.pink,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Quadrado 4",
                       style: estilo2                
                      ),
                     /* FittedBox(child: Image.network("http://s2.glbimg.com/cYa3pKAKIPidjKyGPuAd8T4Hd1I=/e.glbimg.com/og/ed/f/original/2017/08/21/dog-2570398_960_720.jpg", fit: BoxFit.scaleDown)) */
                    ],
                  ),
                ),
                Container(                      
                  width: tamanho.width/2,
                  height: tamanho.height/3,
                  color: Colors.grey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text("Quadrado 5",
                       style: estilo2                
                      ),
                      Icon(Icons.add_to_drive) 
                    ],
                  ),
                ),             
              ],
            ),
            Row(
              children: [
                Container(                  
                  width: tamanho.width/2,
                  height: tamanho.height/3,
                  color: Colors.lime,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text("Quadrado 6",
                       style: estilo2                
                      ),              
                      SizedBox(
                        width: 800,
                        child: TextField(obscureText: false,                      
                        textAlign: TextAlign.center,
                        decoration: InputDecoration(
                          hintText: "Digite seu texto aqui",
                          hintStyle: TextStyle(color: Colors.red,
                          fontWeight: FontWeight.bold
                          ),
                          border: OutlineInputBorder(borderRadius: BorderRadius.circular(32))
                        ),
                        
                        ),
                      )     
                    ], 
                  ),
                ),
                Container(                      
                  width: tamanho.width/2,
                  height: tamanho.height/3,
                  color: Colors.purple,
                  child: Column(                    
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: 1000,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Quadrado 7",
                             style: estilo2                
                            ),
                            Icon(Icons.add_link_rounded)
                          ],
                        ),
                      ) 
                    ],
                  ),
                ),             
              ],
            ),  
          ],          
        ), 
      ),
    );    
  }
}