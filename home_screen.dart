import 'package:flutter/material.dart';
import '../multiple_widgets.dart';
import '../peoplelist.dart';
import 'drawer.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late List<PeopleOne> peoplelist;

  @override
  void initState() {
    peoplelist = [
      PeopleOne(
        id: "1",
        name: "Total Engagements",
      ),
      PeopleOne(
        id: "2",
        name: "Commercial Engagements",
      ),
      PeopleOne(id: "3", name: "Medical Engagements"),
    ];

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color(0xffededeb),
      appBar: AppBar(
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(height: 80),
                Text(
                  "360",
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.orange),
                ),
                SizedBox(width: 5.0),
                Text(
                  "CONNEX",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
                SizedBox(width: 20.0),
                Container(
                  height: 25.0,
                  width: 160,
                  color: Colors.white,
                  child: Center(
                    child: Text(
                      "search",
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
        toolbarHeight: 80,
        backgroundColor: Colors.deepPurple,
      ),
      drawer: const AppDrawer(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 2.0,
            ),
            //   SizedBox(height: 20,),
            Container(
              height: 50,
              width: MediaQuery.of(context).size.width,
              color: Colors.deepPurple,
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.15,
              width: MediaQuery.of(context).size.width,
              color: Colors.white,
              child: Column(
                children: [
                  const SizedBox(height: 10),
                  const Center(
                      child: Text(
                    "Dashboard",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  )),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Padding(
                      padding: EdgeInsets.only(left: 5.0, right: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text(
                            "Date Range :",
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.w400),
                          ),
                          Text(
                            "My View",
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.w400),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10, right: 20),
                    child: Row(
                      children: [
                        Container(
                            height: 30,
                            width: 150,
                            decoration: BoxDecoration(
                                borderRadius: const BorderRadius.all(
                                  Radius.circular(5.0),
                                ),
                                border: Border.all(color: Colors.black54)),
                            child: Align(
                                alignment: Alignment.bottomRight,
                                child: DropdownButton<String>(
                                  icon: const Icon(Icons.arrow_drop_down),
                                  items: <String>['A', 'B', 'C', 'D']
                                      .map((String value) {
                                    return DropdownMenuItem<String>(
                                      value: value,
                                      child: Text(value),
                                    );
                                  }).toList(),
                                  onChanged: (_) {},
                                ))),
                        const SizedBox(
                          width: 20.0,
                        ),
                        Container(
                            height: 30,
                            width: 160,
                            decoration: BoxDecoration(
                                borderRadius: const BorderRadius.all(
                                    Radius.circular(5.0)),
                                border: Border.all(color: Colors.black54)),
                            child: Align(
                              alignment: Alignment.bottomRight,
                              child: DropdownButton<String>(
                                icon: const Icon(Icons.arrow_drop_down),
                                items: <String>['A', 'B', 'C', 'D']
                                    .map((String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(value),
                                  );
                                }).toList(),
                                onChanged: (_) {},
                              ),
                            )),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 15),
            GridView.count(
              physics: const NeverScrollableScrollPhysics(),
              scrollDirection: Axis.vertical,
              crossAxisCount: 1,
              //
              shrinkWrap: true,
              children: peoplelist.map((people) {
                return Container(
                  height: 200,
                  width: 300,
                  // elevation: 10,
                  margin: EdgeInsets.all(20), //shadow elevation for card

                  child: Container(
                    color: Colors.white,
                    child: Column(
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(right: 100, top: 15),
                          child: Text(people.name,
                              style: const TextStyle(fontSize: 20)),
                        ),
                        const Divider(
                          height: 10.0,
                          color: Colors.black26,
                          endIndent: 10,
                          indent: 10,
                          thickness: 1.0,
                        ),
                        const SizedBox(
                          height: 5.0,
                        ),
                        Row(
                          children: [
                            const SizedBox(width: 10.0),
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
                          ],
                        ),
                        const SizedBox(height: 10.0),
                        Container(
                          height: 40,
                          width: 300,
                          color: const Color(0xffededeb),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: const [
                              Text(
                                "Q1:33",
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "Q2:15",
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "Q3:24",
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "Q4:_",
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "Total:72",
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 10),
                        Row(
                          children: [
                            const SizedBox(width: 10.0),
                            Container(
                              height: 15,
                              width: 15,
                              decoration: const BoxDecoration(
                                  shape: BoxShape.circle, color: Colors.blue),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            const Text('MM Portfollo'),
                          ],
                        ),
                        const SizedBox(height: 10.0),
                        Container(
                          height: 40,
                          width: 300,
                          color: const Color(0xffededeb),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: const [
                              Text(
                                "Q1:0",
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "Q2:26",
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "Q3:10",
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "Q4:18",
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "Total:54",
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            const SizedBox(width: 10.0),
                            Container(
                              height: 15,
                              width: 15,
                              decoration: const BoxDecoration(
                                  shape: BoxShape.circle, color: Colors.orange),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            const Text('Prostate Franchise'),
                          ],
                        ),
                        const SizedBox(height: 10.0),
                        Container(
                          height: 40,
                          width: 300,
                          color: Color(0xffededeb),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: const [
                              Text(
                                "Q1:33",
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "Q2:15",
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "Q3:24",
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "Q4:_",
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "Total:72",
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              }).toList(), //don't forget to to add .toList() at last of map
            ),
            const SizedBox(height: 10),
            Container(
              height: 250,
              width: 350,
              color: Colors.white,
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(right: 180, top: 10),
                    child: Text(
                      "KOL Overview",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Divider(
                    height: 10.0,
                    color: Colors.black54,
                    endIndent: 10,
                    indent: 10,
                    thickness: 1.0,
                  ),
                  SizedBox(
                    height: 5.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        "Total KOLs",
                        style: TextStyle(
                            fontSize: 12, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "261",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "Target KOLs",
                        style: TextStyle(
                            fontSize: 12, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "261",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Padding(
                    padding: EdgeInsets.only(right: 160),
                    child: Text(
                      "KOL Classification",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        "Academic:184",
                        style: TextStyle(
                            fontSize: 12, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "Community:42",
                        style: TextStyle(
                            fontSize: 12, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "LUGPA:42",
                        style: TextStyle(
                            fontSize: 12, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Container(
                    height: 50,
                    width: 150,
                    decoration: BoxDecoration(
                      //  shape: BoxShape.circle,
                      color: Colors.deepPurple,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                      child: Text(
                        "KOL profiles",
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
            Container(
              height: 250,
              width: 350,
              color: Colors.white,
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(right: 180, top: 10),
                    child: Text(
                      "Institutions",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Divider(
                    height: 10.0,
                    color: Colors.black54,
                    endIndent: 10,
                    indent: 10,
                    thickness: 1.0,
                  ),
                  SizedBox(
                    height: 5.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        "Total Engagments",
                        style: TextStyle(
                            fontSize: 12, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "146",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "Total Institutions",
                        style: TextStyle(
                            fontSize: 12, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "155",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Padding(
                    padding: EdgeInsets.only(right: 160),
                    child: Text(
                      "KOL Classification",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        "Academic:184",
                        style: TextStyle(
                            fontSize: 12, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "Community:42",
                        style: TextStyle(
                            fontSize: 12, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "LUGPA:42",
                        style: TextStyle(
                            fontSize: 12, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Container(
                    height: 50,
                    width: 150,
                    decoration: BoxDecoration(
                      //  shape: BoxShape.circle,
                      color: Colors.deepPurple,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Center(
                      child: Text(
                        "KOL profiles",
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
             Activity(),
            SizedBox(height: 10),
            Container(height: 250,width: 350,color: Colors.white,
            ),
            SizedBox(height: 10),
            Container(height: 250,width: 350,color: Colors.white,
            ),
            SizedBox(height: 10),
            Container(height: 250,width: 350,color: Colors.white,
            ),
          ],
        ),
      ),
    );
    //const SizedBox(height: 20),
    // const Activity(),
  }
}
