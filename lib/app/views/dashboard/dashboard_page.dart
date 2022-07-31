import 'package:flutter/material.dart';
import 'package:youtube_clone/app/Utils/images.dart';
import 'package:youtube_clone/app/views/Notifications/notification_page.dart';
import 'package:youtube_clone/app/views/common/bottom_modal_item.dart';
import 'package:youtube_clone/app/views/dashboard/widgets/dialog.dart';
import 'package:youtube_clone/app/views/home/home_page.dart';
import 'package:youtube_clone/app/views/library/library_page.dart';
import 'package:youtube_clone/app/views/search/search_page.dart';
import 'package:youtube_clone/app/views/shorts/short_view.dart';
import 'package:youtube_clone/app/views/subscriptions/subscription_page.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({ Key? key }) : super(key: key);

  @override
  _DashboardPageState createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  int pageIndex = 0;
  
  final pages = [
   const HomePage() ,
   const SubscriptionPag() ,
    const LibraryPage()
  ];
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: pages[pageIndex],
appBar: AppBar(
   backgroundColor:Colors.transparent ,
  elevation: 0.00,

  title: Image.asset(Images.logo),

  actions: [
       IconButton(
                  onPressed: ()async {
                        
                        showDialog(context: context,
   
                         builder: (_){
                          
                          return const MyDialog();
                        });
                  },
                  icon: 
                  //const Icon(Icons.home_outlined)
                
                  const ImageIcon(AssetImage(Images.connect),size: 35,color: Colors.black,)
                 
 
                ),
                 IconButton(
                  onPressed: () {
                                                              Navigator.of(context).push(MaterialPageRoute(builder: (_)=>const NotificationPage()));

                  },
                  icon: 
                  
                
                  const ImageIcon(AssetImage(Images.notifications),size: 35,color: Colors.black,)
                 
 
                ),
                 IconButton(
                  onPressed: () {
                                      Navigator.of(context).push(MaterialPageRoute(builder: (_)=>const SearchPage()));

                  },
                  icon: 
                  
                
                  const ImageIcon(AssetImage(Images.search),size: 35,color: Colors.black,)
                 
 
                ),

                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: CircleAvatar(
                    
                    radius: 24,
                   backgroundImage:AssetImage(Images.avatar),
                  ),
                )
  ],
),
    bottomNavigationBar: Container(
        height: 60,
        decoration: const BoxDecoration(
          color: Color(0x05000000),
          // borderRadius: BorderRadius.only(
          //   topLeft: Radius.circular(20),
          //   topRight: Radius.circular(20),
          // ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                
                IconButton(
                  enableFeedback: false,
                  onPressed: () {
                         setState(() {
                pageIndex = 0;
              });
                  },
                  icon:
                  pageIndex==0?
                   const Icon(
                    Icons.home,
                    size: 35,
                  ): const Icon(
                    Icons.home_outlined,
                    size: 35,
                  )   ,
                ),
                const Text('Home')
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                IconButton(
                  enableFeedback: false,
                  onPressed: () {
              //         setState(() {
              //   pageIndex = 1;
              // });

              Navigator.of(context).push(MaterialPageRoute(builder: (_)=>const ShortView()));
                  },
                  icon: 
                  
                  
                  const ImageIcon(AssetImage(Images.shorts) ,size: 35,)
                ),
                   const Text('Shorts')
              ],
            ),


             IconButton(
              enableFeedback: false,
              onPressed: () {

                showModalBottomSheet(context: context,
                
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
    topLeft: Radius.circular(10) ,
  topRight: Radius.circular(10) ,

  )
                ),
                
                 builder: (context){


return Container(width: MediaQuery.of(context).size.width,
height: 200,
padding: const EdgeInsets.all(5),
decoration: const BoxDecoration(
  borderRadius: BorderRadius.only(
    topLeft: Radius.circular(20) ,
  topRight: Radius.circular(20) ,


  )
  
),
child: Column(
  children: [
Row(
  mainAxisAlignment: MainAxisAlignment.spaceBetween,
  children: [
    const Text('create' ,style: TextStyle(color: Colors.black,fontSize: 14,
    
    fontWeight: FontWeight.w400
    ),),
    IconButton(onPressed: (){

    Navigator.pop(context);
    }, icon: const Icon(Icons.close))
  ],
) ,

Expanded(
  child:   Container( 
    width: MediaQuery.of(context).size.width,
  margin: const EdgeInsets.all(5) ,
  child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [{'title':'Create a Short'  ,'icon':Images.shorts} 
    
     ,{'title' :'Upload a video' , 'icon':Icons.upload_rounded}
    
    
    ].map((e) => 
    
     BottomModelItem(
      onTap: (){
  Navigator.pop(context);
      },
      icon: e['icon'],
      title: e['title'] as String,
    )
    ).toList()
  ),
  
  ),
)
  ],
),
);
                });
              },
              icon: const ImageIcon(AssetImage(Images.upload),size: 35,),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                IconButton(
                  enableFeedback: false,
                  onPressed: () {
                         setState(() {
                pageIndex = 1;
              });
                  },
                  icon: 
                  
                  pageIndex==1?
                    const Icon(Icons.subscriptions):
                  const ImageIcon(AssetImage(Images.subscriptions),size: 35,)
                 
 
                ),
                  const Text('Subscriptions')
              ],
            ),
             Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                IconButton(
                  enableFeedback: false,
                  onPressed: () {

                     setState(() {
              pageIndex = 2;
              });
                  },
                  
                  icon: 
                  pageIndex==2?
                  const Icon(Icons.video_library):
                  
                  const ImageIcon(AssetImage(Images.library),size: 35,),
 
                ),
                  const Text('library')
              ],
            ),
          ],
        ),
      ),
    );
  }
}
