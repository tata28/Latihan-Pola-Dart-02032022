import 'dart:io';

//NOTE : kadang" pola 1 dan pola 2 tidak bisa dijalankan bersamaan sehingga harus dikomen salah satu

void pola1(int n1) {
  print("==== Pola Satu ==== ");
  print("n1 : $n1");
  int num1 = 0, num2 = 0;
  //paruh atas
  for (int i = 1; i <= (n1 / 2).ceil(); i++) {
    //bintang kiri
    for (int j = 1; j <= (n1 / 2).ceil() - i; j++) {
      stdout.write("*");
    }

    //angka
    for (int j = 1; j <= i; j++) {
      num1 = i;
      if (i > 9) {
        num1 = i - 9;
      }
      stdout.write(num1);
      if (j < i) {
        stdout.write(" ");
      }
    }

    //bintang kanan
    for (int j = 1; j <= (n1 / 2).ceil() - i; j++) {
      stdout.write("*");
    }
    print(" ");
  }

  //paruh bawah
  for (int i = 1; i <= (n1 / 2).floor(); i++) {
    //bintang kiri
    for (int j = 1; j <= i; j++) {
      stdout.write("*");
    }

    //angka
    for (int j = 1; j <= (n1 / 2).ceil() - i; j++) {
      num2 = (i + n1 / 2).ceil();
      if (num2 > 9) {
        num2 = ((i + n1 / 2).ceil()) - 9;
      }
      stdout.write(num2);
      if (j < (n1 / 2).ceil() - i) {
        stdout.write(" ");
      }
    }

    //bintang kanan
    for (int j = 1; j <= i; j++) {
      stdout.write("*");
    }
    print(" ");
  }
}

void pola2(int n2) {
  print("===== Pola Dua ====");
  print("n2 : $n2");
  int del = 0, n = 1, m = n2, _m = n2;
  if (n2 > 9) {
    _m = 9;
  }
  m = _m;

  for (int i = 0; i < n2; i++) {
    for (int j = 1; j <= n2; j++) {
      if (n == 10) {
        n = 1;
      }
      if (j > n2 - del) {
        stdout.write(" ");
      } else {
        stdout.write(n);
      }
      n++;
    }

    for (int j = 1; j <= n2; j++) {
      if (m == 0) {
        m = 9;
      }
      if (j <= del) {
        stdout.write(" ");
      } else {
        stdout.write(m);
      }
      m--;
    }
    print(" ");
    n = 1;
    m = _m;
    del++;
  }
}

void main(List<String> arguments) {
  stdout.write("n1 (ganjil): ");
  int n1 = int.parse(stdin.readLineSync()!);

  stdout.write("n2 : ");
  int n2 = int.parse(stdin.readLineSync()!);

  pola1(n1);
  print(" ");
  pola2(n2);
}
