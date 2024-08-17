// import 'package:flutter/material.dart';

// class CustomAppBar extends StatelessWidget {
//   final List<BottomNavigationBarItem> bottomBarItems = [];

//   CustomAppBar({key}) {
//     bottomBarItems.add(const BottomNavigationBarItem(
//       icon: Icon(Icons.home, color: Colors.black,),
//       label: Text("Explore", style: TextStyle(color: Colors.black))
//     ));
//     bottomBarItems.add(const BottomNavigationBarItem(
//       icon: Icon(Icons.home, color: Colors.black,),
//       label: Text("Explore", style: TextStyle(color: Colors.black))
//     ));
//     bottomBarItems.add(const BottomNavigationBarItem(
//       icon: Icon(Icons.home, color: Colors.black,),
//       label: Text("Explore", style: TextStyle(color: Colors.black))
//     ));
//     bottomBarItems.add(const BottomNavigationBarItem(
//       icon: Icon(Icons.home, color: Colors.black,),
//       label: Text("Explore", style: TextStyle(color: Colors.black))
//     ));
//   }

//   @override
//   Widget build(BuildContext context) {
//     return BottomNavigationBar(
//       items: bottomBarItems,
//       type: BottomNavigationBarType.fixed,
//     );
//   }
// }
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  final List<BottomNavigationBarItem> bottomBarItems = [];

  CustomAppBar({Key? key}) : super(key: key) {
    bottomBarItems.add(BottomNavigationBarItem(
      icon: Icon(Icons.home, color: Colors.black),
      label: "Explore",
    ));
    bottomBarItems.add(BottomNavigationBarItem(
      icon: Icon(Icons.home, color: Colors.black),
      label: "Explore",
    ));
    bottomBarItems.add(BottomNavigationBarItem(
      icon: Icon(Icons.home, color: Colors.black),
      label: "Explore",
    ));
    bottomBarItems.add(BottomNavigationBarItem(
      icon: Icon(Icons.home, color: Colors.black),
      label: "Explore",
    ));
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: bottomBarItems,
      type: BottomNavigationBarType.fixed,
    );
  }
}
