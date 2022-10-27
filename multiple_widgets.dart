import 'package:flutter/material.dart';

class Activity extends StatefulWidget {
  const Activity({Key? key}) : super(key: key);

  @override
  State<Activity> createState() => _ActivityState();
}

class _ActivityState extends State<Activity> {
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
        height: 200,
        width: 350,
        color: Colors.white,
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(right: 200, top: 10),
              child: Text(
                "Activity",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            const Divider(
              height: 10.0,
              color: Colors.black54,
              endIndent: 10,
              indent: 10,
              thickness: 1.0,
            ),
            const SizedBox(
              height: 5.0,
            ),
            Container(
              height: 40,
              width: 300,
              color: Color(0xffededeb),
              child: Row(
                children: [
                  const SizedBox(width: 20),
                  Container(
                    height: 15,
                    width: 15,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.green,
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  const Text('Leukenia-Lymphoma'),
                  const SizedBox(width: 80),
                  DropdownButton<String>(
                    icon: const Icon(Icons.arrow_drop_down),
                    items: <String>['A', 'B', 'C', 'D'].map((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                    onChanged: (_) {},
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              height: 40,
              width: 300,
              color: Color(0xffededeb),
              child: Row(
                children: [
                  const SizedBox(width: 20),
                  Container(
                    height: 15,
                    width: 15,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.orange,
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  const Text('Commercial Engagements'),
                  const SizedBox(width: 50),
                  DropdownButton<String>(
                    icon: const Icon(Icons.arrow_drop_down),
                    items: <String>['A', 'B', 'C', 'D'].map((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                    onChanged: (_) {},
                  )
                ],
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Container(
              height: 40,
              width: 300,
              color: Color(0xffededeb),
              child: Row(
                children: [
                  const SizedBox(width: 20),
                  Container(
                    height: 15,
                    width: 15,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.blue,
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  const Text('Medical Engagements'),
                  const SizedBox(width: 80),
                  DropdownButton<String>(
                    icon: const Icon(Icons.arrow_drop_down),
                    items: <String>['A', 'B', 'C', 'D'].map((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                    onChanged: (_) {},
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    ]);
  }
}
