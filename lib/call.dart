import 'package:flutter/material.dart';
import 'package:whatsapp/callspage.dart';
import 'package:whatsapp/statuspage.dart';
import 'package:whatsapp/chatpage.dart';

class Call extends StatefulWidget {
  const Call({super.key});

  @override
  State<Call> createState() => _CallState();
}

class _CallState extends State<Call> {
  var data = [
    {
      "email": "michael.lawson@reqres.in",
      "first_name": "Michael",
      "last_name": "Lawson",
      "avatar": "https://loremflickr.com/640/480/nightlife"
    },
    {
      "email": "lindsay.ferguson@reqres.in",
      "first_name": "Lindsay",
      "last_name": "Ferguson",
      "avatar": "https://reqres.in/img/faces/8-image.jpg"
    },
    {
      "email": "rachel.howell@reqres.in",
      "first_name": "Rachel",
      "last_name": "Howell",
      "avatar": "https://loremflickr.com/1234/2345/nightlife?lock=56789"
    },
    {
      "email": "FrancisKWilson@rhyta.com",
      "first_name": "Francis",
      "last_name": "Wilson",
      "avatar": "https://loremflickr.com/1234/2345"
    },
    {
      "email": "tobias.funke@reqres.in",
      "first_name": "Tobias",
      "last_name": "Funke",
      "avatar": "https://reqres.in/img/faces/9-image.jpg"
    },
    {
      "email": "byron.fields@reqres.in",
      "first_name": "Byron",
      "last_name": "Fields",
      "avatar": "https://loremflickr.com/640/480"
    },
    {
      "email": "george.edwards@reqres.in",
      "first_name": "George",
      "last_name": "Edwards",
      "avatar": "https://reqres.in/img/faces/11-image.jpg"
    },
    {
      "email": "byron.fields@reqres.in",
      "first_name": "Byron",
      "last_name": "Fields",
      "avatar": "https://reqres.in/img/faces/10-image.jpg"
    },
    {
      "email": "MichaelCHarris@jourrapide.com",
      "first_name": "Michael",
      "last_name": "Harris",
      "avatar": "https://loremflickr.com/1234/2345/nature?lock=56789"
    },
    {
      "email": "rachel.howell@reqres.in",
      "first_name": "Rachel",
      "last_name": "Howell",
      "avatar": "https://reqres.in/img/faces/12-image.jpg"
    },
    {
      "email": "VictorKSparks@jourrapide.com",
      "first_name": "Carlos",
      "last_name": "Miller",
      "avatar": "https://loremflickr.com/1234/2345/sports"
    },
    {
      "email": "bobonol723@soombo.com",
      "first_name": "Derek",
      "last_name": "Vang",
      "avatar": "https://loremflickr.com/640/480/city"
    },
    {
      "email": "StephenWNewby@teleworm.us",
      "first_name": "Joseph",
      "last_name": "Floyd",
      "avatar": "https://loremflickr.com/640/480/fashion"
    },
    {
      "email": "BahaMubarakHalabi@jourrapide.com",
      "first_name": "Baha",
      "last_name": "Halabi",
      "avatar": "https://picsum.photos/seed/picsum/200/300"
    },
    {
      "email": "ShahinSaqrKassab@dayrep.com",
      "first_name": "Shahin",
      "last_name": "Kassab",
      "avatar": "https://picsum.photos/id/237/200/300"
    },
    {
      "email": "ConstanceFSummers@jourrapide.com",
      "first_name": "Constance",
      "last_name": "Summers",
      "avatar": "https://picsum.photos/200"
    },
  ];

  List<Widget> name = [
    Icon(Icons.people),
    Text("CHAT"),
    Text("STATUS"),
    Text("CALLS")
  ];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xff075F56),
          title: Text('WhatsApp',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20)),
          actions: [
            Icon(
              Icons.search_rounded,
              color: Colors.white,
            ),
            SizedBox(width: 8),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(
                Icons.more_vert,
                color: Colors.white,
              ),
            )
          ],
          bottom: TabBar(
            unselectedLabelColor: Colors.teal.shade300,
            indicatorColor: Colors.white,
            // labelStyle: TextStyle(color: Colors.white),
            labelColor: Colors.white,
            tabs: List.generate(name.length, (index) => name[index]),
          ),
        ),
        // body: Column(
        //   children: [
        //     Container(
        //       height: 48,
        //       width: 360,
        //       color: Color(0xff075F56),
        //       // child: ,
        //     ),
        //   ],
        // ),
        body: TabBarView(children: [
          SizedBox(),
          Chatpage(),
          statuspage(),
          Callpage(),
        ]),
      ),
    );
  }
}
