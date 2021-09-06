String toCase(value) {
  return '${value.substring(0, 1).toUpperCase()}${value.substring(1).toLowerCase()}';
}

void main() {
  List<String> users = ['anna', 'viKtor', 'Mike', 'aleX', 'dan'];

  users = users.map((v) => v = toCase(v)).toList();

  print(users);
}
