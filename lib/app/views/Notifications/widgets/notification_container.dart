
import 'package:flutter/material.dart';
import 'package:youtube_clone/app/Utils/app_colors.dart';
import 'package:youtube_clone/app/data/model/notification_item.dart';

class NotificationContainer extends StatelessWidget {
  final NotificationItem? notificationItem;
  const NotificationContainer({ Key? key, this.notificationItem }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 184,
      padding: const EdgeInsets.all(3),
      
      
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Visibility(
            visible: !notificationItem!.isRead!,
            child:  Text('.' ,style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.blue.shade400 ,
              fontSize: 36
            ),)) ,
            CircleAvatar(radius: 30, 
            backgroundImage: AssetImage(notificationItem!.channelIcon!),

            
            ) 
            ],
          ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                SizedBox(
                  width: 180,
                  child: Text(notificationItem!.title! ,
                  overflow: TextOverflow.fade,
                  style: const TextStyle(
                    fontSize: 12 ,fontWeight: FontWeight.bold
                  ),
                  
                  ),
                ) ,

Text(notificationItem!.time! ,
                overflow: TextOverflow.fade,
                style: const TextStyle(
                  fontSize: 12 ,color: AppColors.FilterBtnBorderColor
                ),
                
                )

              ],
              ) ,
              SizedBox(
                width: 150,
                height: 80,
                child: Image.asset(notificationItem!.vidThumnail! ,fit: BoxFit.cover,),

              ),
              IconButton(onPressed: (){}, icon: const Icon(Icons.more_vert ,color: Colors.black)),
        ],
      ),
    );
  }
}