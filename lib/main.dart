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
        margin: const EdgeInsets.fromLTRB(10,30, 10, 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text("Center",
                    style: TextStyle(
                      fontSize: 30,
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
                    Icon(Icons.account_balance_wallet),
                    Text('wallet')
                  ],
                ),
                Column(
                  children: [Icon(Icons.airport_shuttle), Text('Delivary')],
                ),
                Column(
                  children: [Icon(Icons.message), Text('Message')],
                ),
                Column(
                  children: [
                    Icon(Icons.monetization_on_sharp),
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
            SetItem(iconData:  Icons.location_on_rounded, title:"Address", description:"Ensure your harvesting address"),
            SetItem(iconData:  Icons.lock, title:"Privacy", description:"System permission change"),
            SetItem(iconData:  Icons.backup_table_rounded, title:"General", description:"Basic functiondl settings"),
            SetItem(iconData:  Icons.notifications_active, title:"Notification", description:"Take over the news in time")
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
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        color: Colors.blue,
        child: Padding(
            padding: const EdgeInsets.all(4.5),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    const CircleAvatar(
                      backgroundColor: Colors.black,
                      radius: 35.0,
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

  Setting(this.icon, this.topic, this.description);
}

List<Setting> listOfSettings = [
  Setting(
      Icons.location_on_rounded, "Address", "Ensure your harvesting address"),
  Setting(
      Icons.location_on_rounded, "Address", "Ensure your harvesting address"),
  Setting(
      Icons.location_on_rounded, "Address", "Ensure your harvesting address"),
  Setting(
      Icons.location_on_rounded, "Address", "Ensure your harvesting address")
];

class SetItem extends StatelessWidget {
  // const SetItem({Key? key}) : super(key: key);

  // final Setting lst;

  // SetItem({required this.lst});
  final IconData iconData;
  final String title;
  final String description;

  SetItem({required this.iconData,required this.title,required this.description });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(4),
      height: 80,
      child: Card(
        shadowColor: Colors.blue,
        elevation: 20,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              alignment: Alignment.center,
              padding: EdgeInsets.all(6),
              child: CircleAvatar(
               child:  Icon(
                 this.iconData,
                 size: 25,
               ),
              )
            ),
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
