import 'package:flutter/material.dart';

class ShoppingCard extends StatefulWidget {
  const ShoppingCard({super.key});

  @override
  State<ShoppingCard> createState() => _ShoppingCardState();
}

class _ShoppingCardState extends State<ShoppingCard> {

  Card ShoppingCard({required String url,required String title,required String Subtitle})
  {
    return Card(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
              height: 300,
              width: 300,
              child: Image.network(url,height: 200,width: 200,)),
          SizedBox(width: 20,),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(title,style: TextStyle(fontWeight: FontWeight.bold),),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(Subtitle,style: TextStyle(fontSize: 10),),
                ),
                SizedBox(height: 60,),
                Row(
                  children: [
                    SizedBox(width: 10,),
                    CircleAvatar(
                      child: Text("-",style: TextStyle(fontSize: 28,color: Colors.blue),),
                    ),
                    SizedBox(width: 10,),
                    Text("0"),
                    SizedBox(width: 10,),
                    CircleAvatar(
                      child: Text("+",style: TextStyle(fontSize: 28,color: Colors.blue),),
                    ),
                    SizedBox(width: 20,),
                    CircleAvatar(
                      child: IconButton(onPressed: () {}, icon: Icon(Icons.delete)),
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Padding(
        padding: const EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Column(
            children: [
              ShoppingCard(
                title:'Mobile',
                Subtitle:'Samsung Z-Fold 7-Series',
                url:'https://akm-img-a-in.tosshub.com/indiatoday/images/story/202506/galaxy-z-fold-6-160941127-1x1_0.jpg?VersionId=cLH9yazRDH.iGD6dVFz8hrUZMBr71xCf'
              ),
              ShoppingCard(
                title:'Shoes',
                Subtitle:'Spark-X',
                url: 'https://redtape.com/cdn/shop/files/RSO4034_1_40cd841c-11dc-4c78-ab85-bfad034e31fe.jpg?v=1751015717'
              ),
              ShoppingCard(
                title:'Bag',
                Subtitle:'SkyBag',
               url: 'https://genietravel.com/cdn/shop/files/45DegreeAngle2_a8ae371a-570d-4adc-8d96-b2be68eeb941_1200x.jpg?v=1737023346'
              ),
              ShoppingCard(
                title:'T-Shirt',
                Subtitle:'White/Black/Orange Design T-Shirt',
                url: 'https://img-c.udemycdn.com/course/480x270/5444528_d4e3_5.jpg'
              ),
            ],
          ),
        ),
      ),
    );
  }
}