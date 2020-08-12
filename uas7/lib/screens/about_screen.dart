import 'package:flutter/material.dart';
import 'package:uas7/components/app_bar.dart';
import 'package:uas7/components/end_drawer.dart';
import 'package:uas7/utils/colors.dart';

class AboutScreen extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: appBar(_scaffoldKey, "Sobre UAS7"),
      body: Column(
        children: [
          Padding(
            child: Text(
              "Sobre o formulário",
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 27,
              ),
            ),
            padding: EdgeInsets.only(left: 15, right: 15, top: 10),
          ),
          Padding(
              child: Text(
                "O formulário UAS7 (Escore de Atividade da Urticária - do inglês, Urticaria Activity Score) é utilizado para avaliação diária da intensidade da urticária.",
                style: TextStyle(
                  fontWeight: FontWeight.w300,
                  fontSize: 17,
                  height: 1.3
                ),
                textAlign: TextAlign.left,
              ),
              padding: EdgeInsets.only(left: 13, right: 13, top: 5)
          ),
          Padding(
              child: Text(
                "O UAS7 deve ser preenchido pelo paciente, uma vez por dia, no mesmo horário. Informando o nível de lesões na pele (urticas) e a intensidade da coceira.",
                style: TextStyle(
                  fontWeight: FontWeight.w300,
                  fontSize: 17,
                  height: 1.3
                ),
                textAlign: TextAlign.left,
              ),
              padding: EdgeInsets.only(left: 13, right: 13, top: 10)
          ),
          Padding(
            child: Text(
              "Sobre este aplicativo",
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 27,
              ),
            ),
            padding: EdgeInsets.only(left: 15, right: 15, top: 30),
          ),
          Padding(
              child: Text(
                "Este aplicativo foi desenvolvido com o objetivo de permitir que  o preenchimento do formulário UAS7 seja algo mais prático e rápido.",
                style: TextStyle(
                  fontWeight: FontWeight.w300, 
                  fontSize: 17,
                  height: 1.3
                ),
                textAlign: TextAlign.left,
              ),
              padding: EdgeInsets.only(left: 15, right: 15, top: 5)
          ),
          Padding(
              child: Text(
                "Todas as informações são armazendas no próprio dispositivo. Não há qualquer tipo de conexão com um servidor ou outros dispositivos.",
                style: TextStyle(
                  fontWeight: FontWeight.w300, 
                  fontSize: 17,
                  height: 1.3
                ),
                textAlign: TextAlign.left,
              ),
              padding: EdgeInsets.only(left: 15, right: 15, top: 10)
          ),
          Spacer(),
          Padding(
            padding: EdgeInsets.only(left: 10, right: 10, bottom: 10),
            child: Row(
              children: [
                Icon(Icons.warning, color: Colors.yellow),
                Text(
                  " Este formulário não substitui o diagnóstico de um médico!" 
                )
              ]
            )
          ),
        ],
      ),
      endDrawer: new EndDrawer(),
      backgroundColor: backgroundColor,
    );
  }
}
