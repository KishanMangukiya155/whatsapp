import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  Future<Map<String, dynamic>> allusers() async {
    await Future.delayed(Duration(seconds: 5));
    return {
      "data": [
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
      ],
    };
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Center(child: Text('Hike')), backgroundColor: Colors.teal),
      body: FutureBuilder(
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            return ListView.builder(
              itemBuilder: (BuildContext context, int index) {
                Map<String, dynamic> user = snapshot.data!['data'][index];

                return ListTile(
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage("${user['avatar']}"),
                  ),
                  title: Text("${user['first_name']} ${user['last_name']}"),
                  subtitle: Text("${user['email']}"),
                );
              },
              itemCount: snapshot.data!['data'].length,
            );
          } else {
            return Center(
              child: CupertinoActivityIndicator(),
            );
          }
        },
        future: allusers(),
      ),
    );
  }
}
