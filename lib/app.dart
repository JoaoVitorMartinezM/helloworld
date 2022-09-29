import 'package:flutter/material.dart';
 
class App extends StatefulWidget {
  const App({super.key});
 
   @override
   State<App> createState() => _AppState();
 }
 
 class _AppState extends State<App> {
  final TextEditingController _name = TextEditingController();
  final TextEditingController _surname = TextEditingController();
  final TextEditingController _fullname = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Concatenação!'),
      ),
     body: Column(
        children: [
          TextField(
            style: const TextStyle(
              fontSize: 25,
              color: Colors.green,
           ),
            decoration: const InputDecoration(
              labelText: 'Digite o seu nome',
            ),
           // Para campos tipo senha
            // obscureText: true,
            // onChange e chamado a cada interacao
            // onSubmitted so quando termina de digitar
            onSubmitted: (String texto) {
              print('valor digitado $texto');
            },
            controller: _name,
          ),
          TextField(
            style: const TextStyle(
              fontSize: 25,
              color: Colors.green,
            ),
            decoration: const InputDecoration(
              labelText: 'Digite o seu sobrenome',
            ),
            controller: _surname,
          ),
          ElevatedButton(
            child: const Text('Concatenar'),
            onPressed: () {
              
              _fullname.text = '${_name.text} ${_surname.text}';
              
              
            },
          ),
          TextField(
            style: const TextStyle(
              fontSize: 25,
              color: Colors.green,
            ),
            enabled: false,
            controller: _fullname,
          ),
        ],
      ),
    );
  }
}
