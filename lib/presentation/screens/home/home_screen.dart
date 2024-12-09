import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> topics = [
      'Tecnología',
      'Ciencia',
      'Historia',
      'Arte y Cultura',
      'Deportes',
      'Entretenimiento',
      'Viajes',
      'Noticias',
      'Salud y Bienestar',
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('ChatIA'),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Selecciona un tema para hablar con el ChatBot',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: ListView.builder(
                itemCount: topics.length,
                itemBuilder: (context, index) {
                  return Card(
                    elevation: 4,
                    margin: const EdgeInsets.symmetric(vertical: 8),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: ListTile(
                      title: Text(
                        topics[index],
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      onTap: () {
                        // Acción cuando el usuario selecciona un tema
                        // Aquí se podría navegar a una pantalla de chat
                        // o simplemente mostrar una alerta.
                        showDialog(
                          context: context,
                          builder: (_) => AlertDialog(
                            title: const Text('Tema Seleccionado'),
                            content: Text('Has seleccionado: ${topics[index]}'),
                            actions: [
                              TextButton(
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                                child: const Text('Cerrar'),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
