import 'package:flutter/material.dart';
import 'package:youtube_clone/app/data/home_data.dart';
import 'package:youtube_clone/app/views/Downloads/download_page.dart';
import 'package:youtube_clone/app/views/library/widgets/history_item_widget.dart';
import 'package:youtube_clone/app/views/library/widgets/play_list_widget.dart';
import 'package:youtube_clone/app/views/library/widgets/recent_video_item.dart';

class LibraryPage extends StatefulWidget {
  const LibraryPage({ Key? key }) : super(key: key);

  @override
  _LibraryPageState createState() => _LibraryPageState();
}

class _LibraryPageState extends State<LibraryPage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SizedBox(height:MediaQuery.of(context).size.height ,
      child: Column(

        children: [
          Container(
            
            // width: 360,
            height: 209,
            padding: const EdgeInsets.all(6),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Recent' ,style: TextStyle( color: Colors.black ,fontSize: 16 ,fontWeight: FontWeight.bold),
                
                ) ,
                const SizedBox(height: 8,) ,
                Expanded(child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: homeVideoes.map((e) => RecentVideoItemContainer(homeVieoItem: e,)).toList(),
                ))
              ],

            ),

            ) ,
Container( height: 286,
margin: const EdgeInsets.all(3),
child: ListView(
  children:histories.map((e) => HistoryItemWidget(historyItem: e,
  onTap: (str) {
    if(str.toLowerCase()=="downloads") {
      Navigator.of(context).push(MaterialPageRoute(builder: (_)=>const DownloadPage()));
    }
  },
  
  )).toList(),
),
)
 ,


 Container( height: 186,
margin: const EdgeInsets.all(3),
child: Column(children: [

  Container(
    // height: 20,
    padding: const EdgeInsets.all(10),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text('Playlists' ,style: TextStyle(fontWeight: FontWeight.bold ,fontSize: 16),) ,

        Row(
          mainAxisSize: MainAxisSize.min,
          children: const [
        Text('Recently added' ,style: TextStyle( fontSize: 14),) ,
        AnimatedCrossFade(firstChild: Icon(Icons.keyboard_arrow_right) ,secondChild: Icon(Icons.keyboard_arrow_down), crossFadeState: CrossFadeState.showFirst, duration: Duration(milliseconds: 300))

        ],)
      ],
    ),
  ) ,

   Container(
    // height: 20,
    padding: const EdgeInsets.all(15),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.start,
      // mainAxisSize: MainAxisSize.min,
      children: [

        IconButton(onPressed: () {}, icon: const Icon(Icons.add ,size: 24 ,color: Color(0xFF068BFF),)),
        const SizedBox(width: 10,),
        const Text('New Playlist' ,style: TextStyle(fontWeight: FontWeight.bold ,fontSize: 16 ,color: Color(0xFF068BFF)),) ,

      
      ],
    ),
  ),




Expanded(child: ListView(
  children: playlists.map((e) => PlayListItetm(playList: e,)).toList(),
))


  
],),

 )


        ],
      ),
       ),
    );
  }
}