import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext constext) {
    return const MaterialApp(
      home: HomeState(),
    );
  }
}

class HomeState extends StatefulWidget {
  const HomeState({Key? key}) : super(key: key);

  @override
  MyCustomFormWidget createState() {
    return MyCustomFormWidget();
  }
}

class MyCustomFormWidget extends State<HomeState> {
  @override
  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormState>();
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "My custom form widget",
          style: TextStyle(color: Colors.grey),
        ),
        centerTitle: true,
      ),
      body: Form(
        key: _formKey,
        child: Column(
          children: <Widget>[
            TextFormField(
              validator: (value) {
                if (value == null || value.isEmpty) {
                  // ignore: avoid_print
                  print("Please Enter Some text");
                  return "Please Enter some text";
                } else {
                  // ignore: avoid_print
                  print(value);
                }
              },
            ),
            ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                      content: Text("processing Data"),
                    ));
                  }
                  // _formKey.currentState!.validate()
                },
                child: const Text(
                  "Submit",
                  style: TextStyle(fontWeight: FontWeight.bold),
                )),
          ],
        ),
      ),
    );
  }
}
