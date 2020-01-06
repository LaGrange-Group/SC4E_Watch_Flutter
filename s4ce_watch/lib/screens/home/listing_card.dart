import 'package:flutter/material.dart';
import 'package:s4ce_watch/models/listing.dart';
import 'package:url_launcher/url_launcher.dart';

class ListingCard extends StatelessWidget {

  Listing listing;

  ListingCard({this.listing});

  _launchUrl(String url) async {
    if (await canLaunch(url)){
      await launch(url);
    }else{
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 5),
      child: GestureDetector(
        onLongPress: () {
          _launchUrl(listing.listingLink);
        },
        child: Card(
          margin: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
          child: Column(
            children: <Widget>[
              Image(
                image: NetworkImage(listing.photo),
              ),
              ListTile(
                leading: Image(
                  image: AssetImage('assets/${listing.resourcePhoto}'),
                ),
                title: Text(listing.title),
                subtitle: RichText(
                  text: TextSpan(
                    style: DefaultTextStyle.of(context).style,
                    children: <TextSpan>[
                      TextSpan(
                        text: '\$${listing.price}',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.green[800],
                            fontSize: 17
                        ),
                      ),
                      TextSpan(
                        text: ' ${listing.condition}',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      TextSpan(text: ' ${listing.description.substring(0, 90)}...')
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
