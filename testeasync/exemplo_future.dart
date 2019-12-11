import 'dart:io';

void main() {
  String path = Directory.current.path + '/text.txt';
  print(path);
  File file = File(path);

  file.open(mode: FileMode.append).then((RandomAccessFile raf) {
    raf
        .writeString("Olá mundo!")
        .then((value) {})
        .catchError(() => print("erro"))
        .whenComplete(() => raf.close());
  });
}
