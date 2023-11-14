import 'package:flutter/material.dart';
import 'package:projectmp/model/note_model.dart';
import 'package:projectmp/services/database_helper.dart';

class NoteScreen extends StatelessWidget {
  final Note? note;

  const NoteScreen({Key? key, this.note}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final titleController = TextEditingController();
    final descriptionController = TextEditingController();

    if (note != null) {
      titleController.text = note!.title;
      descriptionController.text = note!.description;
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(
          note == null ? 'Notes' : 'Edit',
          style: TextStyle(
            fontFamily: 'Ubuntu',
            fontSize: 17,
            fontWeight: FontWeight.w100,
            color: Color(0xFFFFFFFF),
          ),
        ),
        centerTitle: true,
        backgroundColor: Color(0xFFFF6522),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 30),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 40.0),
              child: TextFormField(
                controller: titleController,
                cursorColor: Color(0xFFFF6522),
                maxLines: 1,
                decoration: const InputDecoration(
                  hintText: 'Title',
                  labelText: 'Title Your Notes',
                  labelStyle: TextStyle(
                    color: Color(0xFFACACAC),
                    fontSize: 12,
                  ),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.white,
                      width: 0.75,
                    ),
                    borderRadius: BorderRadius.all(
                      Radius.circular(10.0),
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xFFFF6522)),
                    borderRadius: BorderRadius.all(
                      Radius.circular(10.0),
                    ),
                  ),
                ),
              ),
            ),
            TextFormField(
              controller: descriptionController,
              decoration: const InputDecoration(
                hintText:
                    'You can write your:\n-  Qualification thoughts\n-  Preferred universities\n-  Program interests',
                //labelText: 'Notes description',
                hintStyle: TextStyle(
                  color: Color(0xFFACACAC),
                  fontSize: 12,
                ),
                border: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(0xFFFF6522),
                    width: 0.75,
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(10.0),
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(0xFFFF6522),
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(10.0),
                  ),
                ),
              ),
              keyboardType: TextInputType.multiline,
              onChanged: (str) {},
              maxLines: 5,
              cursorColor: Color(0xFFFF6522),
            ),
            const SizedBox(height: 50),

            SizedBox(
              height: 45,
              child: ElevatedButton(
                onPressed: () async {
                  final title = titleController.value.text;
                  final description = descriptionController.value.text;

                  if (title.isEmpty || description.isEmpty) {
                    return;
                  }

                  // save or update note
                  final Note model = Note(
                      title: title, description: description, id: note?.id);
                  if (note == null) {
                    await DatabaseHelper.addNote(model);
                  } else {
                    await DatabaseHelper.updateNote(model);
                  }
                  Navigator.pop(context);
                },
                style: ButtonStyle(
                  shape: MaterialStateProperty.all(
                    const RoundedRectangleBorder(
                      side: BorderSide(
                        color: Colors.white,
                        //width: 200,
                      ),
                      borderRadius: BorderRadius.all(
                        Radius.circular(50.0),
                      ),
                    ),
                  ),
                  backgroundColor: MaterialStateProperty.all(Color(0xFFFF6522)),
                  padding: MaterialStateProperty.all(
                    const EdgeInsets.only(
                      left: 55,
                      right: 55,
                    ),
                  ),
                ),
                child: Text(
                  note == null ? 'Save' : 'edit',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontFamily: 'Ubuntu',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            //),
          ],
        ),
      ),
    );
  }
}
