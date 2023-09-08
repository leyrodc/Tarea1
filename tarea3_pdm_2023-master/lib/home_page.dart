import 'package:flutter/material.dart';
import 'package:info_lugar/info_lugar.dart';
import 'package:info_lugar/item_actividad.dart';

class HomePage extends StatelessWidget {
  HomePage({
    Key? key,
  }) : super(key: key);

  final List<Map<String, String>> _elements = [
    {"day": "Day 1", "name": "Templos de Angkor", "image": 'assets/images/bali3.jpeg'},
    {
      "day": "Day 2",
      "name": "Monte batur",
      "image": 'assets/images/montebatur.jpeg'
    },
    {
      "day": "Day 3",
      "name": "Bali Swing",
      "image": 'assets/images/baliswing.jpeg'
    },
    {
      "day": "Day 4",
      "name": "Rio Ayung",
      "image": 'assets/images/rioayug.jpeg'
    },
    {"day": "Day 5", "name": "Templo tanah lot", "image": 'assets/images/tanahlot.jpeg'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Reserva tu hotel'),
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          return Stack(
            fit: StackFit.expand,
            children: [
              Align(
                alignment: Alignment.topCenter,
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.20,
                  width: MediaQuery.of(context).size.width * 1,
                  child: Image.asset(
                    'assets/images/bali2.jpeg',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              // para poder poner column o listview en stack hay que encerrarlas en positioned y anclarla a todos lados
              Positioned(
                top: 64,
                bottom: 0,
                left: 0,
                right: 0,
                child: ListView(
                  children: [
                    InfoLugar(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ElevatedButton(
                          onPressed: () {},
                          child: Text("Details"),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.red,
                            foregroundColor: Colors.grey[200],
                          ),
                        ),
                        Text("Walkthrough Flight Detail"),
                      ],
                    ),
                    Container(
                      height: 200,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: _elements.length,
                        itemBuilder: (BuildContext context, int index) {
                          return ItemActividad(
                            placeMap: _elements[index],
                          );
                        },
                      ),
                    ),
                    MaterialButton(
                      onPressed: () {
                        final snackBar = SnackBar(
                          content: Text('Reservacion en proceso'),
                          duration: Duration(seconds: 3),
                          action:
                              SnackBarAction(label: 'Cerrar', onPressed: () {}),
                        );
                        ScaffoldMessenger.of(context).showSnackBar(snackBar);
                      },
                      child: Text(
                        "Start booking",
                        style: TextStyle(color: Colors.white),
                      ),
                      color: Colors.red,
                    ),
                  ],
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
