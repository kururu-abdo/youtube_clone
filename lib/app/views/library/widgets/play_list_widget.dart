import 'package:flutter/material.dart';
import 'package:youtube_clone/app/Utils/images.dart';
import 'package:youtube_clone/app/data/home_data.dart';
import 'package:youtube_clone/app/data/model/play_list.dart';

class PlayListItetm extends StatelessWidget {
  final PlayList? playList;
  const PlayListItetm({ Key? key, this.playList }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 143,
      height: 36,
      child: Row(
        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(playList!.icon! ,width: 36 ,height: 36,) ,
const SizedBox(width: 8,) ,
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
Text(playList!.title!,style: const TextStyle(
  fontSize: 16  ,color: Colors.black
),) ,
Text(playList!.totalVideos!,style: const TextStyle(
  fontSize: 12  ,color: Color(0xFF6C6C6C)
),) ,


            ],
          )

        ],
      ),
    );
  }
}