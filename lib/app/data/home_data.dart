

import 'package:flutter/material.dart';
import 'package:youtube_clone/app/Utils/images.dart';
import 'package:youtube_clone/app/data/model/channel.dart';
import 'package:youtube_clone/app/data/model/history_item.dart';
import 'package:youtube_clone/app/data/model/notification_item.dart';
import 'package:youtube_clone/app/data/model/play_list.dart';
import 'package:youtube_clone/app/data/model/story_model.dart';
import 'package:youtube_clone/app/data/model/video_item.dart';

var filters = ["All" ,"Sports" ,"Mixes" ,"Design" ,"Nature" ,"Arsenal" ,"Liverpool" ,"Man United"];
var timeFilters = ["All" ,"Today" ,"Yeasterday" ,"This mounth" ,"This year", "Continue"];


var homeVideoes =  [
  HomeVieoItem(Images.thaumnail1, "The Beauty of Existence - Heart Touching Nasheed", "19,210,251", "Jul • 1, 2016" ,Images.channel1 ,isShort: true ,  channelName :'Kururu 4Life') ,
    HomeVieoItem(Images.thumnail2, "The Beauty of Existence - Heart Touching Nasheed", "19,210,251", "Jul • 1, 2016" ,Images.channel1 ,isShort: true ,  channelName :'Abdo 4Life') ,

  [
    StoryModel(Images.story3, "DIY Toys | Satisfying And Relaxing | DIY Tiktok Compilation..", "24M") ,
    StoryModel(Images.story4, "DIY Toys | Satisfying And Relaxing | DIY Tiktok Compilation..", "12K") ,
StoryModel(Images.story3, "DIY Toys | Satisfying And Relaxing | DIY Tiktok Compilation..", "24M") ,
    StoryModel(Images.story4, "DIY Toys | Satisfying And Relaxing | DIY Tiktok Compilation..", "12K") ,

StoryModel(Images.story3, "DIY Toys | Satisfying And Relaxing | DIY Tiktok Compilation..", "24M") ,
    StoryModel(Images.story4, "DIY Toys | Satisfying And Relaxing | DIY Tiktok Compilation..", "12K") ,


  ]  ,
  HomeVieoItem(Images.thaumnail1, "The Beauty of Existence - Heart Touching Nasheed", "19,210,251", "Jul • 1, 2016" ,Images.channel1) ,


  [
    StoryModel(Images.story3, "DIY Toys | Satisfying And Relaxing | DIY Tiktok Compilation..", "24M" , 
    
    channel: 'Kururu 4life'
    
    ) ,
    StoryModel(Images.story4, "DIY Toys | Satisfying And Relaxing | DIY Tiktok Compilation..", "12K" ,    channel: 'Kururu 4life'
    ) ,
StoryModel(Images.story3, "DIY Toys | Satisfying And Relaxing | DIY Tiktok Compilation..", "24M") ,
    StoryModel(Images.story4, "DIY Toys | Satisfying And Relaxing | DIY Tiktok Compilation..", "12K") ,

StoryModel(Images.story3, "DIY Toys | Satisfying And Relaxing | DIY Tiktok Compilation..", "24M") ,
    StoryModel(Images.story4, "DIY Toys | Satisfying And Relaxing | DIY Tiktok Compilation..", "12K") ,


  ]  ,


    HomeVieoItem(Images.thaumnail1, "The Beauty of Existence - Heart Touching Nasheed", "19,210,251", "Jul • 1, 2016" ,Images.channel1  ,   
    channelName :'Kururu 4Life'
    )


];


var stories =
[
    StoryModel(Images.story3, "DIY Toys | Satisfying And Relaxing | DIY Tiktok Compilation..", "24M" ,  totalComments:"987" ,channel: "Kururu4Life"
     ,
     likes: "4.3K" ,
     chennelIcon: Images.channel1 ,
     
     ) ,
    StoryModel(Images.story4, "DIY Toys | Satisfying And Relaxing | DIY Tiktok Compilation..", "12K",  totalComments:"345" ,channel: "MD Top"
     ,
     likes: "5.3K" ,
     chennelIcon: Images.channel1 ,
     
     
     ) ,
StoryModel(Images.story3, "DIY Toys | Satisfying And Relaxing | DIY Tiktok Compilation..", "24M"

,  totalComments:"89" ,channel: "Mk Dons"
     ,
     likes: "1.3K" ,
     chennelIcon: Images.channel1 ,
) ,
];

var channels = [

  Channel(
    channelName: 'Like Nastya' ,
    channelIcon: Images.channel1 ,
    recentlyUpload: true 
  ) ,
    Channel(
    channelName: 'Bassera' ,
    channelIcon: Images.channel2 ,
    recentlyUpload: true 
  ) ,
   Channel(
    channelName: 'Alor Path' ,
    channelIcon: Images.channel3 ,
    recentlyUpload: true 
  ),
   Channel(
    channelName: 'Rain Drop..' ,
    channelIcon: Images.channel4,
    recentlyUpload: true 
  )
];

var histories  =[

  HistoryItem( Images.history ,'History' ,'',
    
    ) ,
    HistoryItem( Images.yourVid ,'Your videos' ,'',
    
    ) ,
     HistoryItem( Images.downloads ,'Downloads' ,'57 videos',
    trailingIcon: const Icon(Icons.check_circle ,color: Colors.black,)
    )
    ,
     HistoryItem( Images.yourMov ,'Your movies' ,'',
    
    )
      ,
     HistoryItem( Images.watchLatter ,'Watch later' ,'4 unwatched videos',
    
    )
];

var playlists = [

  PlayList(Images.likdVid, "Liked Videos", "50 videos")
];


var notificationFilters =[
  'All' ,'Mentions'
];
var notifications = [

NotificationItem('Someone Mention you in  mash and Bear video ', '2 days ago', Images.channel2 , Images.thumnail2, true ,false) ,


NotificationItem('Someone comment in the tom and jerry video ', '2 hours ago', Images.channel3 , Images.thaumnail1, false ,true) ,

];