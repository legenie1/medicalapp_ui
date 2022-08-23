import 'package:flutter/material.dart';

class DoctorList extends StatelessWidget {
  final image;
  final String name;
  final String post;
  final int experience;

  const DoctorList(
      {Key? key,
      required this.image,
      required this.name,
      required this.post,
      required this.experience})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8.0),
      child: Container(
        width: 160,
        decoration: BoxDecoration(
            color: Color.fromARGB(95, 179, 173, 173),
            borderRadius: BorderRadius.circular(15.0)),
        padding: EdgeInsets.symmetric(horizontal: 14.0, vertical: 14.0),
        child: Column(
          children: [
            CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage(image),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Dr. " + name,
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                  fontSize: 16),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              "Therapist," + experience.toString() + " y.e.",
              style: TextStyle(color: Colors.black54),
            )
          ],
        ),
      ),
    );
  }
}
