import 'dart:io';

main() async {
  print("Começou");
  appendFile();

  print(await readFile());
  print("fim");
}

void appendFile() {
  File file = File(Directory.current.path + '/text.txt');
  DateTime dt = DateTime.now();
  file.writeAsString(dt.toString() + '\r\n', mode: FileMode.append);
}

Future<String> readFile() {
  File file = File(Directory.current.path + '/text.txt');
  return file.readAsString();
}
