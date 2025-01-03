import 'package:flutter/material.dart';

class InputScreen extends StatefulWidget {
  const InputScreen({super.key});

  @override
  State<InputScreen> createState() => _InputScreenState();
}

class _InputScreenState extends State<InputScreen> {
  final userIdController = TextEditingController();
  final idController = TextEditingController();
  final titleController = TextEditingController();
  final bodyController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Input Screen",
          style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Colors.pink,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              SizedBox(
                height: 55,
              ),
              Text(
                "Input Here",
                style: TextStyle(
                    color: Colors.teal,
                    fontSize: 32,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 25,
              ),
              TextFormField(
                controller: userIdController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(23),
                  ),
                  hintText: "Enter your UserId"
                ),
              ),
               SizedBox(
                height: 25,
              ),
              TextFormField(
                controller: userIdController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(23),
                  ),
                  hintText: "Enter your Id"
                ),
              ),
              SizedBox(
                height: 25,
              ),
              TextFormField(
                controller: userIdController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(23),
                  ),
                  hintText: "Enter your title"
                ),
              ),
              SizedBox(
                height: 25,
              ),
              TextFormField(
                controller: userIdController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(23),
                  ),
                  hintText: "Enter your body"
                ),
              ),
              SizedBox(height: 35,),
              ElevatedButton(onPressed: (){}, child: Text("Submit"))
            ],
          ),
        ),
      ),
    );
  }
}
