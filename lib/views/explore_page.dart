// import 'package:bizconnect_application/models/user_model.dart';
import 'package:flutter/material.dart';
import 'package:bizconnect_application/views/widgets/bottom_navigation_bar.dart';
import 'package:bizconnect_application/views/widgets/build_image_explore.dart';

class ExplorePage extends StatefulWidget {
  // final User user;

  // const ExplorePage({Key? key, required this.user}) : super(key: key);
  const ExplorePage({Key? key}) : super(key: key);

  @override
  _ExplorePageState createState() => _ExplorePageState();
}

class _ExplorePageState extends State<ExplorePage> with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF17191A),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Color(0xFF17191A),
        elevation: 0,
        title:  Row(
          children: [
            Text(
              'Explore',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25,
                color: Colors.white,
              ),
            ),
            SizedBox(width: 8),
            Icon(
              Icons.keyboard_arrow_down,
              color: Colors.white,
            ),
          ],
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
            color: Color(0xFF9FA1A4),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 16),
            child: Stack(
              children: [
                ClipOval(
                  child: Image.asset(
                    'assets/user1.png',
                    width: 40,
                    height: 40,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  top: -4,
                  right: -4,
                  child: Container(
                    width: 17, 
                    height: 17, 
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color(0xFF2AEF0A), 
                      border: Border.all(
                        color: Color(0xFF17191A),
                        width: 4,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(top: 16, bottom: 20),
              child: Align(
                alignment: Alignment.topLeft,
                child: Container(
                  height: 360,
                  child: ListView(
                    shrinkWrap: false,
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      SizedBox(width: 16),
                      buildImageWidget('assets/image1.png', 250, 360),
                      SizedBox(width: 16),
                      buildImageWidget('assets/image2.png', 250, 360),
                    ],
                  ),
                ),
              ),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                SizedBox(width: 16),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      buildImageWidget('assets/image3.png', 172, 250),
                      SizedBox(height: 16),
                      buildImageWidget('assets/image6.png', 172, 180),
                      SizedBox(height: 16),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      buildImageWidget('assets/image5.png', 172, 180),
                      SizedBox(height: 16),
                      buildImageWidget('assets/image4.png', 172, 250),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavBar(
        selectedIndex: 1,
      ),
    );
  }
}

