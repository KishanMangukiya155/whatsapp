import 'package:flutter/material.dart';

class Callpage extends StatefulWidget {
  const Callpage({super.key});

  @override
  State<Callpage> createState() => _CallpageState();
}

class _CallpageState extends State<Callpage> {
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /*   appBar: AppBar(
        backgroundColor: Color(0xff075F56),
        title: Text('Select Contact',
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
      ),*/
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SizedBox(height: 10),
          FloatingActionButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(100)),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => Callpage()));
              },
              backgroundColor: Colors.teal,
              child: Icon(
                Icons.add_ic_call_outlined,
                color: Colors.white,
              )),
        ],
      ),
      body: ListView(
        children: List.generate(
          data.length,
          (index) => Column(
            children: [
              ListTile(
                leading: CircleAvatar(
                  backgroundImage:
                      NetworkImage(data[index]['avatar'].toString()),
                ),
                title: Row(
                  children: [
                    Text(
                      data[index]['first_name'].toString(),
                      style: TextStyle(color: Colors.black),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      data[index]['last_name'].toString(),
                      style: TextStyle(
                          fontStyle: FontStyle.italic, color: Colors.black),
                    ),
                  ],
                ),
                subtitle: Text(
                  data[index]['email'].toString(),
                  style: TextStyle(color: Colors.black),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Divider(
                  color: Colors.grey.shade100,
                  thickness: 2,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
