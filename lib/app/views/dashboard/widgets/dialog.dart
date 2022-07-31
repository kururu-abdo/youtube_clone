
import 'package:flutter/material.dart';

class MyDialog extends StatelessWidget {
  const MyDialog({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(1)
      ),
child: Container(width: 300,height: 200 ,padding: const EdgeInsets.all(10),

child: Column(
  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  crossAxisAlignment: CrossAxisAlignment.start,
  children:  [
const Text('Connet to a device' ,style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500),) ,

 Row(
  children: const [
SizedBox(
  width: 30,
  height: 30,
  child:   CircularProgressIndicator(
  strokeWidth: 2,
  color: Colors.black,
  ),
) ,
SizedBox(width: 5,) ,
Text('Searching for a device' ,style: TextStyle(fontSize: 12 )) ,

  ],
) ,
 Row(
  children: const [
Icon(Icons.devices) ,
SizedBox(width: 5,) ,
Text('Link with TV  code' ,style: TextStyle(fontSize: 12 )) ,

  ],
) ,
 Row(
  children: const [
Icon(Icons.info_outline) ,
SizedBox(width: 5,) ,
Text('Learn more' ,style: TextStyle(fontSize: 12 )) ,

  ],
)


  ],
),
),
    );
  }
}