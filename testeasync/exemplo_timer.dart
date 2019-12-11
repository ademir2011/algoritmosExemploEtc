import 'dart:async';

int count = 0;

void main() {
  Duration duration = Duration(seconds: 2);

  Timer.periodic(duration, cb);
}

void cb(Timer timer) {
  count++;
  print("Hora: ${DateTime.now().toString()}");
  if (count > 5) timer.cancel();
}
