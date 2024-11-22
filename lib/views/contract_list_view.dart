import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final List<Map<String, String>> contracts = [
    {
      'id': '1',
      'name': 'Railway Contract',
      'logo': 'assets/images/download (2).jpeg'
    },
    {
      'id': '2',
      'name': 'Parking Contract',
      'logo': 'assets/images/images.jpeg'
    },
    {'id': '3', 'name': 'Airport Contract ', 'logo': 'assets/images/egle.jpg'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: MediaQuery.of(context).size.height / 1.27,
            color: Colors.indigo.shade100,
            child: Padding(
              padding:  EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                   SizedBox(height: 20),
                  Row(
                    children: [
                       Text(
                        "Contracts",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                       SizedBox(width: 10),
                      Container(
                        height: 25,
                        width: 25,
                        color: Colors.grey.shade100,
                        child: const Center(
                          child: Text(
                            "3",
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),

                  Expanded(
                    child: ListView(
                      itemExtent: 120, // Increased item size
                      children: contracts.map((contract) {
                        return Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8.0),
                          child: Container(decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15),
                          ),
                             // Background color for the item
                            child: Column(
                              children: [
                                ListTile(
                                  leading: CircleAvatar(
                                    radius: 30,
                                    backgroundImage:
                                    AssetImage(contract['logo']!),
                                  ),
                                  title: Text(
                                    contract['name']!,
                                    style: const TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w800,
                                    ),
                                  ),
                                  onTap: () {
                                    Navigator.pushNamed(
                                      context,
                                      '/contractDetail',
                                      arguments: contract,
                                    );
                                  },
                                ),
                                const SizedBox(height: 8),
                                Row(
                                  mainAxisAlignment:
                                  MainAxisAlignment.spaceAround,
                                  children: [
                                    Container(
                                      height: 30,
                                      width: 150,
                                      decoration: BoxDecoration(
                                        color: Colors.grey.shade300,
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: const Center(
                                        child: Text("0 Amendments"),
                                      ),
                                    ),
                                    Container(
                                      height: 30,
                                      width: 150,
                                      decoration: BoxDecoration(
                                        color: Colors.grey.shade300,
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      child: const Center(
                                        child: Text("2 Suggestions"),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        );
                      }).toList(),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
