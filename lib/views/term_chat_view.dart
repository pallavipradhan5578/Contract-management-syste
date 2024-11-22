import 'package:flutter/material.dart';
import 'package:twentyoneassignment/utills/colors.dart';

class TermChatView extends StatelessWidget {
  final String termId;

  TermChatView({required this.termId});

  final List<Map<String, dynamic>> messages = [
    {
      'id': '1',
      'text': 'Delivery within 30 days.',
      'likes': ['Alice'],
      'dislikes': []
    },
    {
      'id': '2',
      'text': 'Payment terms: Net 60.',
      'likes': ['Alice', 'Bob'],
      'dislikes': ['Charlie']
    },
  ];

  @override
  Widget build(BuildContext context) {
    final term = messages.firstWhere((m) => m['id'] == termId);

    return Scaffold(backgroundColor: Colors.indigo.shade100,
      appBar: AppBar(
        backgroundColor: AppColors.Primarycolor,
        leading: InkWell(onTap: (){Navigator.pop(context);},
            child: Icon(
          Icons.navigate_before,
          size: 35,
          color: Colors.white,
        )),
        title: const Text(
          'Term Details',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: 1,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(term['text']),
                  subtitle: Row(
                    children: [
                      IconButton(
                        icon: const Icon(Icons.thumb_up, color: Colors.green),
                        onPressed: () {
                          // Handle like
                        },
                      ),
                      Text('Likes: ${term['likes'].length}'),
                      IconButton(
                        icon: const Icon(Icons.thumb_down, color: Colors.red),
                        onPressed: () {
                          // Handle dislike
                        },
                      ),
                      Text('Dislikes: ${term['dislikes'].length}'),
                    ],
                  ),
                );
              },
            ),
          ),
          const Divider(),
          // Add New Term
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    decoration: const InputDecoration(
                      hintText: 'Add a new term...',
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                IconButton(
                  icon: const Icon(Icons.send),
                  onPressed: () {
                    // Handle adding a new term
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
