import 'package:flutter/material.dart';

import 'callspage.dart';
import 'messagepage.dart';

class Chatpage extends StatefulWidget {
  const Chatpage({super.key});

  @override
  State<Chatpage> createState() => _ChatpageState();
}

class _ChatpageState extends State<Chatpage> {
  var data = [
    {
      "email": "hii",
      "first_name": "Kishan",
      "last_name": "Mangukiya",
      "avatar": "https://loremflickr.com/cache/resized/2850_9573087102_24beb66e36_c_640_480_nofilter.jpg"
    },
    {
      "email": "Mid journey",
      "first_name": "Jenish ",
      "last_name": "Kabariya",
      "avatar": "https://reqres.in/img/faces/8-image.jpg"
    },
    {
      "email": "Flutter",
      "first_name": "Nikuj",
      "last_name": "Savani",
      "avatar": "https://loremflickr.com/1234/2345/nightlife?lock=56789"
    },
    {
      "email": "Wel come",
      "first_name": "Ankit",
      "last_name": "Solanki",
      "avatar": "https://loremflickr.com/1234/2345"
    },
    {
      "email": "Ok",
      "first_name": "Kunal",
      "last_name": "Kakadiya",
      "avatar": "https://reqres.in/img/faces/9-image.jpg"
    },
    {
      "email": "Please do not share this OTP.",
      "first_name": "Niraj",
      "last_name": "Vaghasiya",
      "avatar": "https://loremflickr.com/640/480"
    },
    {
      "email": "59853 Otp",
      "first_name": "Dharmesh",
      "last_name": "Mangukiya",
      "avatar": "https://reqres.in/img/faces/11-image.jpg"
    },
    {
      "email": "Ok",
      "first_name": "Kevin Bro",
      "last_name": "",
      "avatar": "https://reqres.in/img/faces/10-image.jpg"
    },
    {
      "email": "JioFiber – Uninterrupted entertainment even",
      "first_name": "Krishna",
      "last_name": "Offers",
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
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
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
                Icons.message,
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
              /*Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Divider(
                  color: Colors.grey.shade100,
                  thickness: 2,
                ),
              ),*/
            ],
          ),
        ),
      ),
    );
  }
}
