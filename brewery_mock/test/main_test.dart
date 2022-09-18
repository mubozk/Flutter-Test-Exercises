import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:mockito/annotations.dart';
import 'package:http/http.dart' as http;
import 'package:brewery_mock/main.dart';
import 'main_test.mocks.dart';
import 'package:brewery_mock/main.dart';

@GenerateMocks([http.Client])
void main() {
  test('main ...', () async {
    final client = MockClient();
    when(client.get(Uri.parse(
            'https://api.openbrewerydb.org/breweries/madtree-brewing-cincinnati')))
        .thenAnswer((_) async => http.Response(
            '{"id": "madtree-brewing-cincinnati","name": "MadTree Brewing","brewery_type": "regional","street": "3301 Madison Rd","address_2": null,"address_3": null,"city": "Cincinnati","state": "Ohio","county_province": null,"postal_code": "45209-1132","country": "United States","longitude": "-84.4239715","latitude": "39.1563725","phone": "5138368733","website_url": "http://www.madtreebrewing.com","updated_at": "2022-08-20T02:56:08.975Z","created_at": "2022-08-20T02:56:08.975Z"}',
            200));
    expect(await getData(client), isA<Brewery>);
  });
  test('throws an exception if the http call completes with an error', () {
    final client = MockClient();

    // Use Mockito to return an unsuccessful response when it calls the
    // provided http.Client.
    when(client.get(Uri.parse(
            'https://api.openbrewerydb.org/breweries/madtree-brewing-cincinnati')))
        .thenAnswer((_) async => http.Response('Not Found', 404));

    expect(getData(client), throwsException);
  });
}
