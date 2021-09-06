Map<String, dynamic> findUser(data, String value) {
  return data.firstWhere((e) => e['name'] == value,
      orElse: () => {'name': 'Anonimus', 'age': 0});
}

void main() {
  List<Map<String, dynamic>> data = [
    {'name': 'Batman', 'age': 30},
    {'name': 'Spiderman', 'age': 18},
    {'name': 'Kung fury', 'age': 23},
    {'name': 'Tor', 'age': 550},
    {'name': 'Halk', 'age': 44},
    {'name': 'Iron man', 'age': 35},
  ];

  print(findUser(data, 'Iron man'));
}
