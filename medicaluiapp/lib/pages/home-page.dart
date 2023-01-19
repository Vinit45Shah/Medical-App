import 'package:flutter/material.dart';
import 'package:medicaluiapp/util/category_card.dart';
import 'package:medicaluiapp/util/doctor_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[300],
        body: SafeArea(
            child: Column(
          children: [
            //appbar
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      //name
                      Text(
                        'Hello,',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                      SizedBox(
                        height: 6,
                      ),
                      Text(
                        'Vinit Shah',
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  //profile picture

                  Container(
                    child: Icon(Icons.person),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.deepPurple[100],
                    ),
                    padding: EdgeInsets.all(12),
                  )
                ],
              ),
            ),

            SizedBox(
              height: 25,
            ),
            //card -> how do you feel?

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.pink[100],
                    borderRadius: BorderRadius.circular(18)),
                padding: EdgeInsets.all(20),
                child: Row(
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                        // width: 100,
                        // height: 100,
                        child: Image.asset(
                      'lib/images/doc1.jpg',
                      height: 70,
                    )),

                    SizedBox(
                      width: 20,
                    ),
                    //container for animation or picture

                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'How do you feel??',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 10),
                          Text(
                            'Fill out your medical card right now',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.normal),
                          ),
                          SizedBox(
                            height: 12,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                width: 500,
                                // margin: EdgeInsets.all(4),
                                padding: EdgeInsets.all(2),
                                decoration: BoxDecoration(
                                    color: Colors.deepPurple[300],
                                    borderRadius: BorderRadius.circular(12)),
                                // ignore: deprecated_member_use
                                child: ElevatedButton(
                                  // color: Colors.deepPurple[300],
                                  onPressed: () {
                                    print('Get Started pressed');
                                  },
                                  child: Text(
                                    'Get Started',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 14
                                        // backgroundColor: Colors.deepPurple[300]
                                        ),
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    )
                    //container for text + get started button
                  ],
                ),
              ),
            ),

            SizedBox(
              height: 20,
            ),

            // search bar

            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 330,
                  height: 65,
                  decoration: BoxDecoration(
                      color: Colors.white12,
                      borderRadius: BorderRadius.circular(15)),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TextButton.icon(
                            onPressed: () {
                              print("Search button pressed");
                            },
                            icon: Icon(
                              Icons.search,
                              color: Colors.black12,
                              size: 30,
                            ),
                            label: Text('How can we help you?',
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.grey[400],
                                ))),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),

            Container(
              height: 80,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  CategoryCard(
                    categoryName: 'Dentist',
                    iconImagePath: 'lib/icons/tooth.png',
                  ),
                  CategoryCard(
                      categoryName: 'Surgeon',
                      iconImagePath: 'lib/icons/surgeon.png'),
                  CategoryCard(
                      categoryName: 'Pharmacist',
                      iconImagePath: 'lib/icons/scalpel.png'),

                  // horizontal listview -> categories:doctors,surgeons,dentists
                ],
                //doctor list
              ),
            ),

            SizedBox(
              height: 0,
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                    padding: EdgeInsets.all(12),
                    child: Text(
                      'Doctor list',
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    )),
                Container(
                    child: TextButton(
                  onPressed: () {
                    print('List all pressed');
                  },
                  child: Text(
                    'See all',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.black26),
                  ),
                ))
              ],
            ),

            SizedBox(
              height: 0,
            ),

            Expanded(
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  DoctorCard(
                    doctorName: 'Dr.Vinit Shah',
                    iconImagePath: 'lib/images/image1.jpg',
                    doctorRating: '4.7',
                    doctorTitle: 'Surgeon',
                  ),
                  DoctorCard(
                    doctorName: 'Dr.Amit Shah',
                    iconImagePath: 'lib/images/image2.jpg',
                    doctorRating: '4.9',
                    doctorTitle: 'Physician',
                  ),
                  DoctorCard(
                    doctorName: 'Dr.Pinky Shah',
                    iconImagePath: 'lib/images/image3.jpg',
                    doctorRating: '4.8',
                    doctorTitle: 'Dentist',
                  ),

                  // horizontal listview -> categories:doctors,surgeons,dentists
                ],
                //doctor list
              ),
            ),
          ],
        )));
  }
}
