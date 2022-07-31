import 'package:flutter/material.dart';
import 'package:youtube_clone/app/data/home_data.dart';
import 'package:youtube_clone/app/views/Downloads/widgets/download_item.dart';

import '../../Utils/images.dart';

class DownloadPage extends StatefulWidget {
  const DownloadPage({ Key? key }) : super(key: key);

  @override
  _DownloadPageState createState() => _DownloadPageState();
}

class _DownloadPageState extends State<DownloadPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
   backgroundColor:Colors.transparent ,
  elevation: 0.00,
leading: IconButton(onPressed: () {
  Navigator.pop(context);
}, icon: const Icon(Icons.arrow_back  ,color: Colors.black,)),
  title: const Text('Downloads' ,style: TextStyle(color: Colors.black),), 

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
                  
                
                  const ImageIcon(AssetImage(Images.notifications),size: 35,color: Colors.black,)
                 
 
                ),
                 IconButton(
                  onPressed: () {
                        
                  },
                  icon: 
                  
                
                  const ImageIcon(AssetImage(Images.search),size: 35,color: Colors.black,)
                 
 
                ),

                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: CircleAvatar(
                    
                    radius: 24,
                   backgroundImage:AssetImage(Images.avatar),
                  ),
                )
  ],
),
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        height:         MediaQuery.of(context).size.height,

        child: ListView(
          children:  homeVideoes.map((e) => DownloadItemContainer(homeVideoItem: e,)).toList(),
        ),
      ),
    );
  }
}