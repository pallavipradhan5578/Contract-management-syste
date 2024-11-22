import 'package:flutter/material.dart';
import 'package:twentyoneassignment/views/action_page.dart';
import 'package:twentyoneassignment/views/contract_list_view.dart';
import 'package:twentyoneassignment/utills/colors.dart';
import 'package:twentyoneassignment/views/notification_Page.dart';
import 'package:twentyoneassignment/views/profile_page.dart';

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    HomePage(),
    ActionPage(),
    NotificationPage(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.indigo.shade100,
        height: MediaQuery.of(context).size.height / 1,
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height /
                  7, // 10% of screen height
              width: MediaQuery.of(context).size.width, // 10% of screen width
              decoration: BoxDecoration(
                color: Colors.indigo.shade500,
                borderRadius:  BorderRadius.only(
                  bottomLeft: Radius.circular(35), // Bottom-left corner radius
                  bottomRight:
                      Radius.circular(45), // Bottom-right corner radius
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 18.0,right: 18,top:20),
                child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [Text("ECL",style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold),), Icon(Icons.people_rounded,color: Colors.white,size: 35,)],
                ),
              ),
            ),
            Expanded(child: _pages[_currentIndex]),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: AppColors.Primarycolor,
        foregroundColor: AppColors.white,
        onPressed: () {
          // Add logic for creating a new contract.
        },
        child:  Icon(Icons.add),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (int index) {
          setState(() {
            _currentIndex = index;
          });
        },
        type: BottomNavigationBarType.fixed,
        selectedItemColor: AppColors.Primarycolor,
        unselectedItemColor: Colors.black,
        items:  [
          BottomNavigationBarItem(
            icon: Icon(Icons.home,),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.document_scanner_outlined),
            label: 'Action',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications_none_rounded),
            label: 'Notification',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
