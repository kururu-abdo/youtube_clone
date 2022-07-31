import 'package:flutter/material.dart';
import 'package:youtube_clone/app/Utils/images.dart';
import 'package:youtube_clone/app/data/home_data.dart';
import 'package:youtube_clone/app/views/Notifications/widgets/notification_container.dart';

class NotificationPage extends StatefulWidget {
  const NotificationPage({ Key? key }) : super(key: key);

  @override
  _NotificationPageState createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  String selectedFilter ='All';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
         appBar: AppBar(
   backgroundColor:Colors.transparent ,
  elevation: 0.00,
leading: IconButton(onPressed: () {
  Navigator.pop(context);
}, icon: const Icon(Icons.arrow_back  ,color: Colors.black,)),
  title: const Text('Notifications' ,style: TextStyle(color: Colors.black),), 

  actions: [
       IconButton(
                  onPressed: () {
                        
                  },
                  icon: 
                  //const Icon(Icons.home_outlined)
                
                  const ImageIcon(AssetImage(Images.connect),size: 35,color: Colors.black,)
                 
 
                ),
               
                 IconButton(
                  onPressed: () {
                        
                  },
                  icon: 
                  
                
                  const ImageIcon(AssetImage(Images.search),size: 35,color: Colors.black,)
                 
 
                ),

            IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert ,color: Colors.black,))
  ],
),


body: SizedBox.expand(
  child:   Column(children: [
    
Container(width: MediaQuery.of(context).size.width,
height: 60,
padding: const EdgeInsets.all(10),

decoration:  BoxDecoration(
  color: Colors.white,
   boxShadow: [
        BoxShadow(
          color: Colors.grey.shade200,
          blurRadius: 0,
          spreadRadius: 0,
          offset: const Offset(0, 2)
        )
      ]
),

child: Row(
  
  children: notificationFilters.map((e) => 
  InkWell(
    onTap:  () {
setState(() {
  selectedFilter =e;

});
    },
    child: Container( height: 50,

    margin: const EdgeInsets.all(5),
    padding: const EdgeInsets.all(5),
    decoration: BoxDecoration(
      color: selectedFilter==e?Colors.grey.shade600:Colors.grey.shade100,
      borderRadius: BorderRadius.circular(20),
     
    ),
    child: Center(child: Text(e ) ,),
    ),
  )
  ).toList(),
),
),
Expanded(child: 

ListView(
  children: notifications.map((e) => 
  
Center(child: NotificationContainer(notificationItem: e,))
  ).toList(),
)
)

  ]),
),


    );
  }
}