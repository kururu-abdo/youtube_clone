import 'package:flutter/material.dart';
import 'package:youtube_clone/app/data/model/video_item.dart';

class DownloadItemContainer extends StatelessWidget {
  final dynamic homeVideoItem;
  const DownloadItemContainer({ Key? key, this.homeVideoItem }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
    homeVideoItem is HomeVieoItem?
     Container(
      height: 90,
     // width: 336,
      padding: const EdgeInsets.all(5),
      child: Row(
mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [

//for Video
        Container(
  height: 90,
      width: 152,
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage((homeVideoItem as HomeVieoItem).thumnails!) ,
        
        
        fit: BoxFit.cover
        ),

        
      ),
child: Align(alignment: Alignment.bottomCenter,
child: Container(
  
  //width: 152,


 height: 5 ,
decoration: const BoxDecoration(
  color: Colors.red
),
) ,
),

        ) ,

// const SizedBox(width: 15,) ,
        /// for channel and views
    SizedBox(
  height: 90,
      // width: 152,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,

        children: [

          Column(
             crossAxisAlignment: CrossAxisAlignment.start,
            children: [
Expanded(
  child:   SizedBox(
    width: 140,
     
    child: Text((homeVideoItem as HomeVieoItem).title! ,
    overflow: TextOverflow.fade,
    style: const TextStyle(
      fontSize: 14 ,
      color: Colors.black,
      fontWeight: FontWeight.w600
    ),
    ),
  ),
) ,

Text((homeVideoItem as HomeVieoItem).channelName! ,
overflow: TextOverflow.ellipsis,
style: const TextStyle(
  fontSize: 12 ,
  color: Color(0xFF6C6C6C),
  fontWeight: FontWeight.w400
),
),

Text("${(homeVideoItem as HomeVieoItem).totalViews!}views" ,
overflow: TextOverflow.ellipsis,
style: const TextStyle(
  fontSize: 12 ,
  color: Color(0xFF6C6C6C),
  fontWeight: FontWeight.w400
),
)
            ],
          ) ,

          IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert))
        ],
      ),


    )


      ],
      ),
    ):Container();
 
 
  }
}