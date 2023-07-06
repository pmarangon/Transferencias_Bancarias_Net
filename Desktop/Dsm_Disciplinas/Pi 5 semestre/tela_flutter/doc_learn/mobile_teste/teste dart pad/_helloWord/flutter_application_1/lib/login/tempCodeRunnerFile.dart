import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 100,
              ),
              CircleAvatar(
                backgroundColor: Colors.black,
                radius: 100,
              ),
              Text(
                'NomeApp',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 32,
                width: double.infinity,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16),
                child: TextField(
                  decoration: InputDecoration(
                      filled: true,
                      labelText: 'E-mail',
                      border: OutlineInputBorder()),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16),
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                      suffixIcon: Icon(Icons.visibility),
                      filled: true,
                      labelText: 'Senha',
                      border: OutlineInputBorder()),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                child: SizedBox(
                  width: double.infinity,
                  child: GestureDetector(
                    child: Text(
                      'Esqueci minha senha',
                      textAlign: TextAlign.start,
                    ),
                    onTap: () {},
                  ),
                ),
              ),
              SizedBox(
                height: 32,
                width: double.infinity,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                child: SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                        onPressed: () {}, child: const Text('Login'))),
              ),
              TextButton(
                onPressed: () {},
                child: RichText(
                  text: const TextSpan(
                    text: 'Já possui cadastro?',
                    style: TextStyle(color: Colors.black),
                    children: [
                      TextSpan(
                        text: ' Faça cadastro',
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
