import 'package:flutter/material.dart';

class BottomModelItem extends StatelessWidget {
  final dynamic icon;
  final String? title;
  final Function()? onTap;
  const BottomModelItem({ Key? key, this.icon, this.title, this.onTap }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onTap!();
      },
      child: SizedBox(
        width: 250,
        child:Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
Container(
  height: 60,
  decoration: BoxDecoration(
  shape: BoxShape.circle    ,color: Colors.grey.withOpacity(0.30)
),

child: Center(
  child: 
  
  icon is String?
  
  ImageIcon(AssetImage(icon!)) :Icon(icon),
),
) ,
const SizedBox(width: 10,) ,
Text(title!, style: const TextStyle(fontSize: 14 ,fontWeight: FontWeight.w500),)
          ],
        )
      ),
    );
  }
}