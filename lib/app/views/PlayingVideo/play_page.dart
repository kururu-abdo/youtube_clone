
import 'package:flutter/material.dart';
import 'package:youtube_clone/app/Utils/images.dart';
import 'package:youtube_clone/app/data/home_data.dart';
import 'package:youtube_clone/app/data/model/video_item.dart';
import 'package:youtube_clone/app/views/home/widgets.dart/home_video_container.dart';

class PlayPage extends StatefulWidget {
  final HomeVieoItem? homeVieoItem;
  const PlayPage({ Key? key, this.homeVieoItem }) : super(key: key);

  @override
  _PlayPageState createState() => _PlayPageState();
}

class _PlayPageState extends State<PlayPage>   with TickerProviderStateMixin{
  bool _isPlaying=true;
  bool _showingPlayController=false;


  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: 

      Column(
        children: [
InkWell(
   onTap: () async{
    setState(() {
      _showingPlayController= !_showingPlayController;
      _isPlaying =!_isPlaying;
    });

   await Future.delayed(const Duration(seconds: 1));
    setState(() {
      _showingPlayController= !_showingPlayController;
     
    });

  },
  child:   Container(height: 230,
  width: MediaQuery.of(context).size.width,
  decoration: BoxDecoration(
    image: DecorationImage(
      
      image: AssetImage(
      widget.homeVieoItem!.thumnails! ,
    ) ,fit: BoxFit.cover)
    
  ),
  child: Stack(children: [
     Align(alignment: Alignment.center,
     child: Visibility(
       visible: _showingPlayController,
       child: AnimatedCrossFade(
          firstCurve: Curves.easeOutBack,
  secondCurve: Curves.easeInBack,
         firstChild: const Icon(Icons.pause ,size: 50 ,color: Colors.white,),
              secondChild: const Icon(Icons.play_arrow_rounded ,size: 50 ,color: Colors.white,) ,
         duration: const Duration(milliseconds: 300)
       
       
       ,  crossFadeState:
      _isPlaying? CrossFadeState.showFirst : CrossFadeState.showSecond,)),
     
     ) ,
     Positioned(
            bottom: 10,right: 10,
            
            
            child: 
          
          Container(width: 28 ,height: 14,
          
          decoration: BoxDecoration(
            color: Colors.black.withOpacity(.64) ,
            borderRadius: BorderRadius.circular(2)
  
  
          ),
          child: Center(child: Text(widget.homeVieoItem!.currentTime! ,
          
          style: const TextStyle(
            fontSize: 10 ,color: Colors.white
          ),
          )),),
          ) ,
       
    Positioned(
  bottom: 0,
  child: AnimatedContainer(
    duration: const Duration(seconds: 6),
    height: 5,width: MediaQuery.of(context).size.width, color: Colors.red,),
      
  
    )
  ]),
  
  ),
) ,


Container( width: MediaQuery.of(context).size.width,

height: 93,
padding: const EdgeInsets.all(10),
margin: const EdgeInsets.all(8),
child: Row(
  crossAxisAlignment: CrossAxisAlignment.start,
  mainAxisAlignment: MainAxisAlignment.spaceBetween,

  children: [
Column(
  crossAxisAlignment: CrossAxisAlignment.start,
  
  children: [
    Text(widget.homeVieoItem!.title! ,style: const TextStyle(
  fontSize: 16 ,color: Colors.black
),) ,
Row(
children: [
  Text(
    "${widget.homeVieoItem!.totalViews!} views" ,
    style: const TextStyle(color: Color(0xFF6C6C6C) ,
    
    fontSize: 12
    ),
  ) ,


   Text(
    widget.homeVieoItem!.uploadDate! ,
    style: const TextStyle(color: Color(0xFF6C6C6C) ,
    
    fontSize: 12
    ),
  )
],
) ,
 const Text(
   "#football   #Koora #coding #coding_with_kururu \n  #java" ,
    style: TextStyle(color: Color(0xFF068BFF) ,
    
    fontSize: 12
    ))
  ],
) ,
IconButton(onPressed: () {}, icon: const Icon(Icons.keyboard_arrow_down ,size: 30,))
  ],
),
) ,


Container( 
  width: MediaQuery.of(context).size.width,
  height: 60,
  padding: const EdgeInsets.all(10),
  margin: const EdgeInsets.all(5),
  child: Row(
    mainAxisAlignment:MainAxisAlignment.spaceEvenly ,
    children: 
    [
      SizedBox( width: 31,height: 42,
      
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(Images.likeOutlind ,width: 24,height: 24,color: Colors.black,) ,
          const Text('12.3k' , style: TextStyle(fontSize: 12),)
        ],
      ),
      ) ,

       SizedBox( width: 31,height: 42,
      
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(Images.dislikeOutlind ,width: 24,height: 24,color: Colors.black,) ,
          const Text('14' , style: TextStyle(fontSize: 12),)
        ],
      ),
      ) ,
       SizedBox( width: 31,height: 42,
      
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(Images.share ,width: 24,height: 24,color: Colors.black,) ,
          const Text('Share' , style: TextStyle(fontSize: 12),)
        ],
      ),
      ) ,
       SizedBox( width: 54,height: 42,
      
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(Images.downloads ,width: 24,height: 24,color: Colors.black,) ,
          const Expanded(
            child: Text('Download' ,
            overflow: TextOverflow.ellipsis
             , style: TextStyle(fontSize: 12),),
          )
        ],
      ),
      ) ,

         SizedBox( width: 31,height: 42,
      
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(Images.save ,width: 24,height: 24,color: Colors.black,) ,
          const Text('Save' , style: TextStyle(fontSize: 12),)
        ],
      ),
      )
    ]
    ,
  ),
)

 ,



 Container( width: MediaQuery.of(context).size.width,
 height: 38,
 margin: const EdgeInsets.all(5),
 child:
 Row(
   mainAxisAlignment: MainAxisAlignment.spaceBetween,
   children: [
     Row(

       mainAxisSize: MainAxisSize.min,
       children: [
         CircleAvatar(
           radius: 36,
           backgroundImage: AssetImage(widget.homeVieoItem!.channelIcon! ,
           
           
           ),
           
         ) ,
         Column(
           crossAxisAlignment: CrossAxisAlignment.start,
           children: [
             Text(widget.homeVieoItem!.channelName! ,style:const TextStyle(fontSize: 16 ,color: Colors.black))  ,


                          const Text("289K subscibe" ,style:TextStyle(fontSize: 12 ,color: Color(0xFF6C6C6C)))  ,




           ],
         )
       ],
     ) ,

     Image.asset(Images.subscribeOutlined ,)
   ],
 )
 
 ) ,

 Container(width: MediaQuery.of(context).size.width,
 height: 56,
  margin: const EdgeInsets.all(5),
  child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
     Row(
       
       mainAxisAlignment: MainAxisAlignment.spaceBetween,
       crossAxisAlignment: CrossAxisAlignment.start,
       children: [
Row(
  mainAxisSize: MainAxisSize.min,
  children: const [
    Text('Comments' ,style: TextStyle(color: Colors.black ,fontSize: 12),) ,

      Text('1K' ,style: TextStyle(color: Color(0xFF6C6C6C) ,fontSize: 12),)
  ],
) ,
IconButton(onPressed: (){}, icon: const ImageIcon(AssetImage(Images.sort )))


     ],) ,

const SizedBox(height: 5,) ,
          Expanded(
            child: Row(
       children: [
         CircleAvatar(
             radius: 20,
             backgroundColor: Colors.green.shade900,
         ) ,
         const Expanded(child: Text(
             'sdkjfds lkasjdfksdj sdf;sdf;   ;k;sdkf \n sdjfk;djsf;kjdsfds' ,
             style: TextStyle(
               fontSize: 12
             ),
         ))
       ],
     ),
        
        
        
        
        
          )

 ,


    ]
  ),
 ) ,
 Expanded(child: ListView(
   children: homeVideoes.map((e) => 
   
   HomeVideoContainer(homeVieoItem: e,)
   ).toList(),
 ))

        ],
      )
      
    );
  }
}