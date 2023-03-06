import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Demo extends StatefulWidget {
  const Demo({super.key});

  @override
  State<Demo> createState() => _DemoState();
}

class _DemoState extends State<Demo> {
  var data = [
    {"id": 0, "icon": "🎯", "title": "Win the goals", "isSelected": false},
    {"id": 1, "icon": "🎯", "title": "Win the ", "isSelected": false},
    {"id": 2, "icon": "🎯", "title": "Win  goals", "isSelected": false},
    {"id": 3, "icon": "🎯", "title": "Win tgdgdhe goals", "isSelected": false},
    {"id": 4, "icon": "🎯", "title": "Win dfgdf goals", "isSelected": false},
  ];
  var selectedRadio = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView.builder(
            itemCount: data.length,
            itemBuilder: (BuildContext context, int index) {
              var item = data[index];
              return InkWell(
                child: Container(
                  height: 60,
                  width: 300,
                  margin: EdgeInsets.all(10),
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
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(item["title"].toString(),
                          style: TextStyle(
                              color: item["isSelected"] == true
                                  ? Colors.white
                                  : Colors.black,
                              fontWeight: FontWeight.w500)),
                      const SizedBox(
                        width: 115,
                      ),

                      InkWell(
                        onTap: () {
                          seletedList(item);
                        },
                        child: Icon(item["isSelected"] == false
                            ? Icons.radio_button_off
                            : Icons.radio_button_checked),
                      )
                    ],
                  ),
                ),
              );
            }));
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
