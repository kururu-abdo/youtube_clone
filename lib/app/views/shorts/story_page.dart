import 'package:flutter/material.dart';
import 'package:youtube_clone/app/Utils/images.dart';
import 'package:youtube_clone/app/data/model/story_model.dart';

class StoryPage extends StatefulWidget {
  final StoryModel? storyModel;
  const StoryPage({ Key? key, this.storyModel }) : super(key: key);

  @override
  _StoryPageState createState() => _StoryPageState();
}

class _StoryPageState extends State<StoryPage> {
   bool _isPlaying=true;
  bool _showingPlayController=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(


body: SizedBox(
  height: MediaQuery.of(context).size.height,
    width: MediaQuery.of(context).size.width,
    
    
    child: Stack(children:  [
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
  child:   Container(
    height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      decoration:const BoxDecoration(
        image: DecorationImage(image: AssetImage(Images.story4) ,fit:BoxFit.cover)
      ) ,
  ),
)
     ,

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
     
     )
     ,
     Positioned(
       
       left: 10,bottom: 10,

       
       child: SizedBox(
         height: 128,
         width: 242,
         child: Column(

crossAxisAlignment: CrossAxisAlignment.start,
           children: [

              Expanded(child: Text(widget.storyModel!.title! ,
             
             
             style:const TextStyle(
               fontSize:16  ,color: Colors.white
             )
             )) ,
             Row(
               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
               children:  [
                 const CircleAvatar(
                   radius: 32, 
                   backgroundImage: AssetImage(Images.channel1),
                 ) ,
                  Text(widget.storyModel!.channel!  , style:const TextStyle(
               fontSize:14  ,color: Colors.white
             )) ,

             Image.asset(Images.subscribe ,height: 28 ,width: 98,)
               ],
             )
           ],
         ),
       ))
    
    ]),

),

floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
floatingActionButton: Column(
  mainAxisAlignment: MainAxisAlignment.end,
crossAxisAlignment: CrossAxisAlignment.start,
  children: [
IconButton(onPressed: () {}, icon: const Icon(Icons.more_horiz ,color: Colors.white,)) ,
const SizedBox(height: 3,)  ,
  Column(
    mainAxisSize: MainAxisSize.min,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      IconButton(onPressed: () {}, icon: const ImageIcon(AssetImage(Images.like ) ,color: Colors.white, )),
 Text(widget.storyModel!.likes!  ,style: const TextStyle(
  color: Colors.white ,fontSize: 12
),)
    ],
  ) ,
const SizedBox(height: 3,)  ,
 Column(
    mainAxisSize: MainAxisSize.min,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      IconButton(onPressed: () {}, icon: const ImageIcon(AssetImage(Images.dislike ) ,color: Colors.white, )),
const Text('Dislike' ,style: TextStyle(
  color: Colors.white ,fontSize: 12
),)
    ],
  ) ,const SizedBox(height: 3,)  ,
 Column(
    mainAxisSize: MainAxisSize.min,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      IconButton(onPressed: () {}, icon: const ImageIcon(AssetImage(Images.shortComments ) ,color: Colors.white, )),
 Text(widget.storyModel!.totalComments!  ,style: const TextStyle(
  color: Colors.white ,fontSize: 12
),)
    ],
  ) ,const SizedBox(height: 3,)  ,
    Column(
    mainAxisSize: MainAxisSize.min,
    crossAxisAlignment: CrossAxisAlignment.center,
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      IconButton(onPressed: () {}, icon: const ImageIcon(AssetImage(Images.redirect ) ,color: Colors.white, )),
const Text('Share' ,style: TextStyle(
  color: Colors.white ,fontSize: 12
),)
    ],
  ) ,const SizedBox(height: 3,)  ,




  IconButton(onPressed: () {}, icon: const ImageIcon(AssetImage(Images.wave  ) ,
  
   ))



  ],
),

      
    );
  }
}