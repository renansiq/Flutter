import 'package:flutter/material.dart';

widgetButton() {
    return ElevatedButton(         
      child: Text("OK"),
      style: ElevatedButton.styleFrom(primary: Colors.red,
      onPrimary: Colors.white,
      elevation: 20.0,          
      ),          
      onPressed:(){
        print('Pressionado');
      }      
    ); 
  } 