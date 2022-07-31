import 'package:flutter/material.dart';

class HistoryItem {
  

  final String? icon;
  final String? title;
  final String? totalVideos;
  final Icon? trailingIcon;

  HistoryItem(this.icon, this.title, this.totalVideos ,{this.trailingIcon});
}