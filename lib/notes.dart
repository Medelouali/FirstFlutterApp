import 'package:flutter/material.dart';

class Notes extends StatefulWidget {
  const Notes({super.key});

  @override
  State<Notes> createState() => _NotesState();
}

class _NotesState extends State<Notes> {
  List<String> notes = [];
  String currentNote = "";

  TextEditingController _controller = TextEditingController();

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        // margin: const EdgeInsets.all(20),
        child: Scaffold(
      appBar: AppBar(
        title: const Text('Input data...'),
        titleTextStyle: TextStyle(
            color: Color.fromARGB(255, 29, 29, 32),
            fontSize: 20,
            fontWeight: FontWeight.bold,
            letterSpacing: 2),
        backgroundColor: Color.fromARGB(184, 247, 242, 242),
      ),
      body: Column(children: [
        Container(
          width: double.infinity,
          padding: const EdgeInsets.all(10),
          child: TextField(
            controller: _controller,
            onSubmitted: (String value) {
              setState(() {
                currentNote = value;
                if (value != "") {
                  notes.add(value);
                  _controller.clear();
                }
                ;
              });
            },
            decoration: InputDecoration(
              hintText: 'Enter Your Note Please..',
              contentPadding:
                  EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(32.0)),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide:
                    BorderSide(color: Colors.lightBlueAccent, width: 1.0),
                borderRadius: BorderRadius.all(Radius.circular(32.0)),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide:
                    BorderSide(color: Colors.lightBlueAccent, width: 2.0),
                borderRadius: BorderRadius.all(Radius.circular(32.0)),
              ),
            ),
          ),
        ),
        TextButton(onPressed: null, child: Text("All Notes")),
        ...notes.map((e) {
          return Text(e);
        })
      ]),
    ));
  }
}
