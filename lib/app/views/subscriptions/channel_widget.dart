import 'package:flutter/material.dart';
import 'package:youtube_clone/app/data/model/channel.dart';

class CHannelWidget extends StatelessWidget {
  final Channel? channel;
  const CHannelWidget({ Key? key, this.channel }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width:70 ,height:92 ,
      child:Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
SizedBox(
  width: 56,height: 56,
  child:   Stack(children: [
    CircleAvatar(
      radius: 56,
      backgroundImage: AssetImage(channel!.channelIcon!),
    ) ,
  const Positioned(
    bottom: 0.0,
    right: -1,
    
    child: Text('.' , style: TextStyle(
    fontWeight: FontWeight.bold ,fontSize: 60,
    color: Colors.blue
  ),))
  ],),
),
Text(channel!.channelName! ,style: const TextStyle(
  fontSize: 12 ,
  color: Color(0xFF6C6C6C)
),)




        ],
      )
    );
  }
}