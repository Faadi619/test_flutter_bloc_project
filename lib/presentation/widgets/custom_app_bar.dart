import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:test_flutter_bloc_project/const/assets.dart';

class CustomAppBar extends StatefulWidget {
  const CustomAppBar({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _CustomAppBarState createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CustomAppBar> {
  // Dummy list of names for the dropdown
  List<String> daycareNames = [
    'Nom de la garderie',
    'Garderie A',
    'Garderie B'
  ];
  String? selectedDaycare = 'Nom de la garderie'; // Default selected value

  // Dummy list of actions for the right-side dropdown
  List<String> userOptions = ['Profile', 'Settings', 'Logout'];
  String selectedUserOption =
      'Marie-Christine'; // Default display value for user

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width - 350,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset(
                      placeHolderImage, // Placeholder for logo
                      height: 40,
                      width: 40,
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      DropdownButton<String>(
                        isDense: true,
                        value: selectedDaycare,
                        focusColor: Colors.white,
                        icon: const Padding(
                          padding: EdgeInsets.only(left: 10.0),
                          child: Icon(
                            Icons.keyboard_arrow_down,
                            color: Colors.black,
                          ),
                        ),
                        iconSize: 24,
                        elevation: 0,
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                        underline: Container(
                          height: 0, // Removes the underline
                        ),
                        onChanged: (String? newValue) {
                          setState(() {
                            selectedDaycare = newValue!;
                          });
                        },
                        items: daycareNames
                            .map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                      ),
                      const SizedBox(height: 5),
                      const Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Icon(
                            Icons.phone,
                            color: Colors.black54,
                            size: 16,
                          ),
                          SizedBox(width: 5),
                          Text(
                            '(581) 999-7812',
                            style: TextStyle(
                              color: Colors.black54,
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  InkWell(
                    onTap: () {
                      //TODO: Add Notification Function here.
                    },
                    child: Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: const Center(
                        child: Badge(
                          backgroundColor: Color(0xffF2293F),
                          label: Text(
                            '2',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 8,
                            ),
                          ),
                          child: Icon(
                            Icons.notifications_outlined,
                            color: Colors.black,
                            size: 24,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  InkWell(
                    onTap: () {
                      //TODO: Add Chat Function here.
                    },
                    child: Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: const Center(
                        child: Badge(
                          backgroundColor: Color(0xffF2293F),
                          label: Text(
                            '2',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 8,
                            ),
                          ),
                          child: Icon(
                            Icons.chat_outlined,
                            color: Colors.black,
                            size: 24,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 20),
                  const VerticalDivider(
                    indent: 20,
                    endIndent: 20,
                    color: Colors.red,
                  ),
                  const SizedBox(width: 20),
                  PopupMenuButton<String>(
                    onSelected: (value) {
                      // Handle different options here
                      if (kDebugMode) {
                        print("Selected: $value");
                      }
                    },
                    tooltip: 'User Options',
                    offset: const Offset(0, 50),
                    constraints: const BoxConstraints(minWidth: 180),
                    itemBuilder: (BuildContext context) {
                      return userOptions.map((String choice) {
                        return PopupMenuItem<String>(
                          value: choice,
                          child: Text(choice),
                        );
                      }).toList();
                    },
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        CircleAvatar(
                          backgroundImage: NetworkImage(
                            'https://via.placeholder.com/100',
                          ), // Placeholder for user avatar
                        ),
                        SizedBox(width: 10),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Marie-Christine',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              'DIRECTRICE',
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.black54,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(width: 10),
                        Icon(
                          Icons.keyboard_arrow_down,
                          color: Colors.black,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.82,
          child: const Divider(height: 0),
        ),
      ],
    );

    // AppBar(
    //   backgroundColor: Colors.white,
    //   elevation: 0,
    //   titleSpacing: 0, // Align content correctly to the edges
    //   toolbarHeight: 80.0,
    //   leading:
    //   title:
    //   actions: [

    //   ],
    // );
  }
}
