import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher_string.dart';


Widget inkwell_contact(String string){

  return InkWell(
      child: Container(
        margin: const EdgeInsets.only(top: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(string== "8210794699" ?FontAwesomeIcons.phone : FontAwesomeIcons.envelopeOpen,color: Colors.white,size: 18,),
            const VerticalDivider(width: 10,),
            Text(string,style: const TextStyle(fontSize: 18,fontWeight: FontWeight.w700,color: Colors.white),overflow: TextOverflow.ellipsis),

          ],
        ),
      ),
      onTap:() async {
          String whatsapp = "tel:8210794699";
          await launchUrlString(whatsapp, mode: LaunchMode.externalApplication);

      }
  );
}