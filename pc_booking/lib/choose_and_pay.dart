import 'package:flutter/material.dart';
import 'package:pc_booking/ticket_good.dart';

class ChooseAndPay extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black87,
          title: Text(
            "Заполните заявку",
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: booking(context));
  }

  @override
  Widget booking(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Ваш Username",
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
              Container(
                color: Colors.white,
                child: TextFormField(
                  decoration: const InputDecoration(
                    hintText: '@Kirill',
                    hintStyle: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                    fillColor: Colors.black54,
                    filled: true,
                  ),
                  validator: (String value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter some text';
                    }
                    return null;
                  },
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Text(
                "Ваше имя",
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
              Container(
                color: Colors.white,
                child: TextFormField(
                  decoration: const InputDecoration(
                    hintText: 'Кирилл Людженский',
                    hintStyle: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                    fillColor: Colors.black54,
                    filled: true,
                  ),
                  validator: (String value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter some text';
                    }
                    return null;
                  },
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Text(
                "Номер телефона",
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
              Container(
                color: Colors.white,
                child: TextFormField(
                  decoration: const InputDecoration(
                    hintText: '89058201238',
                    hintStyle: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                    fillColor: Colors.black54,
                    filled: true,
                  ),
                  validator: (String value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter some text';
                    }
                    return null;
                  },
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Text(
                "Номер столика",
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
              Container(
                color: Colors.white,
                child: TextFormField(
                  decoration: const InputDecoration(
                    hintText: '12',
                    hintStyle: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                    fillColor: Colors.black54,
                    filled: true,
                  ),
                  validator: (String value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter some text';
                    }
                    return null;
                  },
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Text(
                "Время бронирования",
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
              Container(
                color: Colors.white,
                child: TextFormField(
                  decoration: const InputDecoration(
                    hintText: '12 : 45',
                    hintStyle: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                    fillColor: Colors.black54,
                    filled: true,
                  ),
                  validator: (String value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter some text';
                    }
                    return null;
                  },
                ),
              ),
              SizedBox(
                height: 8,
              ),
              ButtonTheme(
                minWidth: 500,
                height: 50,
                child: RaisedButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => TicketGood()));
                  },
                  color: Colors.lightBlue,
                  child: Text(
                    "Подтвердить",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
