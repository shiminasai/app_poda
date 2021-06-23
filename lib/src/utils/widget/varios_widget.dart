import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../constants.dart';

void mostrarSnackbar(String mensaje, BuildContext context){
    final snackbar = SnackBar(
        content: Text(mensaje),
        duration: Duration(seconds: 2),
    );

    ScaffoldMessenger.of(context).showSnackBar(snackbar);
}

Widget botonesBottom(Widget widget){
    return BottomAppBar(
        elevation: 0,
        child: Container(
            decoration: BoxDecoration(boxShadow: [
                BoxShadow(blurRadius: 0, color: kBackgroundColor)
            ]),
            child: widget
        ),
    );
}

Widget cardDefault(Widget widget){
    return Container(
        margin: EdgeInsets.symmetric(vertical: 7, horizontal: 20),
        width: double.infinity,
        padding: EdgeInsets.all(15),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
                BoxShadow(
                    color: Color(0xFF3A5160)
                        .withOpacity(0.05),
                    offset: const Offset(1.1, 1.1),
                    blurRadius: 17.0),
                ],
        ),
        child: widget,
    );
}

Widget iconTap(String texto){
    return Column(
        children: [
            Divider(),
            Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                    Icon(Icons.touch_app, color: kRedColor, size: 18,),
                    Text(' $texto', style: TextStyle(color: kRedColor, fontSize: 12),)
                ],
            )
        ],
    );
}


Widget encabezadoCard(String titulo, String subtitulo, String dirIcon){
    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
            Flexible(
                child: Container(
                    padding: EdgeInsets.only(right: 10),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                            tituloCard(titulo),
                            subtituloCardBody(subtitulo)
                        ],
                    ),
                ),
            ),
            iconCard(dirIcon)
        ],
    );
}

Widget tituloCard(String texto){
    return texto != '' 
    ?
    Container(
        padding: EdgeInsets.symmetric(vertical: 5),
        child: Text(texto,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14, color: ktitulo),
        ),
    )
    :
    Container();
}

Widget subtituloCardBody(String texto){

    return texto != '' 
    ?
     Text(texto, 
        style: TextStyle(fontWeight: FontWeight.bold, color: kSubtitulo, fontSize: 13)
    )
    :
    Container();
    
}

Widget textoCardBody(String texto){
    return texto != '' 
    ?
    Container(
        padding: EdgeInsets.symmetric(vertical: 7),
        child: Text(texto,style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13))
    )
    :
    Container();
}

Widget iconCard(String dir){
    return dir != '' 
    ?
    Container(
        width: 50,
        child: SvgPicture.asset(dir, height:55, alignment: Alignment.topCenter),
    )
    :
    Container();
}

Widget textoListaVacio(String texto){
    return Center(
        child: Text('No hay datos: \n$texto', 
            textAlign: TextAlign.center,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        )
    );
}


