// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:myprofile/profile/widget/chat_form.dart';

class CardProfileInformation extends StatelessWidget {
  const CardProfileInformation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10.0),
      padding: EdgeInsets.all(15.0),
      height: 250,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.grey,
            spreadRadius: 2,
            blurRadius: 10,
            offset: Offset.fromDirection(45),
          ),
        ],
        borderRadius: BorderRadius.circular(10.0),
        color: Colors.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            height: 160,
            color: Colors.white,
            child: Row(
              children: [
                Container(
                  height: 160,
                  color: Colors.white,
                  child: Row(
                    children: [
                      Container(
                        width: 150,
                        margin: EdgeInsets.only(bottom: 10, top: 2),
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage('images/me.png')),
                            borderRadius: BorderRadius.circular(15)),
                      )
                    ],
                  ),
                ),
                Flexible(
                    child: Container(
                  margin: EdgeInsets.only(left: 15.0, top: 2.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Ahmad Nasir',
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                        style: TextStyle(
                          color: Color.fromARGB(255, 207, 2, 50),
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 2,
                      ),
                      Text(
                        'Learning Programming',
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                        style: TextStyle(
                          color: Color.fromARGB(255, 122, 122, 142),
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Flexible(
                          child: Container(
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 225, 224, 224),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        height: 60,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            InformationRating(subTitle: 'Articel', value: '7'),
                            InformationRating(
                                subTitle: 'Followers', value: '200'),
                            InformationRating(subTitle: 'Rating', value: '10'),
                          ],
                        ),
                      )),
                    ],
                  ),
                )),
              ],
            ),
          ),
          Flexible(
            child: Container(
              color: Colors.white,
              height: double.infinity,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Expanded(
                    flex: 1,
                    child: TextButton(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => ChatForm()));
                      },
                      child: Text(
                        'Chat',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                      style: ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll(
                            Color.fromARGB(255, 240, 56, 99)),
                        shape: MaterialStatePropertyAll(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    flex: 1,
                    child: TextButton(
                      onPressed: () {},
                      child: Text(
                        'Follow',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      style: ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll(Color.fromARGB(255, 240, 56, 99)),
                        shape: MaterialStatePropertyAll(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class InformationRating extends StatelessWidget {
  const InformationRating({
    super.key,
    required this.subTitle,
    required this.value,
  });

  final String subTitle;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          subTitle,
          style: TextStyle(
              fontWeight: FontWeight.bold, color: Colors.black54, fontSize: 12),
        ),
        Text(
          value,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
      ],
    );
  }
}
