import 'package:flutter/material.dart';
import 'package:youtube_clone/app/Utils/app_colors.dart';
import 'package:youtube_clone/app/Utils/images.dart';
import 'package:youtube_clone/app/data/model/video_item.dart';

class SubscriptionPageVidContainer extends StatelessWidget {
  final dynamic homeVieoItem;

  const SubscriptionPageVidContainer({ Key? key, this.homeVieoItem }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
    
    homeVieoItem is HomeVieoItem?
    
     Container(
      height: 300,
      margin: const EdgeInsets.only(
        bottom: 5
      ),
    child: Column(
      children: [
        Container(
          height: 215,
          decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage(homeVieoItem!.thumnails!  ,
            
            
            ) , fit: BoxFit.cover)
          ),
          child: Stack(children: [
            Positioned(
              bottom: 10,
              right: 10,
              
              child: Visibility(
              visible: homeVieoItem.isShort,
              child: Image.asset(Images.shortVideo)))
          ]),
        ) ,
        const SizedBox(height: 8,) ,
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
CircleAvatar(
  radius: 36,
  backgroundImage: AssetImage(homeVieoItem!.channelIcon!),
) ,


Column(
  crossAxisAlignment: CrossAxisAlignment.start,
  children: [

  Text(homeVieoItem!.title! , style: const TextStyle(fontSize: 14  , color: Colors.black),) ,

const SizedBox(height: 12,),
     Row(mainAxisSize: MainAxisSize.min ,
     mainAxisAlignment: MainAxisAlignment.start
     
     ,
     children: [

       Text("${homeVieoItem!.totalViews!} views" ,style: const TextStyle(
fontSize: 12,
         color: AppColors.FilterBtnBorderSelectedColor
       ),),
       const SizedBox(width: 5,) ,
   Text(homeVieoItem!.uploadDate!  ,style: const TextStyle(
fontSize: 12,
         color: AppColors.FilterBtnBorderSelectedColor
       ),)
     ],
     
     )


],)
        
        
        
        
       ,  IconButton(onPressed: () {}, icon:const Icon (Icons.more_vert))
          ],






        )
      ],
    ),
    ):
    Container()
    
//    Container(
//      height: 204,
//      width: double.infinity,
//      padding: const EdgeInsets.all(10),
//      margin: const EdgeInsets.all(5),
//      child: Column(
//        crossAxisAlignment: CrossAxisAlignment.start,
//        children: [
// Image.asset(Images.shortTitle , width: 65 ,height: 18,) ,
// Expanded(child: ListView(
//   scrollDirection: Axis.horizontal,
// children:     ( homeVieoItem as List<StoryModel>).map((e) => Center(child: StoryContainer(storyModel: e,))).toList(),

// ))
//        ],
//      ),
//    )
    
    ;
 
 
 
  }
}