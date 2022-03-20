  import 'package:flutter/material.dart';
  
  /*Image.network("http://s2.glbimg.com/cYa3pKAKIPidjKyGPuAd8T4Hd1I=/e.glbimg.com/og/ed/f/original/2017/08/21/dog-2570398_960_720.jpg") - exibe imagens da internet
    Image.asset("imagens/tatu1.png",
      fit: BoxFit.fill, ) - Exibe imagens locais
  */
  widgetImage() {
    return SizedBox.expand(  // SizedBox.expand(cria uma caixa que aceita filhos e podem ser expandidas(preenchidas) do mesmo tamanho dessas SizedBox)
      child: Image.asset("imagens/tatu1.jpg",
      fit: BoxFit.contain,    // boxFit. contain -> ajusta a tela, cover - ajusta mas ele pode cortar a tela, fill - preenche(estica) a imagem       
      )
    );
  } 