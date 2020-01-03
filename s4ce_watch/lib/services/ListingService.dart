import 'dart:convert';
import 'dart:io';
import 'package:s4ce_watch/models/listing.dart';
import 'package:http/http.dart' as http;

class ListingService {

  Future<List<Listing>> GetListings() async {
    List<Listing> listings = [];
    print('Starting request...');
    http.Response response = await http.get('http://192.168.0.10/api/find/reverb');
    print('Finished request... ${response.body}');

//
//    print('Starting request...');
//    HttpClient client = new HttpClient();
//    client.badCertificateCallback = ((X509Certificate cert, String host, int port) => true);
//    HttpClientRequest request = await client.getUrl(Uri.parse('http://10.0.2.2:5000/api/find/reverb')); // produces a request object
//    HttpClientResponse response = await request.close();
//    String reply = await response.transform(Utf8Decoder()).join();
//
////        .then((request) => request.close()) // sends the request
////        .then((response) {
////    response.transform(Utf8Decoder()).listen((content) {
////    Map<String, dynamic> reverb = jsonDecode(content);
////    print(content);
////    reverb['reverb'].map((listing){
////    listings.add(Listing(id: listing['id'], make: listing['make'], model: listing['finish'], year: listing['year'], title: listing['title'], createdAt: DateTime.parse(listing['created_at']), description: listing['description'], condition: listing['condition'], price: listing['price'], publishedAt: DateTime.parse(listing['published_at']), state: listing['state'], photo: listing['photos'][0], listingLink: listing['listingLink']));
////    }).toList();
////    });
////    });
////
////
////    print('Request complete.');
////    print(listings);
////    print(result);
//    Map<String, dynamic> reverb = await jsonDecode(reply);
//    for (int i = 0; i < 2; i++){
//      print(reverb['reverb'][i]);
//      listings.add(Listing(id: reverb['reverb'][i]['id'], make: reverb['reverb'][i]['make'], model: reverb['reverb'][i]['finish'], year: reverb['reverb'][i]['year'], title: reverb['reverb'][i]['title'], createdAt: DateTime.parse(reverb['reverb'][i]['created_at']), description: reverb['reverb'][i]['description'], condition: reverb['reverb'][i]['condition'], price: reverb['reverb'][i]['price'], publishedAt: DateTime.parse(reverb['reverb'][i]['published_at']), state: reverb['reverb'][i]['state'], photo: reverb['reverb'][i]['photos'][0], listingLink: reverb['reverb'][i]['listingLink']));
//    }
//    print('Before Return');
    return listings;
  }

}
