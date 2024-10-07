import 'package:flutter/material.dart';

void main() {
  runApp(ValidationApp());
}

class SimpleHelloWorld extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Basic UI Example start'),
        ),
        body: const Center(
          child: Text('Hello, Flutter guys!'),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: const Icon(Icons.ac_unit),
        ),
      ),
    );
  }
}

class MyLayoutApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Column & Row Layout'),
        ),
        body: const Column(
          mainAxisAlignment: MainAxisAlignment.center, // Align vertically
          children: [
            Text('I am in a Column'),
            Text('i am awesome'),
            Row(
              mainAxisAlignment: MainAxisAlignment.center, // Align horizontally
              children: [
                Icon(Icons.star, size: 50),
                SizedBox(width: 10),
                Text('I am in a Row'),
                Text('Awesome Flutter Program')
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class MyContainerApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Container Example')),
        body: Center(
          child: Container(
            width: 200,
            height: 200,
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(10),
              boxShadow: const [
                BoxShadow(color: Colors.black26, blurRadius: 10),
              ],
            ),
            child: const Center(
              child: Text('Inside a Container', style: TextStyle(color: Colors.white)),
            ),
          ),
        ),
      ),
    );
  }
}

class MyListApp extends StatelessWidget {
  final List<String> items = List.generate(10, (index) => 'Item $index');
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('ListView Example')),
        body: ListView.builder(
          itemCount: items.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(items[index]),
              leading: Icon(Icons.check),
            );
          },
        ),
      ),
    );
  }
}

class MyGridApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('GridView Example')),
        body: GridView.count(
          crossAxisCount: 3, // 2 items per row
          children: List.generate(5, (index) {
            return Card(
              margin: EdgeInsets.all(10),
              child: Center(child: Text('Item $index')),
            );
          }),
        ),
      ),
    );
  }
}

class MyButtonApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Button Example')),
        body: Center(
          child: ElevatedButton(
            onPressed: () {
              print('Button Pressed!');
            },
            child: Text('Press Me'),
          ),
        ),
      ),
    );
  }
}

class MyFormApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('TextField Example')),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: TextField(
            decoration: InputDecoration(labelText: 'Enter your name'),
          ),
        ),
      ),
    );
  }
}

class Today extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Welcome', style: TextStyle(fontSize: 32),),
            Text('Username'),
            Icon(Icons.star_border_outlined)
          ],
        ),
      ),
    );
  }
}

class SimpleFunctionality extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<SimpleFunctionality> {

  String enteredText = ""; // To store the text from the TextField
  TextEditingController textController = TextEditingController();

  void showDialog() {
    return showDialog();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('TextField Example'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center, // Center the content vertically
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: TextField(
                  controller: textController, // Capture the input
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Enter something',
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    enteredText = textController.text; // Update the text when button is pressed
                  });
                },
                child: Text('Show Text'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.redAccent,
                  foregroundColor: Colors.white,
                ),
              ),
              SizedBox(height: 20), // Add some space
              Text(
                enteredText, // Display the entered text
                style: TextStyle(fontSize: 24),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ValidationApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'AlertDialog Example',
      home: SimpleFunctionalitywithValidation(), // Set your main widget here
    );
  }
}

class SimpleFunctionalitywithValidation extends StatefulWidget {
  @override
  _SimpleFunctionalitywithValidationState createState() => _SimpleFunctionalitywithValidationState();
}

class _SimpleFunctionalitywithValidationState extends State<SimpleFunctionalitywithValidation> {
  String enteredText = ""; // To store the text from the TextField
  TextEditingController textController = TextEditingController();
  void add (String a){
    print(a);
  }
//
// Method to show the AlertDialog
  void showAlertDialo(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("Error"),
          content: Text("Text field can't be empty."),
          actions: [
            TextButton(
              child: Text("OK"),
              onPressed: () {
                Navigator.of(context).pop(); // Close the dialog
              },
            ),
          ],
        );
      },
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AlertDialog Example'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, // Center the content vertically
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextField(
                controller: textController, // Capture the input
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Enter something',
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  if (textController.text.isEmpty) {
                    add("Empty");
                    showAlertDialo(context); // Show alert if TextField is empty
                  } else {
                    enteredText = textController.text; // Update text if input is valid
                    textController.clear(); // Clear the TextField
                  }
                });
              },
              child: Text('Submit Text'),
            ),
            SizedBox(height: 20), // Add some space
            Text(
              enteredText.isNotEmpty ? enteredText : 'No input yet', // Show the text or default message
              style: TextStyle(fontSize: 24),
            ),
          ],
        ),
      ),
    );
  }
}
