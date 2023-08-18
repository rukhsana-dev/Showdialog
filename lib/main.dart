import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Dialog Example"),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            children: [
              ListTile(
                title: Text(
                  "update available",
                  style: TextStyle(
                    // color: Colors.grey,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: Text(
                  "Description",
                  style: TextStyle(
                    // color: Colors.grey,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: double.infinity,
                child: LinearProgressIndicator(), // Horizontal Loader
              ),
              SizedBox(height: 16),
              Text('Updating...'),
              SizedBox(height: 8),
              Text('Please wait while the app is being updated.'),
              SizedBox(height: 25),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text('Cancel'),
                  ),
                  SizedBox(width: 8),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text('Update'),
                  ),
                ],
              ),
              Column(
                children: [
                  Center(
                    child: ElevatedButton(
                      onPressed: () {
                        _showUpdateDialog(context);
                      },
                      child: Text('Show Update Dialog'),
                    ),
                  ),
                ],
              )
            ],
          ),
        ));
  }
}

class _showUpdateDialog {
  _showUpdateDialog(BuildContext context);
}
