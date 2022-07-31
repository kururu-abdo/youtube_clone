import 'package:flutter/material.dart';
import 'package:youtube_clone/app/Utils/app_colors.dart';
import 'package:youtube_clone/app/Utils/images.dart';
import 'package:youtube_clone/app/data/home_data.dart';
import 'package:youtube_clone/app/views/home/widgets.dart/filter_button.dart';
import 'package:youtube_clone/app/views/home/widgets.dart/home_video_container.dart';

class HomePage extends StatefulWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedPos =0;
  bool isFilterVisible=true;
  ScrollController _scrollController =ScrollController();


@override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _scrollController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Visibility(
          visible: isFilterVisible,
          child: SizedBox(
            height: 60,
            width: double.infinity,
            child: ListView(
              scrollDirection:Axis.horizontal ,

              children: [
                Center(
                  child: Container(
                    width: 89,
                    height: 32,
                    decoration: BoxDecoration(
                      color:  AppColors.FilterBtnBorderColor,
                      borderRadius: BorderRadius.circular(
                        10
                      )
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: const [
ImageIcon(AssetImage(Images.explore) ,


) ,
Text('Explore ' ,style: TextStyle(
  fontFamily: 'Roboto' ,
  fontSize: 14
),)
                    ],),
                  ),
                ) ,
                const SizedBox(width: 10,) ,
                   Center(
                     child: Container(
                  width: 1,
                  height: 20,
                  color: AppColors.FilterBtnBorderSelectedColor,
                     ),
                   ),
               ...filters.asMap().map((key, value) => MapEntry(key,   Center(
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
            
               
               
               
              ],
            ),

          ),
        )
     
      ,
      const SizedBox(height: 10,) ,
     Expanded(
       
      
       child: NotificationListener<ScrollEndNotification>(
         onNotification: (t) {
    final metrics = t.metrics;
    if (metrics.atEdge) {
      bool isTop = metrics.pixels == 0;
      if (isTop) {
     setState(() {
       isFilterVisible=true;
     });
      } else {
       setState(() {
       isFilterVisible=false;
     });
      }
    }
    return true;

  },
         child: ListView(
           
       controller:    
           _scrollController ,
           children: homeVideoes.map((e) => 
         
         HomeVideoContainer(homeVieoItem: e,)
         ).toList(),),
       ))
     
     
     
      ],
      
    );
  }
}