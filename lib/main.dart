import 'package:flutter/material.dart';
import 'page2.dart'; // Import the second page

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: RegisterScreen(),
    );
  }
}

class RegisterScreen extends StatefulWidget {
  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  double _weightValue = 60.0;
  double _heightValue = 170.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(''),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: CircleAvatar(
                  radius: 60,
                  backgroundColor: Colors.blue,
                  child: Text(
                    'Your Logo',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 30),
              Text(
                'Register',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Divider(
                color: Colors.blue,
                thickness: 2,
                endIndent: 200,
              ),
              SizedBox(height: 20),
              TextField(
                decoration: InputDecoration(
                  labelText: 'Name',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                ),
              ),
              SizedBox(height: 20),
              TextField(
                decoration: InputDecoration(
                  labelText: 'Username',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                ),
              ),
              SizedBox(height: 20),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Password',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Text(
                'Weight: ${_weightValue.toInt()} kg',
                style: TextStyle(fontSize: 16),
              ),
              Slider(
                value: _weightValue,
                min: 30,
                max: 150,
                divisions: 120,
                label: _weightValue.toInt().toString(),
                onChanged: (double value) {
                  setState(() {
                    _weightValue = value;
                  });
                },
              ),
              SizedBox(height: 20),
              Text(
                'Height: ${_heightValue.toInt()} cm',
                style: TextStyle(fontSize: 16),
              ),
              Slider(
                value: _heightValue,
                min: 100,
                max: 220,
                divisions: 120,
                label: _heightValue.toInt().toString(),
                onChanged: (double value) {
                  setState(() {
                    _heightValue = value;
                  });
                },
              ),
              SizedBox(height: 20),
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    // Navigate to Page2
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Page2()),
                    );
                  },
                  child: Text('Nextpage'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
