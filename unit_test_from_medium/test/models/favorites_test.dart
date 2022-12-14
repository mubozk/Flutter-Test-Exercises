import 'package:flutter_test/flutter_test.dart';
import 'package:unit_test_from_medium/models/favorites.dart';

void main() {
  group('Favorilerim Test', () {
    var favorites = Favorites();
    test('Favorilere ekleme', () {
      //1 rakamını ekliyoruz
      var number = 1;
      favorites.add(number);
      //Listenin içerisinde eklediğimiz sayıyı kontrol ediyoruz
      //expect metodu ile beklediğimiz sonucu kontrol ediyoruz
      expect(favorites.items.contains(number), true);
    });

    test('Favorilerden çıkarma', () {
      //Önce 2'rakamını ekleyip sonra çıkarıyoruz
      var number = 2;
      favorites.add(number);
      expect(favorites.items.contains(number), true);
      favorites.remove(number);
      expect(favorites.items.contains(number), false);
    });
  });
}
