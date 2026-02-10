import 'package:flutter/material.dart';

void main() => runApp(const AppAlaburger());

class AppAlaburger extends StatelessWidget {
  const AppAlaburger({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Alaburger',
      home: const Empleado(),
    );
  }
}

class Empleado extends StatelessWidget {
  const Empleado({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Alaburger", style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.blueGrey[900],
        actions: const [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Icon(Icons.bedroom_child, color: Colors.white),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Icon(Icons.flight, color: Colors.white),
          ),
        ],
      ),
      drawer: const Drawer(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center, // Centra verticalmente en la columna
        children: [
          Center(
            child: Container(
              width: 300,
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                // Aquí creamos el degradado elegante
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    Colors.blue.shade300, // Azul claro
                    Colors.blue.shade900, // Azul oscuro
                  ],
                ),
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.3),
                    blurRadius: 10,
                    offset: const Offset(0, 5),
                  ),
                ],
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const CircleAvatar(
                    radius: 40,
                    backgroundImage: NetworkImage(
                        'https://raw.githubusercontent.com/cbtis122-santiago/IAMoviles_Act5_AppBarCard_Gpo6-iFSCC/refs/heads/main/santiagocarrasco.jpg'), // Ejemplo de imagen
                  ),
                  const SizedBox(height: 15),
                  const Text(
                    'Santiago Carrasco',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    'Gerente de Ventas',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white.withOpacity(0.8),
                      letterSpacing: 1.2,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}