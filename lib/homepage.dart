
import 'details.dart';
import 'package:flutter/material.dart';
const textst="Montserrat";
class Homepage extends StatefulWidget {


  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor:Color(0XFF21BFBD) ,
body:SafeArea(
  child:   Column(
  
    children: [
        Padding(
  padding:  EdgeInsets.symmetric(vertical: 10, horizontal: 30),
          child: Row(

            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  IconButton(onPressed: (){}, color:Colors.white,icon: Icon(Icons.arrow_back_ios)),
                ],
              ),
              SizedBox(
                width:150,
              ),

              Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(onPressed: (){},color:Colors.white, icon: Icon(Icons.filter_list)),
                  IconButton(onPressed: (){},color:Colors.white, icon: Icon(Icons.menu)),
                ],

              )
            ],

          ),
        ),
      
      SizedBox(height:20),
      Padding(
        padding:  EdgeInsets.symmetric(vertical: 0, horizontal: 30),
        child: Row(
          children: [
            Text("Healthy",
            style:TextStyle(fontSize:40.0,
              fontWeight:FontWeight.w500,
              color: Colors.white,
            ),
            ),
            Text("food",
            style:TextStyle(fontSize:35.0,
              fontWeight:FontWeight.w200,
              color: Colors.white,
            ),

            )
          ],
        ),
      ),
      SizedBox(height:40),

      Expanded(
        child: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(topLeft:Radius.circular(75) ),
        ),
child:Padding(
      padding: const EdgeInsets.all(8.0),
      child:   ListView(
padding: EdgeInsets.all(50),
primary: false,
children: [

  _buildfoods( context,"Assets/plate1.png", "BEEF " , "\$24.00" ),

  _buildfoods(context, "Assets/plate2.png", "CHICKEN " , "\$15.00" ),

  _buildfoods(context,"Assets/plate3.png", "SALMON" , "\$30.00" ),

  _buildfoods( context,"Assets/plate4.png", "PORK" , "\$25.00" ),

  _buildfoods(context, "Assets/plate5.png", "LAMB" , "\$27.00" ),
  _buildfoods(context, "Assets/plate1.png", "BEEF " , "\$24.00" ),

  _buildfoods( context,"Assets/plate2.png", "CHICKEN " , "\$15.00" ),

  _buildfoods( context,"Assets/plate3.png", "SALMON" , "\$30.00" ),

  _buildfoods(context,"Assets/plate4.png", "PORK" , "\$25.00" ),

  _buildfoods( context, "Assets/plate5.png", "LAMB" , "\$27.00" ),

],

      ),
    )

        ),
      ),
SizedBox(height: 0,),
Container(
  height: 70,
  decoration: BoxDecoration(
    color: Colors.white,

  ),
  child:
    Padding(
      padding: const   EdgeInsets.symmetric(vertical: 5, horizontal: 30),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,

        children: [

          bottombuttons(Icons.search),

          bottombuttons(Icons.shopping_bag),

          Container(

            height:60,

            width: 120,

            decoration: BoxDecoration(
color: Colors.black,
                border: Border.all(

                    color: Colors.black,

                    style: BorderStyle.solid,

                    width: 1),

                borderRadius: BorderRadius.circular(30,

                )

            ),

            child: Center(

              child: Text("CHECKOUT",

                style: TextStyle(fontFamily:"Monteserrat",

                  color:Colors.white,

                  fontSize: 15,

                ),

              ),



            ),

          ),

        ],

      ),
    )
)
    ],
  ),


),
      );

  }
}

  Widget _buildfoods(BuildContext context , String imgpath, String foodname, String price){
  return InkWell(
    onTap: (){
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) =>Details(imgpath,foodname,price),
        ),
      );
    },
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
Hero(tag: imgpath, child: Myimage(imgpath)),
        SizedBox(width: 10,),
        Expanded(
          child: Column(
           crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(foodname,
                style: const TextStyle(
                  fontFamily:textst,
                  fontSize:17.0,
                  fontWeight:FontWeight.w200,
                ),
              ),
              Text(price,
                style: const TextStyle(
                  fontFamily:textst,
                  fontSize:15.0,
                  fontWeight:FontWeight.w200,
                  color: Colors.grey,
                ),),
            ],
          ),
        ),

        SizedBox(width: 20,),
        IconButton(onPressed: (){}, icon:Icon(Icons.add), color: Colors.black,)
      ],
    ),


  );
  }


  class Myimage extends StatelessWidget {
  String img;
  Myimage(this.img);
    @override
    Widget build(BuildContext context) {
      return  Image(
        image: AssetImage(img),
        fit: BoxFit.cover,
        height: 75,
        width: 75,
      );
    }
  }
class bottombuttons extends StatelessWidget {
  IconData x;

  bottombuttons(this.x);

  @override
  Widget build(BuildContext context) {
    return Container(
      height:60,
      width: 60,
      decoration: BoxDecoration(
          border: Border.all(
              color: Colors.grey,
              style: BorderStyle.solid,
              width: 1),
          borderRadius: BorderRadius.circular(20,
          )
      ),
      child: Center(
        child: Icon(x, color: Colors.black,),
      ),
    );
  }
}
