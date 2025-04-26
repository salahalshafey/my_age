class Person {
  final String name;
  final DateTime birthdate;

  Person({required this.name, required this.birthdate});

  // Convert a Person object to a Map for storage
  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'birthdate': birthdate.toIso8601String(),
    };
  }

  // Create a Person object from a Map
  factory Person.fromMap(Map<String, dynamic> map) {
    return Person(
      name: map['name'],
      birthdate: DateTime.parse(map['birthdate']),
    );
  }
}