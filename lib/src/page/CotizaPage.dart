import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl/intl.dart';
import 'package:datetime_picker_formfield/datetime_picker_formfield.dart';
 


class CotizaPage extends StatefulWidget {
  @override
  _CotizaPageState createState() => _CotizaPageState();
}

class _CotizaPageState extends State<CotizaPage> {
   final format = DateFormat("yyyy-MM-dd");
    List<String> _droptownitems = <String>['Servicios para el hogar','boutique','Salud','Eventos'];
    var _droptownitemSelected ;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Cotiza tu servicio"),
        ),
        body: Container(
          child: ListView(
            children: <Widget>[
              Column(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.all(15),
                      child:  Container(          
                      child: SafeArea(
                        child:  Form(
                        child: Column(
                          children: <Widget>[
                            Container(
                              margin: EdgeInsets.fromLTRB(55, 0, 0, 0),
                              height: 55,
                              width: MediaQuery.of(context).size.width,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.black38,
                                  style: BorderStyle.solid
                                )
                              ),
                              child: Padding(
                                padding: EdgeInsets.only(left: 2,right: 2),
                                child: DropdownButton<String>(
                                items: _droptownitems.map((value)=>DropdownMenuItem(
                                  child: Text(value),
                                  value: value,
                                )).toList(),
                                 onChanged: (newValueSelected){
                                  setState(() {
                                    _droptownitemSelected = newValueSelected;
                                  });
                                },
                                value: this._droptownitemSelected,

                              ),
                              )
                              
                            ),
                           SizedBox(height: 10,),
                             Container(
                              child: TextFormField(
                                    style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),
                                      textAlign:TextAlign.center,
                                      decoration:  InputDecoration(
                                        icon: Icon(Icons.location_city),
                                        labelText: "Dirección del servicio",
                                        border: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(2.0)
                                        )
                                      ),
                                    ),
                            ),
                           SizedBox(height: 10,),
                            Column(
                              children: <Widget>[                             
                              DateTimeField(
                                 style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),
                                decoration:  InputDecoration(
                                        labelText: "Fecha del servicio",
                                        border: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(2.0)
                                        ),
                                        icon: Icon(FontAwesomeIcons.calendarPlus),
                                      ),
                                      
                                format: format,
                                onShowPicker: (context, currentValue) {
                                  return showDatePicker(
                                      context: context,
                                      firstDate: DateTime(1900),
                                      initialDate: currentValue ?? DateTime.now(),
                                      lastDate: DateTime(2100));
                                },
                              ),
                            ]
                            ),  
                          SizedBox(height: 25,),
                           Container(
                              child: TextFormField(
                                maxLength: 156,
                                maxLines: 5,
                                    style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),
                                      textAlign:TextAlign.center,
                                      decoration:  InputDecoration(
                                        icon: Icon(Icons.description),
                                        labelText: "Descripcion del servicio",
                                        border: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(2.0)
                                        )
                                      ),
                                    ),
                            ),
                            SizedBox(height: 25,),
                            Container(
                              height: 53,
                              width: 300,
                              decoration: BoxDecoration(
                               
                                color: Colors.blue,
                                border: Border.all(
                                  color: Colors.blue
                                ),
                                borderRadius: BorderRadius.circular(50)
                              ),
                              child: MaterialButton(
                                onPressed: null,
                                child:Text("Cotizar",style: TextStyle(color: Colors.white,fontSize: 20),),
                              )
                            ),
                          ],
                        )
                      ),
                      )
                     
                    )
                  ,
                  )
                ],
              )
            ],
          ),
        ),
      );
  }


}



class BasicTimeField extends StatelessWidget {
  final format = DateFormat("HH:mm");
  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      DateTimeField(
        format: format,
        onShowPicker: (context, currentValue) async {
          final time = await showTimePicker(
            context: context,
            initialTime: TimeOfDay.fromDateTime(currentValue ?? DateTime.now()),
          );
          return DateTimeField.convert(time);
        },
      ),
    ]);
  }
}

class BasicDateTimeField extends StatelessWidget {
  final format = DateFormat("yyyy-MM-dd HH:mm");
  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      
      DateTimeField(
        format: format,
        onShowPicker: (context, currentValue) async {
          final date = await showDatePicker(
              context: context,
              firstDate: DateTime(1900),
              initialDate: currentValue ?? DateTime.now(),
              lastDate: DateTime(2100));
          if (date != null) {
            final time = await showTimePicker(
              context: context,
              initialTime:
                  TimeOfDay.fromDateTime(currentValue ?? DateTime.now()),
            );
            return DateTimeField.combine(date, time);
          } else {
            return currentValue;
          }
        },
      ),
    ]);
  }
}