import 'package:flutter/material.dart';

class ServicesPage extends StatefulWidget {
  @override
  _ServicesPageState createState() => _ServicesPageState();
}

class _ServicesPageState extends State<ServicesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text("servicios"),
        ),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        child: Container(
          child: 
            ListView(
              scrollDirection: Axis.vertical,
              children: <Widget>[
                  Row(                
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,      
                    children: <Widget>[                          
                      Container(
                        height: 50, 
                        width: MediaQuery.of(context).size.width,                
                        child:  Row(
                          children: <Widget>[
                            Column(
                              children: <Widget>[
                                  Container(                                  
                                    height: 40,
                                    width: MediaQuery.of(context).size.width-145,
                                    margin:  EdgeInsets.fromLTRB(5, 5, 5, 5),
                                    padding: EdgeInsets.fromLTRB(15, 0, 0, 10),    
                                    decoration: BoxDecoration(
                                            border: Border.all(color: Colors.black87),
                                            borderRadius: BorderRadius.circular(5.0),   
                                    ),          
                                    child: Form(
                                      child: TextFormField(
                                        decoration: InputDecoration.collapsed(hintText: "nombre de servicio"),
                                      ),
                                    ),

                                  )
                              ],
                            ), Column(
                              children: <Widget>[
                                  Container(    
                                    height: 40,
                                    width: 130,
                                    margin: EdgeInsets.fromLTRB(0,5,1,0),
                                    color: Colors.amber,                
                                    child: MaterialButton(
                                      color: Colors.amber,
                                      onPressed: null ,
                                      elevation: 0.0,
                                      hoverElevation: 0.0,
                                      child: Text("Buscar Servicio"),
                                    ),
                                  )
                              ],
                            )
                          ],
                        ),
                        
                      )
                    ],
                  ),
                  Row(                
                    mainAxisAlignment: MainAxisAlignment.center,      
                    children: <Widget>[                          
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 20.0),
                        height: 200,  
                        width: MediaQuery.of(context).size.width,                
                        child:  ListView(
                          scrollDirection: Axis.horizontal,
                          children: <Widget>[
                            Container(
                              width: 200,
                              decoration: BoxDecoration( 
                                color: Colors.white,
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey,
                                        blurRadius: 1.0,  // has the effect of softening the shadow
                                        spreadRadius: 0.0, // has the effect of extending the shadow
                                        offset: Offset(
                                          1.0, // horizontal, move right 10
                                          3.0, // vertical, move down 10
                                        ),
                                      )
                                    ]                                     
                              ),
                              child: 
                                Container(
                                  decoration: BoxDecoration(
                                   image: DecorationImage(
                                      image: AssetImage("assets/img/plomero.jpg"),
                                      fit: BoxFit.fill
                                    ),
                                  ),
                                  child:Center(child: Stack(
                                    children: <Widget>[
                                      MaterialButton(
                                        onPressed: null,                                        
                                        child: Container(
                                          width: 200,
                                          height: 50,
                                          color: Color.fromRGBO(10, 15, 20, 0.25),
                                          child: Center(
                                            child: Text("Plomero",style: TextStyle(fontFamily: 'SansSerif',fontSize: 25,color: Colors.white),),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                ),
                             
                              
                            ),              
                            Container(
                              decoration: BoxDecoration( 
                                color: Colors.white,
                                    boxShadow: [
                                      BoxShadow(
                                         color: Colors.grey,
                                        blurRadius: 1.0, // has the effect of softening the shadow
                                        spreadRadius: 0.0, // has the effect of extending the shadow
                                        offset: Offset(
                                          1.0, // horizontal, move right 10
                                          3.0, // vertical, move down 10
                                        ),
                                      )
                                    ]                                     
                                      ),                   
                              width: 200,
                              child: Container(
                                  decoration: BoxDecoration(
                                   image: DecorationImage(
                                      image: AssetImage("assets/img/electricista.jpg"),
                                      fit: BoxFit.fill
                                    ),
                                  ),
                                  child:Center(child: Stack(
                                    children: <Widget>[
                                      MaterialButton(
                                        onPressed: null,                                        
                                        child: Container(
                                          width: 200,
                                          height: 50,
                                          color: Color.fromRGBO(10, 15, 20, 0.25),
                                          child: Center(
                                            child: Text("Electricista",style: TextStyle(fontFamily: 'SansSerif',fontSize: 25,color: Colors.white),),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                ),
                            ),
                            Container(
                             decoration: BoxDecoration( 
                                color: Colors.white,
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey,
                                        blurRadius: 1.0, // has the effect of softening the shadow
                                        spreadRadius: 0.0, // has the effect of extending the shadow
                                        offset: Offset(
                                          1.0, // horizontal, move right 10
                                          3.0, // vertical, move down 10
                                        ),
                                      )
                                    ]                                     
                                      ) ,                    
                              width: 200,
                              child: Container(
                                  decoration: BoxDecoration(
                                   image: DecorationImage(
                                      image: AssetImage("assets/img/jardinero.jpg"),
                                      fit: BoxFit.fill
                                    ),
                                  ),
                                  child:Center(child: Stack(
                                    children: <Widget>[
                                      MaterialButton(
                                        onPressed: null,                                        
                                        child: Container(
                                          width: 200,
                                          height: 50,
                                          color: Color.fromRGBO(10, 15, 20, 0.25),
                                          child: Center(
                                            child: Text("Jardinero",style: TextStyle(fontFamily: 'SansSerif',fontSize: 25,color: Colors.white),),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                ),
                            )
                          ],
                        )
                      )
                    ],
                    ),  
                  Row(                
                  mainAxisAlignment: MainAxisAlignment.center,      
                  children: <Widget>[                          
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 20.0),
                        height: 200,  
                        width: MediaQuery.of(context).size.width,  
                        color: Colors.yellow,               
                        child:  ListView(
                          scrollDirection: Axis.horizontal,
                          children: <Widget>[
                            Container(
                              decoration: BoxDecoration( 
                                color: Colors.white,
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey,
                                        blurRadius: 1.0,  // has the effect of softening the shadow
                                        spreadRadius: 0.0, // has the effect of extending the shadow
                                        offset: Offset(
                                          1.0, // horizontal, move right 10
                                          3.0, // vertical, move down 10
                                        ),
                                      )
                                    ]                                     
                              ),                     
                              width: 200,
                              child: Container(
                                  decoration: BoxDecoration(
                                   image: DecorationImage(
                                      image: AssetImage("assets/img/medico.jpg"),
                                      fit: BoxFit.fill
                                    ),
                                  ),
                                  child:Center(child: Stack(
                                    children: <Widget>[
                                      MaterialButton(
                                        onPressed: null,                                        
                                        child: Container(
                                          width: 200,
                                          height: 50,
                                          color: Color.fromRGBO(10, 15, 20, 0.25),
                                          child: Center(
                                            child: Text("medico",style: TextStyle(fontFamily: 'SansSerif',fontSize: 25,color: Colors.white),),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                ),
                            ),
                            Container(
                              decoration: BoxDecoration( 
                                color: Colors.white,
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey,
                                        blurRadius: 1.0,  // has the effect of softening the shadow
                                        spreadRadius: 0.0, // has the effect of extending the shadow
                                        offset: Offset(
                                          1.0, // horizontal, move right 10
                                          3.0, // vertical, move down 10
                                        ),
                                      )
                                    ]                                     
                              ),                     
                              width: 200,
                              child: Container(
                                  decoration: BoxDecoration(
                                   image: DecorationImage(
                                      image: AssetImage("assets/img/enfermera.jpg"),
                                      fit: BoxFit.fill
                                    ),
                                  ),
                                  child:Center(child: Stack(
                                    children: <Widget>[
                                      MaterialButton(
                                        onPressed: null,                                        
                                        child: Container(
                                          width: 200,
                                          height: 50,
                                          color: Color.fromRGBO(10, 15, 20, 0.25),
                                          child: Center(
                                            child: Text("Enfermera",style: TextStyle(fontFamily: 'SansSerif',fontSize: 25,color: Colors.white),),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                ),
                            ),
                            Container(
                              decoration: BoxDecoration( 
                                color: Colors.white,
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey,
                                        blurRadius: 1.0,  // has the effect of softening the shadow
                                        spreadRadius: 0.0, // has the effect of extending the shadow
                                        offset: Offset(
                                          1.0, // horizontal, move right 10
                                          3.0, // vertical, move down 10
                                        ),
                                      )
                                    ]                                     
                              ),                     
                              width: 200,
                              child: Container(
                                  decoration: BoxDecoration(
                                   image: DecorationImage(
                                      image: AssetImage("assets/img/dj.jpg"),
                                      fit: BoxFit.fill
                                    ),
                                  ),
                                  child:Center(child: Stack(
                                    children: <Widget>[
                                      MaterialButton(
                                        onPressed: null,                                        
                                        child: Container(
                                          width: 200,
                                          height: 50,
                                          color: Color.fromRGBO(10, 15, 20, 0.25),
                                          child: Center(
                                            child: Text("dj",style: TextStyle(fontFamily: 'SansSerif',fontSize: 25,color: Colors.white),),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                ),
                            )
                          ],
                        )
                      )
                  ],
                  ),
                  Row(                
                  mainAxisAlignment: MainAxisAlignment.center,      
                  children: <Widget>[                          
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 20.0),
                      height: 200,  
                      width: MediaQuery.of(context).size.width,  
                      color: Colors.yellow,               
                      child:  ListView(
                        scrollDirection: Axis.horizontal,
                        children: <Widget>[
                          Container(
                                  decoration: BoxDecoration( 
                                    color: Colors.white,
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.grey,
                                            blurRadius: 1.0,  // has the effect of softening the shadow
                                            spreadRadius: 0.0, // has the effect of extending the shadow
                                            offset: Offset(
                                              1.0, // horizontal, move right 10
                                              3.0, // vertical, move down 10
                                            ),
                                          )
                                        ]                                     
                                  ),                     
                                  width: 200,
                                  child: Container(
                                      decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage("assets/img/dj.jpg"),
                                          fit: BoxFit.fill
                                        ),
                                      ),
                                      child:Center(child: Stack(
                                        children: <Widget>[
                                          MaterialButton(
                                            onPressed: null,                                        
                                            child: Container(
                                              width: 200,
                                              height: 50,
                                              color: Color.fromRGBO(10, 15, 20, 0.25),
                                              child: Center(
                                                child: Text("Dj",style: TextStyle(fontFamily: 'SansSerif',fontSize: 25,color: Colors.white),),
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                    ),
                                ),
                          Container(
                                  decoration: BoxDecoration( 
                                    color: Colors.white,
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.grey,
                                            blurRadius: 1.0,  // has the effect of softening the shadow
                                            spreadRadius: 0.0, // has the effect of extending the shadow
                                            offset: Offset(
                                              1.0, // horizontal, move right 10
                                              3.0, // vertical, move down 10
                                            ),
                                          )
                                        ]                                     
                                  ),                     
                                  width: 200,
                                  child: Container(
                                      decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage("assets/img/animador.jpg"),
                                          fit: BoxFit.fill
                                        ),
                                      ),
                                      child:Center(child: Stack(
                                        children: <Widget>[
                                          MaterialButton(
                                            onPressed: null,                                        
                                            child: Container(
                                              width: 200,
                                              height: 50,
                                              color: Color.fromRGBO(10, 15, 20, 0.25),
                                              child: Center(
                                                child: Text("Animador",style: TextStyle(fontFamily: 'SansSerif',fontSize: 25,color: Colors.white),),
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                    ),
                                ),
                          Container(
                                  decoration: BoxDecoration( 
                                    color: Colors.white,
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.grey,
                                            blurRadius: 1.0,  // has the effect of softening the shadow
                                            spreadRadius: 0.0, // has the effect of extending the shadow
                                            offset: Offset(
                                              1.0, // horizontal, move right 10
                                              3.0, // vertical, move down 10
                                            ),
                                          )
                                        ]                                     
                                  ),                     
                                  width: 200,
                                  child: Container(
                                      decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage("assets/img/orquesta.jpg"),
                                          fit: BoxFit.fill
                                        ),
                                      ),
                                      child:Center(child: Stack(
                                        children: <Widget>[
                                          MaterialButton(
                                            onPressed: null,                                        
                                            child: Container(
                                              width: 200,
                                              height: 50,
                                              color: Color.fromRGBO(10, 15, 20, 0.25),
                                              child: Center(
                                                child: Text("Orquesta",style: TextStyle(fontFamily: 'SansSerif',fontSize: 25,color: Colors.white),),
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                    ),
                                )
                        ],
                      )
                    )
                  ],
                  ),
                  Row(                
              mainAxisAlignment: MainAxisAlignment.center,      
              children: <Widget>[                          
                 Container(
                   margin: EdgeInsets.symmetric(vertical: 20.0),
                   height: 200,  
                   width: MediaQuery.of(context).size.width,  
                   color: Colors.yellow,               
                   child:  ListView(
                     scrollDirection: Axis.horizontal,
                     children: <Widget>[
                       Container(
                              decoration: BoxDecoration( 
                                color: Colors.white,
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey,
                                        blurRadius: 1.0,  // has the effect of softening the shadow
                                        spreadRadius: 0.0, // has the effect of extending the shadow
                                        offset: Offset(
                                          1.0, // horizontal, move right 10
                                          3.0, // vertical, move down 10
                                        ),
                                      )
                                    ]                                     
                              ),                     
                              width: 200,
                              child: Container(
                                  decoration: BoxDecoration(
                                   image: DecorationImage(
                                      image: AssetImage("assets/img/cosmetologa.jpg"),
                                      fit: BoxFit.fill
                                    ),
                                  ),
                                  child:Center(child: Stack(
                                    children: <Widget>[
                                      MaterialButton(
                                        onPressed: null,                                        
                                        child: Container(
                                          width: 200,
                                          height: 50,
                                          color: Color.fromRGBO(10, 15, 20, 0.25),
                                          child: Center(
                                            child: Text("Cosmetologa",style: TextStyle(fontFamily: 'SansSerif',fontSize: 25,color: Colors.white),),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                ),
                            ),
                       Container(
                              decoration: BoxDecoration( 
                                color: Colors.white,
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey,
                                        blurRadius: 1.0,  // has the effect of softening the shadow
                                        spreadRadius: 0.0, // has the effect of extending the shadow
                                        offset: Offset(
                                          1.0, // horizontal, move right 10
                                          3.0, // vertical, move down 10
                                        ),
                                      )
                                    ]                                     
                              ),                     
                              width: 200,
                              child: Container(
                                  decoration: BoxDecoration(
                                   image: DecorationImage(
                                      image: AssetImage("assets/img/perfumeria.jpg"),
                                      fit: BoxFit.fill
                                    ),
                                  ),
                                  child:Center(child: Stack(
                                    children: <Widget>[
                                      MaterialButton(
                                        onPressed: null,                                        
                                        child: Container(
                                          width: 200,
                                          height: 50,
                                          color: Color.fromRGBO(10, 15, 20, 0.25),
                                          child: Center(
                                            child: Text("Perfumeria",style: TextStyle(fontFamily: 'SansSerif',fontSize: 25,color: Colors.white),),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                ),
                            ),
                       Container(
                              decoration: BoxDecoration( 
                                color: Colors.white,
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey,
                                        blurRadius: 1.0,  // has the effect of softening the shadow
                                        spreadRadius: 0.0, // has the effect of extending the shadow
                                        offset: Offset(
                                          1.0, // horizontal, move right 10
                                          3.0, // vertical, move down 10
                                        ),
                                      )
                                    ]                                     
                              ),                     
                              width: 200,
                              child: Container(
                                  decoration: BoxDecoration(
                                   image: DecorationImage(
                                      image: AssetImage("assets/img/otros.png"),
                                      fit: BoxFit.fill
                                    ),
                                  ),
                                  child:Center(child: Stack(
                                    children: <Widget>[
                                      MaterialButton(
                                        onPressed: null,                                        
                                        child: Container(
                                          width: 200,
                                          height: 50,
                                          color: Color.fromRGBO(10, 15, 20, 0.25),
                                          child: Center(
                                            child: Text("Otros",style: TextStyle(fontFamily: 'SansSerif',fontSize: 25,color: Colors.white),),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                ),
                            )
                     ],
                   )
                 )
              ],
              ),
            
              ],
            )
          
       ),
    
      )
      
    );
    }
}