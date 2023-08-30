import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
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
  Color _iconColor = Colors.black; // Color inicial del icono

  void _changeIconColor() {
    setState(() {
      // Cambiar el color del icono
      _iconColor = _iconColor == Colors.black ? Colors.indigo : Colors.black;
    });
  }

  void _showSnackBar() {
    final snackBar = SnackBar(
      content: Text("Hola"),
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Mc Flutter'),
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(20.0),
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(20.0),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black), // Borde negro
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.account_circle,
                          size: 40,
                          color: _iconColor,
                        ),
                        Text(
                          "Flutter Mc Flutter",
                          style: TextStyle(fontSize: 25),
                        ),
                      ],
                    ),
                    Container(
                      child: SizedBox(
                        height: 10,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Experienced Developer"),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("123 Main Street"),
                        Text("33 13484927"),
                      ],
                    ),
                    Container(
                      child: SizedBox(
                        height: 10,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                          onPressed: () {
                            _changeIconColor();
                            _showSnackBar();
                            setState(() {});
                          },
                          icon: Icon(
                            Icons.boy,
                            size: 40,
                            color: _iconColor,
                          ),
                        ),
                        IconButton(
                          onPressed: () {
                            _changeIconColor();
                            _showSnackBar();
                            setState(() {});
                          },
                          icon: Icon(
                            Icons.watch_rounded,
                            size: 40,
                            color: _iconColor,
                          ),
                        ),
                        IconButton(
                          onPressed: () {
                            _changeIconColor();
                            _showSnackBar();
                            setState(() {});
                          },
                          icon: Icon(
                            Icons.phone_android,
                            size: 40,
                            color: _iconColor,
                          ),
                        ),
                        IconButton(
                          onPressed: () {
                            _changeIconColor();
                            _showSnackBar();
                            setState(() {});
                          },
                          icon: Icon(
                            Icons.phone_android_sharp,
                            size: 40,
                            color: _iconColor,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
