import 'package:flutter/material.dart';
import 'package:flightapp/styles/styles.dart'; 

class CityCard extends StatelessWidget {
  final String imagePath, cityName, monthYear, discount, oldPrice, newPrice;
  const CityCard(
      {Key? key,
      required this.imagePath,
      required this.cityName,
      required this.monthYear,
      required this.discount,
      required this.oldPrice,
      required this.newPrice, required String title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Column(
        children: <Widget>[
          ClipRRect(
            borderRadius: const BorderRadius.all(Radius.circular(10.0)),
            child: Stack(
              children: <Widget>[
                SizedBox(
                  height: 210.0,
                  width: 160.0,
                  child: Image.asset(imagePath, fit: BoxFit.cover),
                ),
                Positioned(
                  left: 0.0,
                  bottom: 0.0,
                  width: 160.0,
                  height: 50.0,
                  child: Container(
                    decoration: const BoxDecoration(
                        gradient: LinearGradient(
                            begin: Alignment.bottomCenter,
                            end: Alignment.topCenter,
                            colors: [Colors.black, Colors.black12])),
                  ),
                ),
                Positioned(
                  left: 10.0,
                  bottom: 10.0,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        cityName,
                        style: dropDownTextStyle.copyWith(
                            fontSize: 20.0, fontWeight: FontWeight.w600),
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      Text(
                        monthYear,
                        style: dropDownTextStyle.copyWith(
                            fontSize: 16.0, color: Colors.white54),
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      Text(
                        "₹${oldPrice}",
                        style: dropDownTextStyle.copyWith(
                            fontSize: 18.0,
                            color: Colors.white,
                            decoration: TextDecoration.lineThrough),
                      ),
                      const SizedBox(
                        height: 5.0,
                      ),
                      Text(
                        "₹${newPrice}",
                        style: dropDownTextStyle.copyWith(
                            fontSize: 22.0, fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 20.0,
          ),
        ],
      ),
    );
  }
}
