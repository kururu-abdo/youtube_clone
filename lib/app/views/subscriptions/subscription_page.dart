import 'package:flutter/material.dart';
import 'package:youtube_clone/app/data/home_data.dart';
import 'package:youtube_clone/app/views/home/widgets.dart/filter_button.dart';
import 'package:youtube_clone/app/views/subscriptions/channel_widget.dart';
import 'package:youtube_clone/app/views/subscriptions/widgets/subscription_page_video_container.dart';

class SubscriptionPag extends StatefulWidget {
  const SubscriptionPag({ Key? key }) : super(key: key);

  @override
  _SubscriptionPagState createState() => _SubscriptionPagState();
}

class _SubscriptionPagState extends State<SubscriptionPag> {
    int _selectedPos =0;

    bool isFilterVisible=true;
  final ScrollController _scrollController =ScrollController();
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SizedBox(
        height: MediaQuery.of(context).size.height,
        child: Column(children: [


           SizedBox(
              height: 90,
              // width: double.infinity,
              child: ListView(
                scrollDirection:Axis.horizontal ,
                children:    channels.map((e) => CHannelWidget(channel: e,)).toList()  ,
              ) ),
            Visibility(
            visible: isFilterVisible,
            child: SizedBox(
              height: 60,
              width: double.infinity,
              child: ListView(
                scrollDirection:Axis.horizontal ,

                children: [
                  Center(
                    child: Row(
                     mainAxisAlignment: MainAxisAlignment.spaceAround,
                     children:  

                 timeFilters.asMap().map((key, value) => MapEntry(key,   Center(
                   child: FilterButton(
                     position: key,
                     title: value,
                     selectedPos:_selectedPos ,
                     onClicked: (i){
setState(() {
  _selectedPos=i;
});
                     },
                   ),
                 ))).values.toList()
              
                 
                 
                 
                ,
              ),
          )
     
        ],),
            ))
             ,

                  Expanded(child: ListView(

                    children: homeVideoes.map((e) => SubscriptionPageVidContainer(homeVieoItem: e,)).toList(),
                  ))

            ]),
      )
          
          
          );
    
  }
}