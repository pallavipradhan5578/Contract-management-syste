import 'package:flutter/material.dart';
import 'package:twentyoneassignment/utills/colors.dart';
import 'term_chat_view.dart';

class ContractDetailView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Map contract = ModalRoute.of(context)!.settings.arguments as Map;
    print(contract);

    final participants = ['Alice', 'Bob', 'Charlie'];
    final terms = [
      {'id': '1', 'text': 'Delivery within 30 days.', 'status': 'Pending'},
      {'id': '2', 'text': 'Payment terms: Net 60.', 'status': 'Under Discussion'},
    ];

    return Scaffold(backgroundColor: Colors.indigo.shade100,
      appBar: AppBar(backgroundColor:AppColors.Primarycolor ,
        leading: InkWell(
            onTap: (){
              Navigator.pop(context);
            },
            child
            : Icon(Icons.navigate_before,size:35,color: Colors.white,)),
        title: Text('Contract '+contract['id'],style: TextStyle(color: AppColors.white),),
      ),
      body: Column(
        children: [

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
              Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                  color: Colors.blue,
                  shape: BoxShape.circle,
                  image: DecorationImage(image: AssetImage(contract['logo']!),
                      fit: BoxFit.fill
                  )

              ),
            ),

                SizedBox(width: 20,),
                Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children:[
                    Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('Participants : -', style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500)),
                    ...participants.map((p) => Text(p)).toList(),
                  ],
                                ),
               ] ) , Column(
                 children: [
                   IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.delete,size: 30,
                          color:Colors.indigo.shade500 ,
                        )),IconButton(
                       onPressed: () {},
                       icon: Icon(
                         Icons.add_box,size: 30,
                         color: Colors.indigo.shade500,
                       )),
                 ],
               ),]
            ),
          ),

          const Divider(),

          // Terms Section
          Expanded(
            child: ListView.builder(
              itemCount: terms.length,
              itemBuilder: (context, index) {
                final term = terms[index];
                return ListTile(
                  title: Text(term['text']!,style: TextStyle(fontSize: 20),),
                  subtitle: Text('Status: ${term['status']}',style: TextStyle(fontSize: 20),),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => TermChatView(termId: term['id']!),
                      ),
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
