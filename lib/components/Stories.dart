import 'package:flutter/material.dart';
import 'package:maskbook/components/StoryCard.dart';

class Stories extends StatefulWidget {
  const Stories({super.key});

  @override
  State<Stories> createState() => StoriesState();
}

class StoriesState extends State<Stories> {

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 8),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
        ),
        child: Padding(
          padding: EdgeInsets.all(2),
          child: Column(
            children: [
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border(bottom: BorderSide(color: Colors.grey.shade400, width: 1))
                ),
                child: Row(
                  children: [
                    Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border(bottom: BorderSide(color: Colors.blue.shade400, width: 2))
                          ),
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Color.fromRGBO(255, 255, 255, 1),
                              shadowColor: Color.fromRGBO(255, 255, 255, 0.0),
                              onPrimary: Colors.grey.shade400,
                            ),
                            onPressed: () {},
                            child: Text(
                              'Stories',
                              style: TextStyle(
                                  color: Colors.blue[500]
                              ),
                            )
                        ),  
                      )
                    ),

                    Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                          ),
                          child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Color.fromRGBO(255, 255, 255, 1),
                                shadowColor: Color.fromRGBO(255, 255, 255, 0.0),
                                onPrimary: Colors.grey.shade400,
                              ),
                              onPressed: () {},
                              child: Text(
                                'Reels',
                                style: TextStyle(
                                    color: Colors.grey.shade500
                                ),
                              )
                          ),
                        )
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.all(12),
                child: Container(
                  width: double.infinity,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Container(
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
                                borderRadius: BorderRadius.only(topRight: Radius.circular(10), topLeft: Radius.circular(10)),
                                child: Image(
                                  image: NetworkImage('https://media-exp1.licdn.com/dms/image/D4E03AQE9IQsDmuLzZA/profile-displayphoto-shrink_200_200/0/1665592881570?e=1674086400&v=beta&t=nsG8xDyyVCA7kEy_Rx3cmJiUHEsHh4qzIA2bT3hxCIw'),
                                  fit: BoxFit.cover,
                                  height: 125,
                                  width: 100,
                                ),
                              ),
                            ),

                            Align(
                              alignment: Alignment.center,
                              child: Padding(
                                padding: EdgeInsets.only(top: 76),
                                child: Container(
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(50)
                                  ),
                                  child: Padding(
                                    padding: EdgeInsets.all(1),
                                    child: Icon(
                                      Icons.add_circle,
                                      color: Colors.blue[600],
                                      size: 36,
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
                                    'Creat story',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold
                                    )
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      StoryCard(),
                      StoryCard(),
                      StoryCard(),
                      StoryCard(),
                      StoryCard()
                    ],
                  ),
                ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}