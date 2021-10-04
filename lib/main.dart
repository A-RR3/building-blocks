import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      body: Container(
        // padding: const EdgeInsets.all(13.0),
        margin: const EdgeInsets.fromLTRB(10, 30, 10, 0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text("Center",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w700,
                    )),
              ],
            ),
            Column(
              children: [contain()],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    CircleAvatar(
                      radius: 18,
                      backgroundColor: Colors.grey,
                      child: Icon(Icons.account_balance_wallet,color: Colors.black,),
                    ),
                    Text('wallet')
                  ],
                ),
                Column(
                  children: [
                    CircleAvatar(
                      radius: 18,
                      backgroundColor: Colors.grey,
                      child: Icon(Icons.airport_shuttle,color: Colors.black,),
                    ),
                    Text('Delivary')
                  ],
                ),
                Column(
                  children: [
                    CircleAvatar(
                        radius: 18,
                        backgroundColor: Colors.grey,
                        child: Icon(Icons.message,color: Colors.black,)),
                    Text('Message')
                  ],
                ),
                Column(
                  children: [
                    CircleAvatar(
                      radius: 18,
                      backgroundColor: Colors.grey,
                      child: Icon(Icons.monetization_on_sharp,color: Colors.black,),
                    ),
                    Text('Service')
                  ],
                ),
              ],
            ),
            // Expanded(
            //   child: Column(
            //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //     children: [
            //       ListView.builder(
            //         itemCount: listOfSettings.length,
            //         itemBuilder: (BuildContext context, int index) {
            //           return SetItem(lst: listOfSettings[index]);
            //         },
            //       ),
            //     ],
            //   )
            // )
            SetItem(
                iconData: Icons.location_on_rounded,
                title: "Address",
                description: "Ensure your harvesting address",
              color: Colors.deepPurpleAccent,
            ),
            SetItem(
                iconData: Icons.lock,
                title: "Privacy",
                description: "System permission change",
              color: Colors.purpleAccent,
            ),
            SetItem(
                iconData: Icons.backup_table_rounded,
                title: "General",
                description: "Basic functiondl settings",
            color: Colors.orange,),
            SetItem(
                iconData: Icons.notifications_active,
                title: "Notification",
                description: "Take over the news in time",
            color: Colors.lightBlueAccent,)
          ],
        ),
      ),
    ));
  }
}

class contain extends StatelessWidget {
  const contain({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 145,
      alignment: Alignment.topRight,
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        color: Colors.blue,
        child: Padding(
            padding: const EdgeInsets.all(4.5),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Row(
                  children: [
                    const CircleAvatar(
                      backgroundColor: Colors.black,
                      radius: 33.0,
                      backgroundImage:
                          AssetImage('./lib/assets/images/anonymous.jpg'),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(25.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const [
                                Text(
                                  "Arwa Ragheb Arafa",
                                  style: TextStyle(
                                      fontSize: 18,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w500),
                                ),
                                Icon(
                                  Icons.edit_outlined,
                                  size: 20,
                                  color: Colors.white,
                                )
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  "A trendsetter",
                                  style: TextStyle(
                                      fontSize: 15, color: Colors.white),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        Text(
                          "561",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w900,
                              color: Colors.white),
                        ),
                        Text(
                          "Collect",
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: Colors.white),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Text(
                          "51",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w900,
                              color: Colors.white),
                        ),
                        Text(
                          "Attention",
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: Colors.white),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Text(
                          "267",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w900,
                              color: Colors.white),
                        ),
                        Text(
                          "Track",
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: Colors.white),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Text(
                          "39",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w900,
                              color: Colors.white),
                        ),
                        Text(
                          "Coupons",
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: Colors.white),
                        )
                      ],
                    )
                  ],
                )
              ],
            )),
      ),
    );
  }
}

class Setting {
  IconData icon;
  String topic;
  String description;
  Color color;

  Setting(this.icon, this.topic, this.description,this.color);
}

List<Setting> listOfSettings = [
  Setting(
      Icons.location_on_rounded, "Address", "Ensure your harvesting address",Colors.deepPurpleAccent),
  Setting(
      Icons.location_on_rounded, "Address", "Ensure your harvesting address",Colors.purpleAccent),
  Setting(
      Icons.location_on_rounded, "Address", "Ensure your harvesting address",Colors.orange),
  Setting(
      Icons.location_on_rounded, "Address", "Ensure your harvesting address",Colors.lightBlueAccent)
];

class SetItem extends StatelessWidget {
  // const SetItem({Key? key}) : super(key: key);

  // final Setting lst;

  // SetItem({required this.lst});
  final IconData iconData;
  final String title;
  final String description;
  final Color color;

  SetItem(
      {required this.iconData, required this.title, required this.description,required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(10, 0, 10, 6),
      height: 70,
      child: Card(
        shadowColor: Colors.lightBlueAccent,
        elevation: 20,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
                alignment: Alignment.center,
                padding: EdgeInsets.all(6),
                child: CircleAvatar(
                  backgroundColor: this.color ,
                  child: Icon(
                    this.iconData,
                    size: 25,
                    color: Colors.white,
                  ),
                )),
            Expanded(
                child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        this.title,
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                      Text(
                        this.description,
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                            color: Colors.grey),
                      )
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.arrow_forward_ios, color: Colors.grey),
                    ],
                  )
                ],
              ),
            ))
          ],
        ),
      ),
    );
  }
}
