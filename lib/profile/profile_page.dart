// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last, unused_import, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:myprofile/profile/widget/card_profile_information.dart';
import 'package:myprofile/profile/widget/discover_list_item.dart';
import 'package:myprofile/profile/widget/feature_article_banner.dart';
import 'package:myprofile/profile/widget/title_and_subtitle.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              CardProfileInformation(),
              SizedBox(
                height: 20,
              ),
              Container(
                  margin: EdgeInsets.only(left: 20),
                  child: natureDiscoveryData()),
              SizedBox(
                height: 10,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 10),
                child: FeatureArticleBanner(),
              ),
              SizedBox(
                height: 2,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget natureDiscoveryData() {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TitleAndSubtitle(
            title: 'Notable Work',
            subTitle: 'Based of the pupalirty Article',
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            height: 230,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return DiscoverListItem();
              },
            ),
          ),
        ],
      ),
    );
  }
}
