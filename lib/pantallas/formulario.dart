import 'package:flutter/material.dart';

// import '/widgets/iconbuttons.dart';

void main() => runApp(const formulario());

// ignore: camel_case_types
class formulario extends StatefulWidget {
  const formulario({super.key});

  @override
  State<formulario> createState() => _formularioState();
}

class _formularioState extends State<formulario> {
  final GlobalKey<FormState> stateForm = GlobalKey<FormState>();
  bool _passwordVisible = false;

  @override
  void initState() {
    super.initState();
    _passwordVisible = false;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sky Limit',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Iniciar sesion'),
          backgroundColor: Colors.purple,
        ),
        body: Container(
          padding: const EdgeInsets.all(15),
          margin: const EdgeInsets.all(20),
          child: Form(
            key: stateForm,
            child: Column(
              children: [
                Container(
                  child: TextFormField(
                    decoration: const InputDecoration(
                      hintText: "Correo electrónico",
                      labelText: "Correo electrónico",
                      border: OutlineInputBorder(),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Por favor ingrese su correo electrónico';
                      }
                      if (!RegExp(r'^[^@]+@[^@]+\.[^@]+').hasMatch(value)) {
                        return 'Por favor ingrese un correo electrónico válido';
                      }
                      return null;
                    },
                  ),
                ),
                const SizedBox(height: 10),
                Container(
                  child: TextFormField(
                    obscureText: !_passwordVisible,
                    decoration: InputDecoration(
                      hintText: "Contraseña",
                      labelText: "Contraseña",
                      border: const OutlineInputBorder(),
                      suffixIcon: IconButton(
                        icon: Icon(
                          _passwordVisible
                              ? Icons.visibility
                              : Icons.visibility_off,
                        ),
                        onPressed: () {
                          setState(() {
                            _passwordVisible = !_passwordVisible;
                          });
                        },
                      ),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Por favor ingrese su contraseña';
                      }
                      if (value.length < 8) {
                        return 'La contraseña debe tener al menos 8 caracteres';
                      }
                      if (!RegExp(r'[0-9]').hasMatch(value)) {
                        return 'La contraseña debe contener al menos un número';
                      }
                      if (!RegExp(r'[!@#$%^&*(),.?":{}|<>]').hasMatch(value)) {
                        return 'La contraseña debe contener al menos un carácter especial';
                      }
                      return null;
                    },
                  ),
                ),
                const SizedBox(height: 10),
                Container(
                  padding: const EdgeInsets.only(top: 10),
                  width: double.infinity,
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.5,
                    child: ElevatedButton(
                      onPressed: () {
                        if (stateForm.currentState?.validate() == true) {
                          // Si el formulario es válido, muestra un snackbar
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(content: Text('Procesando datos')),
                          );
                        }
                      },
                      child: const Text('Validar'),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
