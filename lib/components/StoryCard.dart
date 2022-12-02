import 'package:flutter/material.dart';

class StoryCard extends StatefulWidget {
  const StoryCard({super.key});

  @override
  State<StoryCard> createState() => StoryCardState();
}

class StoryCardState extends State<StoryCard> {

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 8),
      child: Container(
        width: 100,
        height: 177,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: Colors.grey.shade300)
        ),
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10)
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image(
                  image: NetworkImage('https://cdn-free.tv2i.dk/e/d/i/editorial/5/8/5/585778b6-403e-4232-98b7-f5c3e0f40d8d?ixlib=js-3.2.1&w=624&h=351&q=60&auto=format&fit=crop&rect64=MCwwLDUwMDAsMjgwNg&s=0d76c2ac30025434febcf2c5cedd1c8c'),
                  fit: BoxFit.cover,
                  height: 177,
                  width: 100,
                ),
              ),
            ),

            Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: EdgeInsets.all(4),
                child: Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.blue.shade400,width: 2),
                      borderRadius: BorderRadius.circular(50)
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(2),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(50),
                      child: Image(
                        image: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT6pmcKsahk3T_-LxhpfEgbTSsDNKWM1eVSUtlXCN2Fjh6115UzWh6Dz2Oe3zGBia3IC6U&usqp=CAU'),
                        width: 35,
                        height: 35,
                      ),
                    ),
                  ),
                ),
              ),
            ),

            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: EdgeInsets.all(8),
                child: Text(
                    'TV 2 NYHEDERNE',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold
                    )
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}