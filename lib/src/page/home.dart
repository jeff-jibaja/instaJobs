
import 'package:app_avi/src/page/CotizaPage.dart';
import 'package:app_avi/src/page/TerminosyCondiciones.dart';
import 'package:app_avi/src/page/login.dart';
import 'package:app_avi/src/page/service.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';



class HomePage extends StatelessWidget {

@override
  Widget build(BuildContext context) {
   final tamanoHorizontalOpcion =  MediaQuery.of(context).size.width;
  
    return Scaffold(      
      body:  
              Container(
                height: MediaQuery.of(context).size.height,
               
                child: Stack(
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        _panelbanner(context),
                        _panelOpciones(context,tamanoHorizontalOpcion)
                      ],
                    
                    ),
                    
                  ],
                ),
           ),
    );

}

Widget _panelOpciones(context,tamanoHorizontalOpcion) => Container(
    child: Stack(
     children: <Widget>[
      Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Column(
                children: <Widget>[
                   opcionMenuHome(context,tamanoHorizontalOpcion,"Busca Servicios",Icon(FontAwesomeIcons.search,size: 40),'service')

                ],
                 
              ),
              Column(
                children: <Widget>[
                   opcionMenuHome(context,tamanoHorizontalOpcion,"Cotiza tu servicio",Icon(FontAwesomeIcons.businessTime,size: 40),'cotiza')
                ],
              ),
            ],
          ),
          Row(
            children: <Widget>[
              Column(
                children: <Widget>[
                   opcionMenuHome(context,tamanoHorizontalOpcion,"Términos y condiciones",Icon(FontAwesomeIcons.readme,size: 40),'terminos')
                ],
              ),
              Column(
                children: <Widget>[
                   opcionMenuHome(context,tamanoHorizontalOpcion,"INICIAR SESION",Icon(Icons.perm_identity,size: 40),'login')
                ],
              ),
            ],
          )
        ],
      )
     ],
    ),
    height: 200.0,
    decoration: BoxDecoration(
      color: Colors.white,
      boxShadow: [
         BoxShadow(
          color: Colors.grey,
          offset: new Offset(0.0, 2.0), 
          blurRadius: 5.0,
          spreadRadius: 1.0          
        )
     ]
        
     
    ),               
                   
  );
 
Widget _panelbanner(context) => Container(
    height: 280.0, 
    width:  MediaQuery.of(context).size.width,
    padding: EdgeInsets.only(
      top: 50,
      bottom: 0
    ),
    decoration : BoxDecoration(
         image: DecorationImage(
            image: AssetImage("assets/img/banner.png"),
            fit: BoxFit.fill
          ),
    
   )

  );
  
Widget opcionMenuHome(context,tamanoHorizontalOpcion,String texto,Icon icon,String nombre)=> Container(
    

    
    
    height: 100,    
    width: tamanoHorizontalOpcion/2,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
       children: <Widget>[            
         Row(                
           mainAxisAlignment: MainAxisAlignment.center,      
           children: <Widget>[                          
              icon
           ],
          ),
         Row(
            mainAxisAlignment: MainAxisAlignment.center,      
            children: <Widget>[             
               RaisedButton(  
                 color: Colors.white,
                 materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                 elevation: 0.0,
                 onPressed: (){
                   Navigator.push(
                     context,
                     ruta(nombre)
                     
                  );
                 },
                 child: Text(texto,
                          style: TextStyle(fontSize: 12),
                        ),
               )
                                 
           ],
          )
       ],
       ),
    
   
    
    
  );


}


MaterialPageRoute ruta(String nombre){
     return  MaterialPageRoute(
       builder:(context)=>route(nombre));
}

Widget route(String nombre){
Widget page;

    switch (nombre) {
      case 'terminos':
       page =  TerminosyCondiciones();
        break;
      case 'service':
       page =  ServicesPage();
        break;
      case 'cotiza':
      page = CotizaPage();
      break;
      case 'login':
        page = LoginPage();
        break;  
    }

    return page;
}