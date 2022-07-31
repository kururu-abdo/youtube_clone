import 'package:flutter/material.dart';
import 'package:youtube_clone/app/Utils/app_colors.dart';
import 'package:youtube_clone/app/Utils/images.dart';
import 'package:youtube_clone/app/data/home_data.dart';
import 'package:youtube_clone/app/views/shorts/story_page.dart';

class ShortView extends StatefulWidget {
  
  const ShortView({ Key? key }) : super(key: key);

  @override
  _ShortViewState createState() => _ShortViewState();
}

class _ShortViewState extends State<ShortView> {

 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.storyScaffolBackground,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(onPressed: 
        () {
          Navigator.pop(context);
        }, icon: const Icon(Icons.arrow_back ,color: Colors.white),
      ),
actions: [
  IconButton(onPressed: () {}, icon: const ImageIcon(AssetImage(Images.camera)))
],
      ) ,

body:PageView(
  scrollDirection: Axis.vertical,
  children:stories.map((e) => 
  
  StoryPage(storyModel: e,)
  ).toList(),
)
      
    );
  }
}