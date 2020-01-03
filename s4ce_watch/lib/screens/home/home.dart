

import 'package:flutter/material.dart';
import 'package:s4ce_watch/models/listing.dart';
import 'package:s4ce_watch/screens/home/listing_card.dart';


class Home extends StatelessWidget {
  List<Listing> listings = [];

  Home({this.listings});



  @override
  Widget build(BuildContext context) {
    print(listings);
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        backgroundColor: Colors.grey[700],
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset('assets/logo.png', scale: 8, color: Colors.white,),
            Text('Guild Finder'),
          ],
        ),
        centerTitle: true,
      ),
      body: Container(
        child: ListView.builder(
          itemCount: listings.length ?? 0,
          itemBuilder: (context, index) {
            return ListingCard(listing: listings[index]);
          },
        ),
      ),
    );
  }
}
