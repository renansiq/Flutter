import 'package:flutter/Material.dart';
  
  class widgetLogin extends StatefulWidget {
    const widgetLogin({ Key? key }) : super(key: key);
  
    @override
    State<widgetLogin> createState() => _widgetLoginState();
  }
  
  class _widgetLoginState extends State<widgetLogin> {
    TextStyle myStyle = TextStyle(fontFamily: 'Montserrat', fontSize: 20.0);
    InputDecoration botao = InputDecoration(contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
      border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)));                

    @override
    Widget build(BuildContext context) {
      final emailField = TextField(
        obscureText: false,     // não oculta os valores inseridos
        style: myStyle,
        decoration: botao.copyWith(hintText: "Email")                  
        );
      
      final passwordField = TextField(
        obscureText: true,      // ocultar o valor da senha
        style: myStyle,
        decoration:botao.copyWith(hintText: "Password")            
        );

      final buttonLogin = ButtonTheme(
        minWidth: MediaQuery.of(context).size.width,
        padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),                
        child: ElevatedButton(
           style: ButtonStyle(             
            foregroundColor: MaterialStateProperty.all<Color>(Colors.blue),
            overlayColor: MaterialStateProperty.resolveWith<Color?>(
              (Set<MaterialState> states) {
                if (states.contains(MaterialState.hovered))
                  return Colors.blue.withOpacity(0.04);
                if (states.contains(MaterialState.focused) ||
                    states.contains(MaterialState.pressed))
                  return Colors.blue.withOpacity(0.12);
                return null; // Defer to the widget's default.
              }
            ),            
          ),
          child: Text("Login", textAlign: TextAlign.center,            
            style: myStyle.copyWith(
              color: Colors.white,
              fontWeight: FontWeight.bold)),
          onPressed: () {print("Logado!");},                  
        ),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
      );

      return Scaffold(        
        body: Center(child: SingleChildScrollView(  //  resolve o problema de faltar espaço na tela para todos os Widgetsna hora da digitação
          child: Container(
            color: Colors.white,
            padding: EdgeInsets.all(40.0),
            child: Column(
              children: [
                SizedBox(height: 200.0, child: Image.asset("imagens/tatu1.jpg", fit: BoxFit.contain)),
                SizedBox(height: 40.0), emailField,
                SizedBox(height: 20.0), passwordField,
                SizedBox(height: 30.0), buttonLogin,
              ],
            ),
          ),
        ),)
      );
    }
  }