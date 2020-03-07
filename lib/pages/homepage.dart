import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var backgroudColor = Color.fromRGBO(44, 54, 76, 1);
    var messageColor = Color.fromRGBO(216, 227, 244, 1);
    var laranjaIti = Color.fromRGBO(236, 111, 1, 1);
    var rosaIti = Color.fromRGBO(255, 86, 141, 1);
    return Scaffold(
      backgroundColor: backgroudColor,
      appBar: AppBar(
        backgroundColor: backgroudColor,
        elevation: 0,
        leading: Transform.rotate(
          angle: -pi / 1.0,
          child: Icon(
            Icons.widgets,
            size: 30,
            color: Colors.white,
          ),
        ),
        title: Center(
            child: Image.asset(
          'images/logo-iti-itau-less.png',
          color: Colors.white,
          height: 25,
          width: 25,
          alignment: Alignment.bottomCenter,
        )),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.location_on,
              size: 30,
              color: Colors.white,
            ),
            onPressed: null,
          ),
        ],
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: 25),
            Center(
              child: Container(
                width: 80.0,
                height: 80.0,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: LinearGradient(
                    colors: [
                      laranjaIti,
                      rosaIti,
                    ],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                  border: Border.all(width: 2, color: Colors.transparent),
                ),
                child: CircleAvatar(
                  backgroundImage: NetworkImage(
                      'https://scontent.fcgh7-1.fna.fbcdn.net/v/t1.0-9/71939755_1396739890477972_262486711546675200_n.jpg?_nc_cat=107&_nc_sid=85a577&_nc_oc=AQk-eCQO0P0PkihE5h7aP_A8jFzmCcaDij-rNJ_sRF9j5KXy670bbXCe4Y8rsTjK4rAkOfQxOEDSddlrYswI47tW&_nc_ht=scontent.fcgh7-1.fna&oh=9a0cc01f2e45e1b5d5076447dd0f35cf&oe=5E919524'),
                ),
              ),
            ),
            SizedBox(height: 25),
            Text(
              'olá! o seu saldo é',
              style: TextStyle(
                color: messageColor,
                fontSize: 17,
              ),
            ),
            SizedBox(height: 15),
            Text(
              'R\$ 120,00',
              style: TextStyle(
                color: Colors.white,
                fontSize: 30,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(height: 15),
            Icon(
              Icons.visibility_off,
              color: Colors.white,
              size: 25,
            ),
            Spacer(),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: <Widget>[
                  SizedBox(
                    width: 10,
                  ),
                  Padding(
                    padding: EdgeInsets.all(5),
                    child: Container(
                      width: 150,
                      height: 180,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black12,
                            blurRadius: 1.0,
                            spreadRadius: 1.0,
                            offset: Offset(
                              1.0,
                              1.5,
                            ),
                          ),
                        ],
                        gradient: LinearGradient(
                          colors: [
                            laranjaIti,
                            rosaIti,
                          ],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: <Widget>[
                                Spacer(),
                                Transform(
                                  transform: Matrix4.skewX(0.4),
                                  child: Icon(
                                    Icons.menu,
                                    color: Colors.white24,
                                    size: 60,
                                  ),
                                ),
                                Text(
                                  '\$',
                                  style: TextStyle(
                                    color: Colors.white24,
                                    fontSize: 80,
                                  ),
                                ),
                              ],
                            ),
                            Spacer(),
                            Text(
                              'pagar',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Text(
                              'transferir',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(5),
                    child: Container(
                      width: 150,
                      height: 180,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            laranjaIti,
                            rosaIti,
                          ],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(5),
                    child: Container(
                      width: 150,
                      height: 180,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            laranjaIti,
                            rosaIti,
                          ],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Spacer(),
            Transform.rotate(
              angle: 270 * pi / 180,
              child: ButtonTheme(
                height: 25,
                child: RaisedButton(
                  onPressed: () {},
                  child: new Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.black87,
                    size: 20.0,
                  ),
                  shape: new CircleBorder(),
                  color: Colors.white,
                ),
              ),
            ),
            Text(
              'tudo sobre seu iti',
              style: TextStyle(
                color: Colors.white,
                fontSize: 14,
              ),
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
