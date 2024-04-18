import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hernando Assignment 5.1',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const LoginPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("Log in"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 150),
              child: MaterialButton(onPressed: () {},
                minWidth: double.infinity,
                color: Colors.blue,
                textColor: Colors.white,
                child: const Text("Log in"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 150),
              child: MaterialButton(onPressed: () {},
                minWidth: double.infinity,
                color: Colors.blue,
                textColor: Colors.white,
                child: const Text("Take Quiz"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("Log in"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: TextFormField(
                keyboardType: TextInputType.name,
                controller: usernameController,
                decoration: const InputDecoration(
                    labelText: "Username",
                    prefixIcon: Icon(Icons.person),
                    border: UnderlineInputBorder()
                ),
                onChanged: (String value) {
                },
                validator: (value) { return value!.isEmpty ? "Please enter your username" : null;
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: TextFormField(
                keyboardType: TextInputType.visiblePassword,
                controller: passwordController,
                decoration: const InputDecoration(
                    labelText: "Password",
                    prefixIcon: Icon(Icons.lock),
                    border: UnderlineInputBorder()
                ),
                onChanged: (String value) {
                },
                validator: (value) { return value!.isEmpty ? "Please enter your password" : null;
                },
              ),
            ),
            const SizedBox(height: 30,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 150),
              child: MaterialButton(onPressed: () {},
                minWidth: double.infinity,
                color: Colors.blue,
                textColor: Colors.white,
                child: const Text("Log in"),
              ),
            ),
            const SizedBox(height: 30,),
            const Text("Don't have an account?"), TextButton(
              child:  const Text("Register here"),
              onPressed: () {
                Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const RegistrationPage()),
                );
              },
            ),

          ],
        ),
      ),
    );
  }
}

class RegistrationPage extends StatefulWidget {
  const RegistrationPage({super.key});

  @override
  State<RegistrationPage> createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("Register"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: TextFormField(
                keyboardType: TextInputType.name,
                controller: usernameController,
                decoration: const InputDecoration(
                    labelText: "Username",
                    prefixIcon: Icon(Icons.person),
                    border: UnderlineInputBorder()
                ),
                onChanged: (String value) {
                },
                validator: (value) { return value!.isEmpty ? "Please enter your username" : null;
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: TextFormField(
                keyboardType: TextInputType.visiblePassword,
                controller: passwordController,
                decoration: const InputDecoration(
                    labelText: "Password",
                    prefixIcon: Icon(Icons.lock),
                    border: UnderlineInputBorder()
                ),
                onChanged: (String value) {
                },
                validator: (value) { return value!.isEmpty ? "Please enter your password" : null;
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: TextFormField(
                keyboardType: TextInputType.visiblePassword,
                controller: confirmPasswordController,
                decoration: const InputDecoration(
                    labelText: "Confirm Password",
                    prefixIcon: Icon(Icons.lock),
                    border: UnderlineInputBorder()
                ),
                onChanged: (String value) {
                },
                validator: (value) { return value!.isEmpty ? "Please enter the password again" : null;
                },
              ),
            ),
            const SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 150),
              child: MaterialButton(
                onPressed: () {},
                minWidth: double.infinity,
                color: Colors.blue,
                textColor: Colors.white,
                child: const Text("Register"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
