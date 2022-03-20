import 'package:flutter/material.dart';


meuContainer2(){
  return Container(
    child: AspectRatio(aspectRatio: 1.0,
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              color: Colors.yellow
            ) ,
          ),
          Expanded(
            flex: 1,
            child: Container(
              color: Colors.green
            ),            
          ),
        ],
      ),
    ),    
  );
}

meuContainer3(){
  return Container(
    child: AspectRatio(aspectRatio: 1.0,
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              color: Colors.cyan
            ) ,
          ),
          Expanded(
            flex: 1,
            child: Container(
              color: Colors.brown
            ),            
          ),
        ],
      ),
    ),    
  );
}

meuContainer4(){
  return Table(children: [
    TableRow(children: [
      Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            alignment: Alignment.center,
            color: Colors.blue,
            child: Text('Widget 1'),
          ),
          Container(
            alignment: Alignment.center,
            color: Colors.green,
            child: Text('Widget 2'),
          ),
        ],
      ),
      TableCell(
          verticalAlignment: TableCellVerticalAlignment.fill,
          child: Container(
            alignment: Alignment.center,
            color: Colors.orange,
            child: Text('Widget 3'),
          )),
    ]),
  ]);
}