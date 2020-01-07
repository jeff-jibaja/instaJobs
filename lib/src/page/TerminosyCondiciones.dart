

import 'package:flutter/material.dart';

class TerminosyCondiciones extends StatelessWidget {
  const TerminosyCondiciones({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Términos y condiciones'),
      ),
      body: Container(
      child: _termino(),
    ),
    );
  }
}



 Widget _termino()=>Container(
   margin: EdgeInsets.all(10),
    color: Colors.white,
    child: ListView(
      children: <Widget>[
        Text("Términos y Condiciones de uso",style: TextStyle(fontSize: 24),textAlign: TextAlign. left,),
        SizedBox(height: 15,),
        Text("PARA LOS SOLICITANTES (CONTRATANTES DE SERVICIOS) Y LOS PROFESIONALES (OFERENTES DE SERVICIOS)",style: TextStyle(fontSize: 17),textAlign: TextAlign. justify,),
        SizedBox(height: 15,),
        Text("Este documento de términos de uso “Condiciones Generales” es aplicable para el uso de los servicios ofrecidos por SANTOS PONGO JUAN CARLOS y su marca instaJobs (desde ahora instaJobs para este documento), ya sea través del sitio web www.instaJobs.com, de la aplicación software para el teléfono móvil (app) o celular (además del “Website”). El solicitante y profesional certifica que acepta todos los términos establecidos por inssatJobs para acceder y requerir servicios. Si usted no está de acuerdo con los términos y condiciones del uso del sistema y las políticas de privacidad de instaJobs, no instale la aplicación, bórrenla y/o no realice ningún uso de ello ni de la página web. ",style: TextStyle(fontSize: 14),textAlign: TextAlign.justify,),
        SizedBox(height: 15,),
        Text("1. TÉRMINOS: (I) “Profesional(es)”: La persona tendrá la obligación de registrarse como profesional proveedor en la página web y aceptar su participación en el sistema de instaJobs. ",style: TextStyle(fontSize: 14),textAlign: TextAlign.justify,),
        SizedBox(height: 15,),
        Text("(Ii) “Solicitante(s)” significa cualquier persona o empresa que se registra como contratante de servicios en la página web o en la aplicación;  ",style: TextStyle(fontSize: 14),textAlign: TextAlign.justify),
        SizedBox(height: 15,),
        Text("(Iii) “Servicio(s)” significa los servicios profesionales brindado por los Profesionales (Oferentes) a los Usuarios (Contratan ",style: TextStyle(fontSize: 14),textAlign: TextAlign.justify),
        SizedBox(height: 15,),
        Text("(Iv) “Usuarios”: Profesionales y Solicitantes  ",style: TextStyle(fontSize: 14),textAlign: TextAlign.justify,),
        SizedBox(height: 15,),
        Text("2. ¿QUE ES LA APP de INSTAJOBS?   ",style: TextStyle(fontSize: 16),textAlign: TextAlign.justify,),
         SizedBox(height: 15,),
        Text("La APP de INSTAJOBS consiste en un servicio especializado con el propósito de optimizar el requerimiento de servicios Profesionales para el hogar y empresa, sin crear alguna relación laboral con el PROFESIONAL, lo cual significa que INSTAJOBS debe ser considerado sólo como un proveedor de servicios programados y agendados. Por el sistema, INSTAJOBS permite, totalmente sin recargo, que el SOLICITANTE se registre y busque que servicio requiere y envía su solicitud de cotización a los PROFESIONALES indicados más cercanos para requerir sus servicios de una manera más eficiente que los métodos actuales. El profesional registrado en INSTAJOBS, que por su significado, puede registrarse en la página web en la sección de “Profesionales”, quedando pendiente la evaluación por parte de INSTAJOBS y la entrega de la documentación necesaria para registrarse y participar en el proyecto. El PROFESIONAL va a pagar una comisión fija mensual de 5.OO (CINCO SOLES PERUANOS) por recibir las notificaciones de solicitudes de servicios de los Solicitantes durante el mes contratado y poder enviar su cotización como respuesta a las mismas, usando para realizar el pago la página web www.instajobs.com o la aplicación. ",style: TextStyle(fontSize: 16),textAlign: TextAlign.justify,)
      ],
    )
  );
