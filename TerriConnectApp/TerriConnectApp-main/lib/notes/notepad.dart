import 'package:flutter/material.dart';
import 'package:projectmp/model/note_model.dart';
import 'package:projectmp/services/database_helper.dart';
import 'package:projectmp/widgets/notes_widgets.dart';
import 'note_screen.dart';

class NotesScreen extends StatefulWidget {
  const NotesScreen({Key? key}) : super(key: key);

  @override
  State<NotesScreen> createState() => _NotesScreenState();
}

class _NotesScreenState extends State<NotesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          await Navigator.push(context,
              MaterialPageRoute(builder: (context) => const NoteScreen()));
          setState(() {});
        },
        backgroundColor: Color(0xFFFF6522),
        child: const Icon(
          Icons.add,
        ),
      ),
      body: FutureBuilder<List<Note>?>(
        future: DatabaseHelper.receiveNotes(),
        builder: (context, AsyncSnapshot<List<Note>?> snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation<Color>(Color(0xFFFF6522)),
              strokeWidth: .8,
            );
          } else if (snapshot.hasError) {
            return Center(child: Text(snapshot.error.toString()));
          } else if (snapshot.hasData) {
            if (snapshot.data != null) {
              return ListView.builder(
                itemBuilder: (context, index) => NoteWidget(
                  note: snapshot.data![index],
                  onTap: () async {
                    await Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => NoteScreen(
                                  note: snapshot.data![index],
                                )));
                    setState(() {});
                  },
                  onLongPress: () async {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            title: const Text(
                              'Delete Selected Notes:',
                              style: TextStyle(
                                color: Color.fromARGB(255, 29, 29, 29),
                              ),
                            ),
                            actions: [
                              ElevatedButton(
                                style: ButtonStyle(
                                  backgroundColor: MaterialStateProperty.all(
                                    Color(0xFFFF6522),
                                  ),
                                ),
                                onPressed: () async {
                                  await DatabaseHelper.deleteNote(
                                      snapshot.data![index]);
                                  Navigator.pop(context);
                                  setState(() {});
                                },
                                child: const Text('Confirm'),
                              ),
                              ElevatedButton(
                                style: ButtonStyle(
                                  backgroundColor: MaterialStateProperty.all(
                                    Color.fromARGB(255, 37, 37, 37),
                                  ),
                                ),
                                onPressed: () => Navigator.pop(context),
                                child: const Text(
                                  'Close',
                                ),
                              ),
                            ],
                          );
                        });
                  },
                ),
                itemCount: snapshot.data!.length,
              );
            }
          } else {
            return Center(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Tap '),
                  Icon(Icons.add),
                  Text('to add data'),
                ],
              ),
            );
          }
          return const SizedBox.shrink();
        },
      ),
    );
  }
}
