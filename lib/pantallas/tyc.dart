import 'package:flutter/material.dart';

class tyc extends StatelessWidget {
  const tyc({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Términos y Condiciones'),
        backgroundColor: Colors.purple,
      ),
      body:const SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              'Términos y Condiciones',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16),
            Text(
              '1. Introducción',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8),
            Text(
              'Bienvenido a nuestra aplicación. Al usar nuestra aplicación, usted acepta cumplir y estar sujeto a los siguientes términos y condiciones. Por favor, lea estos términos cuidadosamente antes de utilizar nuestra aplicación.',
            ),
            SizedBox(height: 16),
            Text(
              '2. Uso de la Aplicación',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8),
            Text(
              'Nuestra aplicación le permite publicar y compartir contenido con otros usuarios. Usted es responsable de todo el contenido que publique y debe asegurarse de que cumple con nuestras políticas y leyes aplicables.',
            ),
            SizedBox(height: 16),
            Text(
              '3. Propiedad Intelectual',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8),
            Text(
              'Todos los derechos de propiedad intelectual en nuestra aplicación y el material publicado en ella nos pertenecen o están licenciados a nosotros. Usted no puede reproducir, distribuir, modificar o crear trabajos derivados de ningún material de nuestra aplicación sin nuestro consentimiento previo por escrito.',
            ),
            SizedBox(height: 16),
            Text(
              '4. Limitación de Responsabilidad',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8),
            Text(
              'No seremos responsables de ningún daño directo, indirecto, incidental, especial, consecuente o punitivo que surja de su uso de nuestra aplicación. Esto incluye, sin limitación, cualquier pérdida de beneficios, interrupción del negocio, pérdida de programas o información.',
            ),
            SizedBox(height: 16),
            Text(
              '5. Cambios a los Términos y Condiciones',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8),
            Text(
              'Nos reservamos el derecho de modificar estos términos y condiciones en cualquier momento. Cualquier cambio será efectivo inmediatamente después de la publicación de los términos revisados en nuestra aplicación. Su uso continuado de nuestra aplicación después de la publicación de los términos revisados constituye su aceptación de los cambios.',
            ),
            SizedBox(height: 16),
            Text(
              '6. Contacto',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8),
            Text(
              'Si tiene alguna pregunta sobre estos términos y condiciones, por favor, póngase en contacto con nosotros a través de nuestra página de soporte.',
            ),
            SizedBox(height: 16),
            Text(
              'Última actualización: 13 de junio de 2024',
              style: TextStyle(
                fontStyle: FontStyle.italic,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
