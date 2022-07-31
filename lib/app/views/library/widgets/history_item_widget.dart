import 'package:flutter/material.dart';
import 'package:youtube_clone/app/data/model/history_item.dart';

class HistoryItemWidget extends StatelessWidget {
  final HistoryItem? historyItem;
  final Function(String)? onTap;
  const HistoryItemWidget({ Key? key, this.historyItem, this.onTap }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return InkWell(
      onTap: ()=>onTap!(historyItem!.title!),
      child: Container(
        height: 35,
        width: 336,
        margin: const EdgeInsets.all(10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          
          
children: [
  Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      // mainAxisAlignment: MainAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
  children: [
      Image.asset(historyItem!.icon! ,width: 28,) ,
      const SizedBox(width: 10,) ,
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
 Text(historyItem!.title!,
        
        style: const TextStyle(color: Color(0xFF000000) ,
        
        fontWeight: FontWeight.w500
         , fontSize: 16),
      
        ) ,
         Text(historyItem!.totalVideos!,
        
        style: const TextStyle(color: Color(0xFF6C6C6C) , fontSize: 12),
      
        ) ,
      ],) ,


 
  ],
  
  ),

       Visibility(
        visible:historyItem!.trailingIcon !=null ,
        child:
      // const Icon(Icons.check_circle)

          historyItem!.trailingIcon!=null ?
         historyItem!.trailingIcon! :Container(),
         
         )
],
        ),
      ),
    );
  }
}