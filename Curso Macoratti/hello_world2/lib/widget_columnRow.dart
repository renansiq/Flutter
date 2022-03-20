import 'package:flutter/material.dart';
import 'package:hello_world2/widget_elevatedButton.dart';


widgetRowColumn() {
    return Row(
      /*mainAxisSize: MainAxisSize.max, // define o tamanho do eixo princial (vertical) - Row(horizontal) 
      mainAxisSize: MainAxisSize.max, tamanho do eixo -> nesse caso máximo */
      mainAxisAlignment: MainAxisAlignment.center, // alinhamento do eixo principal
      crossAxisAlignment: CrossAxisAlignment.center, // define como os widgets filhos serão posicionados no eixo cruzado
      children: [
        widgetButton(),
        widgetButton(),
        widgetButton()
      ],
    );
  } 