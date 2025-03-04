import 'package:flutter/material.dart';
import 'package:flutter/services.dart'; // Necesario para SystemUiOverlayStyle

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Containers',
      debugShowCheckedModeBanner: false, // Elimina la etiqueta de "debug"
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle(
          statusBarColor: Colors
              .blue, // Cambia el color de la barra de navegación (status bar) a azul
          statusBarIconBrightness:
              Brightness.light, // Íconos claros (para fondos oscuros)
          statusBarBrightness:
              Brightness.dark, // Ajusta el brillo de la barra de navegación
        ),
        child: Scaffold(
          appBar: AppBar(
            title: Text('Cesar Reyes Vazquez N.1294'),
            centerTitle: true, // Centrar el texto en la barra de navegación
            backgroundColor:
                Colors.blue, // Color azul para la barra de navegación (AppBar)
            foregroundColor: Colors
                .white, // Color blanco para el texto de la barra de navegación
          ),
          body: Padding(
            padding:
                EdgeInsets.only(top: 50.0), // Mueve los contenedores más arriba
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment
                    .start, // Alinea los contenedores hacia arriba
                children: <Widget>[
                  // Contenedor cuadrado con esquinas redondeadas y sombreado
                  Container(
                    width: 100.0,
                    height: 100.0,
                    decoration: BoxDecoration(
                      color: Color(0xff2196f3),
                      borderRadius:
                          BorderRadius.circular(20.0), // Esquinas redondeadas
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black
                              .withOpacity(0.5), // Color del sombreado
                          spreadRadius: 5, // Extensión del sombreado
                          blurRadius: 7, // Difuminado del sombreado
                          offset: Offset(0, 3), // Desplazamiento del sombreado
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 50.0), // Espacio entre los contenedores
                  // Contenedor circular con sombreado (agrandado)
                  Container(
                    width: 150.0, // Ancho aumentado
                    height: 150.0, // Alto aumentado
                    decoration: BoxDecoration(
                      color: Color(0xff2196f3),
                      shape: BoxShape.circle, // Forma circular
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black
                              .withOpacity(0.5), // Color del sombreado
                          spreadRadius: 5, // Extensión del sombreado
                          blurRadius: 7, // Difuminado del sombreado
                          offset: Offset(0, 3), // Desplazamiento del sombreado
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          // Barra de navegación inferior personalizada con altura reducida
          bottomNavigationBar: Container(
            height: 60.0, // Altura reducida de la barra de navegación
            child: BottomAppBar(
              color: Colors.black, // Fondo negro para la barra de navegación
              child: Row(
                mainAxisAlignment: MainAxisAlignment
                    .spaceAround, // Distribuye los íconos de manera uniforme
                children: <Widget>[
                  // Flecha a la izquierda
                  IconButton(
                    icon: Icon(Icons.arrow_back,
                        color: Colors.white), // Ícono de flecha izquierda
                    onPressed: () {
                      // No hace nada
                    },
                  ),
                  // Círculo en el centro
                  IconButton(
                    icon: Icon(Icons.circle,
                        color: Colors.white), // Ícono de círculo
                    onPressed: () {
                      // No hace nada
                    },
                  ),
                  // Flecha a la derecha
                  IconButton(
                    icon: Icon(Icons.arrow_forward,
                        color: Colors.white), // Ícono de flecha derecha
                    onPressed: () {
                      // No hace nada
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
