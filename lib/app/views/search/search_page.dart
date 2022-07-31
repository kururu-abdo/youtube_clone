import 'dart:developer';

import 'package:flutter/material.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({ Key? key }) : super(key: key);

  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {














  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.transparent ,elevation: 0.0,
      leading: IconButton(onPressed: () {

        Navigator.pop(context);
      }, icon: const Icon(Icons.arrow_back ,color: Colors.black,)),
      title:  const SizedBox(width: 300,
      child: SearchTextField(),
      ),
    //  centerTitle: true,
      ),
     
    );
  }
}

class SearchTextField extends StatefulWidget {
  const SearchTextField({
    Key? key,
  }) : super(key: key);

  @override
  State<SearchTextField> createState() => _SearchTextFieldState();
}

class _SearchTextFieldState extends State<SearchTextField> {
    final FocusNode _focusNode = FocusNode();
 final LayerLink _layerLink = LayerLink();
List<String> suggestions = [
  'Arsnal footbal club' , 'Real Madrid' ,'Barcelona' ,
  'Java Virtual Machine' 
];
 OverlayEntry? _overlayEntry;
TextEditingController searchController = TextEditingController();
void showOvelay(){
  var overlay =Overlay.of(context);
  overlay!.insert(_createOverlayEntry());
}
void hideOverlay(){
_overlayEntry!.remove();
}
OverlayEntry _createOverlayEntry() {

    RenderBox? renderBox = context.findRenderObject() as RenderBox;
    var size = renderBox.size;
    var offset = renderBox.localToGlobal(Offset.zero);

    _overlayEntry = OverlayEntry(
      builder: (context) => Positioned(
        left: offset.dx,
        top: offset.dy + size.height + 5.0,
        width: size.width,
        child: CompositedTransformFollower(
          link: _layerLink,
            offset: Offset(0.0, size.height + 5.0),
                    showWhenUnlinked: false,
          child: Material(
            elevation: 4.0,
            child: ListView(
              padding: EdgeInsets.zero,
              shrinkWrap: true,
              children: suggestions.map((e) =>  ListTile(
                  title: Text(e),
                  trailing: const Icon(Icons.history) ,

                  onTap: () {
searchController.text =e;
hideOverlay();
                  },
                ),).toList()
              
           
            ),
          ),
        ),
      )
    );

    return _overlayEntry!;
}



  @override
  void initState() {
    // TODO: implement initState
    super.initState();

     _focusNode.addListener(() {
      if (_focusNode.hasFocus) {
        showOvelay();
log('FOCUSED');
      } else {
        log('UNFOCUSED');

     // _overlayEntry?.remove();
     hideOverlay();
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    return CompositedTransformTarget(
         link: _layerLink,

      child: Container(
        width: 250,
        padding: const EdgeInsets.all(5),
        margin:const EdgeInsets.all(8),
        child: TextField(
          // onTap: () {
          //   showOvelay();
          // },
          controller: searchController,
          focusNode: _focusNode,
          decoration: InputDecoration(
            suffixIcon: const Icon(Icons.search),

            hintText: 'Search...',
            border: OutlineInputBorder(
                
              borderRadius: BorderRadius.circular(10) ,
              borderSide: BorderSide(
                width: 1 , color: Colors.grey.shade300
              )

            )
          ),
        ),
      ),
    );
  }
}