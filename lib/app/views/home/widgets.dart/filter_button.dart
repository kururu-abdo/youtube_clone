import 'package:flutter/material.dart';
import 'package:youtube_clone/app/Utils/app_colors.dart';

class FilterButton extends StatelessWidget {
  final Function(int)? onClicked;
  final int? position;
   final int? selectedPos ;

  final String? title;
  const FilterButton({ Key? key, this.onClicked, this.position, this.selectedPos, this.title }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onClicked!(position!);
      },
      child: Container(
        height: 30,
        margin: const EdgeInsets.all(5),
        padding: const EdgeInsets.all(5),
        decoration: BoxDecoration(
          color: 
          selectedPos==position?
          AppColors.FilterBtnSelectedColor:
          AppColors.FilterBtnColor,
          border: Border.all(
            width: 1 ,
          color: 
          selectedPos==position?
          
          AppColors.FilterBtnBorderSelectedColor:
          AppColors.FilterBtnBorderColor,
          ) ,
          borderRadius: BorderRadius.circular(24)
        ),
        child: Center(child: Text(title! , 
        style: const TextStyle(
          fontSize: 12 ,
          color: Colors.black
        ),
        ),),
      ),
    );
  }
}