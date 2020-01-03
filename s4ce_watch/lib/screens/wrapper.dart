import 'package:flutter/material.dart';
import 'package:s4ce_watch/models/listing.dart';
import 'package:s4ce_watch/screens/home/home.dart';
import 'package:s4ce_watch/screens/loading/loading.dart';
import 'package:s4ce_watch/services/ListingService.dart';

class Wrapper extends StatefulWidget {
  @override
  _WrapperState createState() => _WrapperState();
}

class _WrapperState extends State<Wrapper> {

  @override
  void initState() {
    super.initState();
    getData();
  }

  List<Listing> listings = [];
  bool loading = true;

  Future getData() async {
    print('getting data');
    ListingService _service = ListingService();
    List<Listing> result = await _service.GetListings();
    print('printing result from wrapper');
    print(result);
    if (result != null && result.length > 0){
      setState(() {
        loading = false;
        listings = result;
      });
    }
  }

  @override
  Widget build(BuildContext context) {

    return loading ? Loading() : Home(listings: listings);
  }
}
