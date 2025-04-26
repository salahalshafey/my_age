import 'package:shared_preferences/shared_preferences.dart';
import 'dart:convert';
import '../models/person.dart';

class BirthdateStorage {
  static const String _storageKey = 'birthdate_list';

  Future<void> savePeople(List<Person> people) async {
    final prefs = await SharedPreferences.getInstance();
    final peopleJson = jsonEncode(people.map((person) => person.toMap()).toList());
    await prefs.setString(_storageKey, peopleJson);
  }

  Future<List<Person>> loadPeople() async {
    final prefs = await SharedPreferences.getInstance();
    final peopleJson = prefs.getString(_storageKey);
    if (peopleJson == null) {
      return [];
    }
    final List<dynamic> peopleList = jsonDecode(peopleJson);
    return peopleList.map((personMap) => Person.fromMap(personMap)).toList();
  }
}