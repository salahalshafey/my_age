import 'package:flutter/material.dart';
import '../models/person.dart';
import 'birthdate_storage.dart';

class BirthdateProvider with ChangeNotifier {
  final List<Person> _people = [];
  final BirthdateStorage _storage = BirthdateStorage();

  BirthdateProvider() {
    _loadPeople();
  }

  List<Person> get people => List.unmodifiable(_people);

  void addPerson(Person person) {
    _people.add(person);
    _savePeople();
    notifyListeners();
  }

  void removePerson(Person person) {
    _people.remove(person);
    _savePeople();
    notifyListeners();
  }

  void clearAll() {
    _people.clear();
    _savePeople();
    notifyListeners();
  }

  Future<void> _loadPeople() async {
    final loadedPeople = await _storage.loadPeople();
    _people.addAll(loadedPeople);
    notifyListeners();
  }

  Future<void> _savePeople() async {
    await _storage.savePeople(_people);
  }
}