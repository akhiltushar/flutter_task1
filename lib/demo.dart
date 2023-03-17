import 'package:flutter/material.dart';


class Demo extends StatefulWidget {
  const Demo({super.key});

  @override
  State<Demo> createState() => _DemoState();
}

class _DemoState extends State<Demo> {
  var data = [
    {"id": 0, "icon": "🎯", "title": "Win the goals", "isSelected": false},
    {"id": 1, "icon": "🤑", "title": "Have more money", "isSelected": false},
    {"id": 2, "icon": "⏰", "title": "Be productive", "isSelected": false},
    {"id": 3, "icon": "👨‍👩‍👧‍👦", "title": "Build strong family", "isSelected": false},
    {"id": 4, "icon": "💪🏻", "title": "Have a healthy body", "isSelected": false},
    {"id": 5, "icon": "👩‍❤️‍👨", "title": "Love & be loved", "isSelected": false},
    {"id": 6, "icon": "🚀", "title": "Joined the forces", "isSelected": false},
    {"id": 7, "icon": "🗺", "title": "Explore more countries", "isSelected": false},
    {"id": 8, "icon": "🎥", "title": "Behind the camera", "isSelected": false},
    {"id": 9, "icon": "🇮🇳", "title": "Know more about India", "isSelected": false},
  ];
  var selectedRadio = 0;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: data.length,
        itemBuilder: (BuildContext context, int index) {
          var item = data[index];
          return Container(
            height: 60,
            width: 300, // MediaQuery
            margin: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: item["isSelected"] == true
                  ? Colors.lightBlueAccent
                  : Colors.white,
              borderRadius: BorderRadius.circular(15),
            ),
            child: Row(
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                // ignore: prefer_const_constructors
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    item["icon"].toString(),
                    style: const TextStyle(fontSize: 20),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  item["title"].toString(),
                  style: TextStyle(
                    color: item["isSelected"] == true
                        ? Colors.white
                        : Colors.black,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const Expanded(
                  child: SizedBox(),
                ),
                InkWell(
                  onTap: () {
                    seletedList(item);
                  },
                  child: Icon(item["isSelected"] == false
                      ? Icons.radio_button_off
                      : Icons.radio_button_checked),
                ),
                const SizedBox(
                  width: 10,
                ),
              ],
            ),
          );
        });
  }

  seletedList(item) {
    print("sassas");
    var temp = [...data];
    temp
        .map((e) => {
              if (e["title"] == item["title"])
                {
                  e["isSelected"] = e["isSelected"] == true ? false : true,
                }
            })
        .toList();

    setState(() {
      data = temp;
    });
  }
}
