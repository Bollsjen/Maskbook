import 'package:flutter/material.dart';

class PersonalPost extends StatefulWidget {
  const PersonalPost({super.key});

  @override
  State<PersonalPost> createState() => PersonalPostState();
}

class PersonalPostState extends State<PersonalPost> {

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 8),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white
        ),
        child: Padding(
          padding: EdgeInsets.all(8),
          child: Column(
            children: [
              Stack(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(50),
                        child: Image(
                          image: NetworkImage('https://media-exp1.licdn.com/dms/image/D4E03AQE9IQsDmuLzZA/profile-displayphoto-shrink_200_200/0/1665592881570?e=1674086400&v=beta&t=nsG8xDyyVCA7kEy_Rx3cmJiUHEsHh4qzIA2bT3hxCIw'),
                          fit: BoxFit.cover,
                          width: 40,
                          height: 40,
                        ),
                      ),
                      Expanded(
                          child: Padding(
                            padding: EdgeInsets.only(left: 8),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Wrap(
                                  children: [
                                    Text(
                                      'Magnus Boll Jensen',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    )
                                  ],
                                ),
                                Padding(
                                  padding: EdgeInsets.symmetric(vertical: 12),
                                  child: Text(
                                    '01/12/2022',
                                    style: TextStyle(
                                        color: Colors.grey.shade500,
                                      fontSize: 12,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          )
                      ),
                      Container(
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20),
                            child: Icon(Icons.more_horiz)),
                      ),
                      Container(
                        child: Icon(Icons.close),
                      )
                    ],
                  )
                ],
              ),

              Padding(
                padding: EdgeInsets.symmetric(vertical: 8),
                child:               Container(
                  child: Text(
                      'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.'
                  ),
                ),
              ),

              Container(
                decoration: BoxDecoration(
                    border: Border(bottom: BorderSide(color: Colors.grey.shade300, width: 1))
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 8),
                  child: Stack(
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: Wrap(
                          children: [
                            Wrap(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                      color: Colors.blue[400],
                                      borderRadius: BorderRadius.circular(50)
                                  ),
                                  child: Padding(
                                    padding: EdgeInsets.all(4),
                                    child: Icon(
                                      Icons.thumb_up,
                                      color: Colors.white,
                                      size: 14,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                                  child: Text('416004'),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),

                      Align(
                        alignment: Alignment.topRight,
                        child: Text('4 comments'),
                      )
                    ],
                  ),
                ),
              ),

                  Padding(
                    padding: EdgeInsets.only(top: 8),
                    child: Row(
                      children: [
                        Expanded(
                          child: Container(
                            child: Wrap(
                              children: [
                                Icon(Icons.thumb_up_alt_outlined),
                                Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                                  child: Text('Like'),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            child: Wrap(
                              children: [
                                Icon(Icons.speaker_notes_outlined),
                                Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                                  child: Text('Comment'),
                                ),
                              ],
                            ),
                          ),
                        ),

                        Expanded(
                          child: Container(
                            child: Wrap(
                              children: [
                                Icon(Icons.share),
                                Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                                  child: Text('Share'),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
            ],
          ),
        ),
      ),
    );
  }
}