import 'package:flutter/material.dart';
import 'package:youtube_clone/app/data/model/story_model.dart';

class StoryContainer extends StatelessWidget {
  final StoryModel? storyModel;
  const StoryContainer({ Key? key, this.storyModel }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 161,
      width: 96,
      padding: const EdgeInsets.all(5),
      margin: const EdgeInsets.all(5),
decoration: BoxDecoration(
  image: DecorationImage(image: 
  
  
  AssetImage(storyModel!.thumnail!), fit: BoxFit.cover) 
),
      child: Stack(children: [




       Positioned(
         
         top: 5,
         right: 5,
         child: IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert ,color: Colors.white,))) ,




Positioned(
  bottom: 5,

child: Column(
  
  crossAxisAlignment: CrossAxisAlignment.start,
  children: [


  Text(storyModel!.title! , style: const TextStyle(fontSize: 8 ,color: Colors.white),) ,


    Text("${storyModel!.views!} views" , style: const TextStyle(fontSize: 8 ,color: Colors.white),) ,

],),
) ,
      ]),
    );
  }
}