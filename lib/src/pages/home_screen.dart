import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../providers/birthdate_provider.dart';
import '../../models/person.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final birthdateProvider = Provider.of<BirthdateProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('Birthdate Reminder'),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: birthdateProvider.people.length,
              itemBuilder: (context, index) {
                final person = birthdateProvider.people[index];
                return ListTile(
                  title: Text(person.name),
                  subtitle: Text(person.birthdate.toLocal().toString().split(' ')[0]),
                  trailing: IconButton(
                    icon: Icon(Icons.delete),
                    onPressed: () {
                      birthdateProvider.removePerson(person);
                    },
                  ),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
              onPressed: () async {
                final newPerson = await _showAddPersonDialog(context);
                if (newPerson != null) {
                  birthdateProvider.addPerson(newPerson);
                }
              },
              child: Text('Add Birthdate'),
            ),
          ),
        ],
      ),
    );
  }

  Future<Person?> _showAddPersonDialog(BuildContext context) async {
    final nameController = TextEditingController();
    DateTime? selectedDate;

    return showDialog<Person>(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text('Add Birthdate'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                controller: nameController,
                decoration: InputDecoration(labelText: 'Name'),
              ),
              SizedBox(height: 10),
              ElevatedButton(
                onPressed: () async {
                  final pickedDate = await showDatePicker(
                    context: context,
                    initialDate: DateTime.now(),
                    firstDate: DateTime(1900),
                    lastDate: DateTime(2100),
                  );
                  if (pickedDate != null) {
                    selectedDate = pickedDate;
                  }
                },
                child: Text('Select Birthdate'),
              ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('Cancel'),
            ),
            TextButton(
              onPressed: () {
                if (nameController.text.isNotEmpty && selectedDate != null) {
                  Navigator.of(context).pop(
                    Person(name: nameController.text, birthdate: selectedDate!),
                  );
                }
              },
              child: Text('Add'),
            ),
          ],
        );
      },
    );
  }
}
