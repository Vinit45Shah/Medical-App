import 'package:flutter/material.dart';

class DoctorCard extends StatelessWidget {
  final iconImagePath;
  final String doctorName;
  final String doctorTitle;
  final String doctorRating;

  DoctorCard(
      {required this.iconImagePath,
      required this.doctorName,
      required this.doctorTitle,
      required this.doctorRating});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 25),
      child: Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.deepPurple[100],
        ),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(50),
              child: Image.asset(
                iconImagePath,
                height: 100,
                width: 150,
              ),
            ),
            SizedBox(
              height: 2,
            ),

            Row(children: [
              Icon(
                Icons.star,
                color: Colors.yellow[600],
              ),
              Text(
                doctorRating,
                style: TextStyle(fontWeight: FontWeight.bold),
              )
            ]),

            SizedBox(height: 0),
            TextButton(
                onPressed: () {
                  print('doctor name pressed');
                },
                child: Text(
                  doctorName,
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.black87,
                  ),
                )),
            SizedBox(
              height: 0,
            ),
            Text(doctorTitle)

            // Column(
            //   children: [
            //     TextButton(
            //         onPressed: () {
            //           print('Doctor name pressed');
            //         },
            //         child: Text(doctorName))
            //   ],
            // ),
          ],
        ),
      ),
    );
  }
}
