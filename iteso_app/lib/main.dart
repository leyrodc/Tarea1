import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: IconColorChangeDemo(),
    );
  }
}

class IconColorChangeDemo extends StatefulWidget {
  @override
  _IconColorChangeDemoState createState() => _IconColorChangeDemoState();
}

class _IconColorChangeDemoState extends State<IconColorChangeDemo> {
  Color iconColor = Colors.black; // Color inicial de los iconos
  int contador = 0; // Contador inicial

  void _showSnackBar(String message, BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text(message),
      duration: Duration(seconds: 2),
      action: SnackBarAction(
        label: "Cerrar",
        onPressed: () {
          ScaffoldMessenger.of(context).removeCurrentSnackBar();
        },
      ),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('App ITESO'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Image.network(
                "https://cruce.iteso.mx/wp-content/uploads/sites/123/2018/04/Portada-2-e1525031912445.jpg"),
            ListTile(
              title: Text("El ITESO universidad Jesuita"),
              subtitle: Text("San Pedro Tlaquepaque, JAL"),
              trailing: Row(
                mainAxisSize: MainAxisSize.min, // Alinea elementos en el eje principal
                children: [
                  IconButton(
                    onPressed: () {
                      setState(() {
                        
                        iconColor = Colors.indigo; // Cambia el color del icono
                        contador++; // Incrementa el contador
                      });
                      // Restaura el color original después de 2 segundos
                      Future.delayed(Duration(seconds: 2), () {
                        setState(() {
                          iconColor = Colors.black;
                        });
                      });
                    },
                    icon: Icon(Icons.thumb_up_alt_sharp, color: iconColor),
                  ),
                  Text("Contador: $contador"),
                ],
              ),
            ),
            SizedBox(
              height: 34,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    IconButton(
                      onPressed: () {
                        setState(() {
                          _showSnackBar("Hola desde el correo", context);
                          iconColor = Colors.indigo; // Cambia el color del icono
                        });
                        // Restaura el color original después de 2 segundos
                        Future.delayed(Duration(seconds: 2), () {
                          setState(() {
                            iconColor = Colors.black;
                          });
                        });
                      },
                      icon: Icon(Icons.message, color: iconColor),
                      iconSize: 48,
                    ),
                    Text("Correo"),
                  ],
                ),
                Column(
                  children: [
                    IconButton(
                      onPressed: () {
                        setState(() {
                          _showSnackBar("Realizar llamada", context);
                          iconColor = Colors.indigo; // Cambia el color del icono
                        });
                        // Restaura el color original después de 2 segundos
                        Future.delayed(Duration(seconds: 2), () {
                          setState(() {
                            iconColor = Colors.black;
                          });
                        });
                      },
                      icon: Icon(Icons.phone, color: iconColor),
                      iconSize: 48,
                    ),
                    Text("Llamada"),
                  ],
                ),
                Column(
                  children: [
                    IconButton(
                      onPressed: () {
                        setState(() {
                          _showSnackBar("Obtener ruta", context);
                          iconColor = Colors.indigo; // Cambia el color del icono
                        });
                        // Restaura el color original después de 2 segundos
                        Future.delayed(Duration(seconds: 2), () {
                          setState(() {
                            iconColor = Colors.black;
                          });
                        });
                      },
                      icon: Icon(Icons.route, color: iconColor),
                      iconSize: 48,
                    ),
                    Text("Ruta"),
                  ],
                ),
              ],
            ),
            SizedBox(height: 64),
            Text(
              "El ITESO, Universidad Jesuita de Guadalajara (Instituto Tecnológico y de Estudios Superiores de Occidente) es una universidad privada ubicada en la Zona Metropolitana de Guadalajara, Jalisco, México, fundada en el año 1957.",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
