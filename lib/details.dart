import 'package:flutter/material.dart';


class Details extends StatefulWidget {
  final heroTag;
  final foodName;
  final foodPrice;
  Details(this.heroTag,this.foodName,this.foodPrice);
  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor:Colors.cyan,
        body:SafeArea(
          child: Column(
            children: [
              Padding(
                padding:  EdgeInsets.symmetric(vertical: 10, horizontal: 30),
                child: Row(
mainAxisAlignment: MainAxisAlignment.spaceBetween,crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    IconButton(onPressed: (){}, color:Colors.white,icon: Icon(Icons.arrow_back_ios)),

                Text("Details",
          style:TextStyle(fontSize:40.0,
            fontWeight:FontWeight.w500,
            color: Colors.white,
          ),),

                    IconButton(onPressed: (){},color:Colors.white, icon: Icon(Icons.menu))
                  ],

                ),
              ),
Stack(
children: [
  Container(
   color: Colors.transparent,
    height:MediaQuery.of(context).size.height-82,
    width: MediaQuery.of(context).size.width,
  ),
  Positioned(top:75 ,child: Container(
    decoration: BoxDecoration(borderRadius: BorderRadius.only(
      topLeft: Radius.circular(45),
      topRight: Radius.circular(45),
    ),
        color:Colors.white,
    ),
    height:MediaQuery.of(context).size.height-100,
    width: MediaQuery.of(context).size.width,
  )
  ),
  Positioned(top:30 ,
      left: (MediaQuery.of(context).size.width/2)-100,
      child: Hero(tag: widget.heroTag, child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage(widget.heroTag),fit: BoxFit.cover)
        ),
        width: 200,
        height: 200,
      ))
  ),
],
),
            ],
          ),
        ),
      ),
    );
  }
}
