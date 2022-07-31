import 'package:flutter/material.dart';
import 'package:youtube_clone/app/data/model/video_item.dart';

class RecentVideoItemContainer extends StatelessWidget {
 final  dynamic homeVieoItem;
  const RecentVideoItemContainer({ Key? key, this.homeVieoItem }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
    homeVieoItem is HomeVieoItem?
    
    
     SizedBox(
      width:156 ,height:162 ,
      child: Column(
        children: [
Container(
      width:148 ,height:88 ,
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage((homeVieoItem as HomeVieoItem).thumnails!))

      ),
      
      child: Stack(children: [



        Positioned(
          bottom: 10,right: 10,
          
          
          child: 
        
        Container(width: 28 ,height: 14,
        
        decoration: BoxDecoration(
          color: Colors.black.withOpacity(.64) ,
          borderRadius: BorderRadius.circular(2)


        ),
        child: Center(child: Text((homeVieoItem as HomeVieoItem).currentTime! ,
        
        style: const TextStyle(
          fontSize: 10 ,color: Colors.white
        ),
        )),),
        )
        
             ,  Positioned(
               bottom: 0,
               child: 
        
        Container(width:148 ,height:5 ,
        
        decoration: const BoxDecoration(
          color: Colors.red ,
          


        ),
      ),
        )
         
      ],),) ,

    Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [

        Row(
            // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
 Expanded(
   child: Text((homeVieoItem as HomeVieoItem).title!,
     overflow: TextOverflow.ellipsis,
        
        style: const TextStyle(color: Color(0xFF000000) , fontSize: 14),
      
        ),
 ) ,
 IconButton(onPressed: () {}, icon: const Icon(
        Icons.more_vert ,
      ))
     
        ],) ,

      Text((homeVieoItem as HomeVieoItem).channelName!,
      
      style: const TextStyle(color: Color(0xFF6C6C6C) , fontSize: 12),
    
      )
    ],)
        ],
      ),
    ):Container();
  }
}