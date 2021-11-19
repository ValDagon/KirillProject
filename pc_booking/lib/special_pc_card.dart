import 'package:flutter/material.dart';

class SpecialCoffeeCard extends StatelessWidget {
  List<String> specialImages = [
    "images/abonement_blue.png",
    "images/abonement_orange.png",
    "images/abonement_red.png"
  ];

  List<String> coffeeName = [
    "Утренний абонемент ",
    "Ночной абонемент",
    "Полуночник"
  ];

  List<String> ingredients = [
    "08:15 - 13:15",
    "22:00 - 08:00",
    "22:00 - 03:00"
  ];

  List<String> price = ["200", "400", "250"];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        itemCount: specialImages.length,
        itemBuilder: (context, index) {
          return Column(
            children: [
              Container(
                height: 140,
                width: MediaQuery.of(context).size.width,
                child: Row(
                  children: [
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      height: 120,
                      width: 150,
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          image: DecorationImage(
                              image: AssetImage(specialImages[index]),
                              fit: BoxFit.cover),
                          borderRadius: BorderRadius.circular(20)),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          coffeeName[index],
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(
                          height: 6,
                        ),
                        Text(
                          ingredients[index],
                          style: TextStyle(color: Colors.white70, fontSize: 13),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Text(
                                  "${price[index]}",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  r' руб ',
                                  style: TextStyle(
                                      color: Colors.white70,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20),
                                ),
                              ],
                            ),
                            SizedBox(
                              width: 60,
                            ),
                            Container(
                                height: 30,
                                width: 30,
                                decoration: BoxDecoration(
                                    color: Colors.blueGrey,
                                    borderRadius: BorderRadius.circular(10)),
                                child: Icon(
                                  Icons.add,
                                  color: Colors.white,
                                  size: 20,
                                ))
                          ],
                        ),
                      ],
                    )
                  ],
                ),
                decoration: BoxDecoration(
                    color: Color(0xff141921),
                    borderRadius: BorderRadius.circular(20)),
              ),
              SizedBox(
                height: 15,
              ),
            ],
          );
        });
  }
}
