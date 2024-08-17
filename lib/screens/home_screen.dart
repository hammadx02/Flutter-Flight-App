import 'package:flightapp/widgets/choice_chips.dart';
import 'package:flightapp/widgets/city_card.dart';
import 'package:flightapp/widgets/custom_shape_clipper.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: <Widget>[
          HomeScreenTopPart(),
          SizedBox(
            height: 20.0,
          ),
          HomeScreenBottomPart()
        ],
      ),
    );
  }
}

class HomeScreenTopPart extends StatefulWidget {
  const HomeScreenTopPart({Key? key}) : super(key: key);

  @override
  _HomeScreenTopPartState createState() => _HomeScreenTopPartState();
}

class _HomeScreenTopPartState extends State<HomeScreenTopPart> {
  var selectedIndex = 0;
  var isFlightSelected = true;

  // Define the locations
  final List<String> locations = ['Location 1', 'Location 2'];

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        ClipPath(
          clipper: CustomShapeClipper(),
          child: Container(
            height: 360.0,
            decoration: BoxDecoration(
                gradient: LinearGradient(colors: [Colors.blue, Colors.purple])),
            child: Column(
              children: <Widget>[
                const SizedBox(
                  height: 30.0,
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Row(
                    children: <Widget>[
                      const Icon(
                        Icons.location_on,
                        color: Colors.white,
                      ),
                      const SizedBox(
                        width: 16.0,
                      ),
                      PopupMenuButton(
                        onSelected: (int index) {
                          setState(() {
                            selectedIndex = index;
                          });
                        },
                        child: Row(
                          children: <Widget>[
                            Text(locations[selectedIndex], style: TextStyle(color: Colors.white, fontSize: 16.0)),
                          ],
                        ),
                        itemBuilder: (BuildContext context) =>
                            <PopupMenuItem<int>>[
                          PopupMenuItem(
                            value: 0,
                            child: Text(locations[0], style: TextStyle(color: Colors.black)),
                          ),
                          PopupMenuItem(
                            value: 1,
                            child: Text(locations[1], style: TextStyle(color: Colors.black)),
                          )
                        ],
                      ),
                      const Spacer(),
                      const Icon(
                        Icons.settings,
                        color: Colors.white,
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 30.0,
                ),
                const Text(
                  'Where would \n you want to go ?',
                  style: TextStyle(
                    fontSize: 24.0,
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 30.0,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 32.0),
                  child: Material(
                    elevation: 10.0,
                    borderRadius: const BorderRadius.all(Radius.circular(30.0)),
                    child: TextField(
                      controller: TextEditingController(text: locations[1]),
                      style: TextStyle(color: Colors.black, fontSize: 16.0),
                      cursorColor: Theme.of(context).primaryColor,
                      decoration: const InputDecoration(
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.symmetric(
                              horizontal: 16.0, vertical: 15.0),
                          suffixIcon: Material(
                            elevation: 2.0,
                            borderRadius:
                                BorderRadius.all(Radius.circular(30.0)),
                            child: Icon(
                              Icons.search,
                              color: Colors.black,
                            ),
                          )),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    InkWell(
                        onTap: () {
                          setState(() {
                            isFlightSelected = true;
                          });
                        },
                        child: ChoiceChips(
                          icon: Icons.airplanemode_active,
                          name: "Flights",
                          isSelected: isFlightSelected,
                        )),
                    InkWell(
                        onTap: () {
                          setState(() {
                            isFlightSelected = false;
                          });
                        },
                        child: ChoiceChips(
                          icon: Icons.hotel,
                          name: "Hotels",
                          isSelected: !isFlightSelected,
                        )),
                  ],
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}

class HomeScreenBottomPart extends StatefulWidget {
  const HomeScreenBottomPart({Key? key}) : super(key: key);

  @override
  _HomeScreenBottomPartState createState() => _HomeScreenBottomPartState();
}

class _HomeScreenBottomPartState extends State<HomeScreenBottomPart> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 0.0, horizontal: 20.0),
              child: Row(
                children: <Widget>[
                  Text("Currently Watched Items",
                      style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w600)),
                  const Spacer(),
                  Text(
                    "View all (12)".toUpperCase(),
                    style: const TextStyle(
                        fontSize: 14.5,
                        letterSpacing: 0.5,
                        fontWeight: FontWeight.w700,
                        color: Colors.orange),
                  )
                ],
              ),
            ),
            const SizedBox(height: 10.0),
            SizedBox(
              height: 244.0,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: cityCards, // Ensure cityCards is defined or imported
              ),
            ),
            const SizedBox(height: 20.0),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 0.0, horizontal: 20.0),
              child: Row(
                children: <Widget>[
                  Text("Featured Destinations",
                      style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w600)),
                  const Spacer(),
                  Text(
                    "View all (9)".toUpperCase(),
                    style: const TextStyle(
                        fontSize: 14.5,
                        letterSpacing: 0.5,
                        fontWeight: FontWeight.w700,
                        color: Colors.orange),
                  )
                ],
              ),
            ),
            const SizedBox(height: 10.0),
            SizedBox(
              height: 244.0,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: featuredCountries, // Ensure featuredCountries is defined or imported
              ),
            )
          ],
        ),
      ),
    );
  }
}

// Define your lists of CityCards
final List<CityCard> cityCards = [
  CityCard(
    title: 'Las Vegas',
    imagePath: 'assets/images/lasvegas.jpg',
    cityName: 'Las Vegas',
    monthYear: 'Feb 2019',
    discount: '45%',
    oldPrice: '1000',
    newPrice: '399',
  ),
  CityCard(
    title: 'Athens',
    imagePath: 'assets/images/athens.jpg',
    cityName: 'Athens',
    monthYear: 'Jan 2019',
    discount: '45%',
    oldPrice: '1000',
    newPrice: '399',
  ),
  CityCard(
    title: 'Sydney',
    imagePath: 'assets/images/sydney.jpeg',
    cityName: 'Sydney',
    monthYear: 'Apr 2019',
    discount: '45%',
    oldPrice: '1000',
    newPrice: '399',
  ),
];

final List<CityCard> featuredCountries = [
  CityCard(
    title: 'Rome',
    imagePath: 'assets/images/rome.jpg',
    cityName: 'Rome',
    monthYear: 'May 2019',
    discount: '45%',
    oldPrice: '1000',
    newPrice: '399',
  ),
  CityCard(
    title: 'Paris',
    imagePath: 'assets/images/paris.jpg',
    cityName: 'Paris',
    monthYear: 'June 2019',
    discount: '45%',
    oldPrice: '1000',
    newPrice: '399',
  ),
  CityCard(
    title: 'Tokyo',
    imagePath: 'assets/images/tokyo.jpg',
    cityName: 'Tokyo',
    monthYear: 'Sep 2019',
    discount: '45%',
    oldPrice: '1000',
    newPrice: '399',
  ),
];
