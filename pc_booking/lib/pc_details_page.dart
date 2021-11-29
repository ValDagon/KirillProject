import 'package:blurrycontainer/blurrycontainer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pc_booking/choose_and_pay.dart';

class CoffeeDetailsPage extends StatelessWidget {
  const CoffeeDetailsPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.all(10),
            child: Column(
              children: [
                Stack(
                  children: [
                    Container(
                      height: 440,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          image: DecorationImage(
                              image: AssetImage("images/PCSTAND.jpg"),
                              fit: BoxFit.cover)),
                    ),
                    Positioned(
                      top: 320,
                      child: BlurryContainer(
                        padding: EdgeInsets.all(20),
                        height: 140,
                        bgColor: Color(0xff141921),
                        width: 377,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(30),
                            topRight: Radius.circular(30),
                            bottomLeft: Radius.circular(25)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "ПК",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  "СТАНДАРТ",
                                  style: TextStyle(
                                    color: Color(0xff919296),
                                    fontSize: 12,
                                  ),
                                ),
                                SizedBox(
                                  height: 15,
                                ),
                                Row(
                                  children: [
                                    SvgPicture.asset(
                                      "images/star.svg",
                                      height: 20,
                                      color: Color(0xffd17842),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      "4.5",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 8,
                                    ),
                                    Text(
                                      "(102)",
                                      style:
                                          TextStyle(color: Color(0xff919296)),
                                    )
                                  ],
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      height: 48,
                                      width: 48,
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Icon(
                                            Icons.food_bank,
                                            color: Color(0xffd17842),
                                          ),
                                          SizedBox(
                                            height: 4,
                                          ),
                                          Text(
                                            "Еда",
                                            style: TextStyle(
                                                color: Color(0xff919296),
                                                fontSize: 10,
                                                fontWeight: FontWeight.bold),
                                          )
                                        ],
                                      ),
                                      decoration: BoxDecoration(
                                          color: Color(0xff101419),
                                          borderRadius:
                                              BorderRadius.circular(8)),
                                    ),
                                    SizedBox(
                                      width: 15,
                                    ),
                                    Container(
                                      height: 48,
                                      width: 48,
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Icon(
                                            Icons.opacity_outlined,
                                            color: Color(0xffd17842),
                                          ),
                                          SizedBox(
                                            height: 4,
                                          ),
                                          Text(
                                            "Напитки",
                                            style: TextStyle(
                                                color: Color(0xff919296),
                                                fontSize: 10,
                                                fontWeight: FontWeight.bold),
                                          )
                                        ],
                                      ),
                                      decoration: BoxDecoration(
                                          color: Color(0xff101419),
                                          borderRadius:
                                              BorderRadius.circular(8)),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Container(
                                  height: 37,
                                  width: 120,
                                  child: Center(
                                      child: Text(
                                    "Подробнее",
                                    style: TextStyle(
                                        color: Color(0xff919296),
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold),
                                  )),
                                  decoration: BoxDecoration(
                                      color: Color(0xff101419),
                                      borderRadius: BorderRadius.circular(8)),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Описание",
                        style: TextStyle(
                            color: Color(0xff919296),
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        "Процессор: CORE i5 10400F\nВидеокарта: 1660SUPER\nОЗУ: 16 ГБ",
                        style:
                            TextStyle(color: Color(0xff919296), fontSize: 15),
                      ),
                      Text(
                        "Показать полностью",
                        style: TextStyle(color: Colors.lightBlue, fontSize: 15),
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Row(children: [
                        Text(
                          "Ваш промокод: ",
                          style: TextStyle(color: Colors.white70, fontSize: 20),
                        ),
                        SizedBox(
                          height: 48,
                          width: 198,
                          child: Expanded(
                            child: TextField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10)),
                                fillColor: Colors.blueGrey,
                                filled: true,
                              ),
                            ),
                          ),
                        ),
                      ]),
                      SizedBox(
                        height: 16,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Итого:",
                                style: TextStyle(
                                    color: Color(0xff919296),
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                children: [
                                  Text(
                                    " 60",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 21),
                                  ),
                                  Text(
                                    r' руб',
                                    style: TextStyle(
                                        color: Colors.white70, fontSize: 21),
                                  ),
                                ],
                              )
                            ],
                          ),
                          // ignore: deprecated_member_use
                          ButtonTheme(
                            minWidth: 200,
                            height: 50,
                            child: RaisedButton(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20)),
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => ChooseAndPay()));
                              },
                              color: Colors.lightBlue,
                              child: Text(
                                "Оплатить",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18),
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
