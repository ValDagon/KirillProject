import 'package:flutter/material.dart';
import 'package:pc_booking/home_screen.dart';

class TicketGood extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Body(context),
    );
  }
}

Widget Body(context) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      Icon(
        Icons.check_circle_outline,
        size: 72,
        color: Colors.white,
      ),
      Padding(
        padding: const EdgeInsets.all(20.0),
        child: Text(
          "Продукт добавлен в список покупок",
          style: TextStyle(color: Colors.white, fontSize: 18),
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(10.0),
        child: ButtonTheme(
          minWidth: 500,
          height: 50,
          child: RaisedButton(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => HomeScreen()));
            },
            color: Colors.lightBlue,
            child: Text(
              "Назад",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
          ),
        ),
      ),
    ],
  );
}
