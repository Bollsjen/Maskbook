import 'package:flutter/material.dart';

import '../pages/CreateNewPost.dart';

class NewPost extends StatefulWidget {
  const NewPost({super.key});

  @override
  State<NewPost> createState() => NewPostState();
}

class NewPostState extends State<NewPost> {

  final postController = TextEditingController();

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
          child: Row(
            children: [
              Padding(
                padding: EdgeInsets.all(4),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.grey.shade200,
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(50),
                    child: Image(
                      image: NetworkImage('https://media-exp1.licdn.com/dms/image/D4E03AQE9IQsDmuLzZA/profile-displayphoto-shrink_200_200/0/1665592881570?e=1674086400&v=beta&t=nsG8xDyyVCA7kEy_Rx3cmJiUHEsHh4qzIA2bT3hxCIw'),
                      fit: BoxFit.cover,
                      height: 40,
                      width: 40,
                    ),
                  ),
                ),
              ),

              Expanded(child: Padding(
                padding: EdgeInsets.all(4),
                child: GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: ((context) => CreateNewPost())));
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        border: Border.all(color: Colors.grey.shade400,width: 1)
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16,vertical: 8),
                      child: Text(
                        'What are you up to?',
                        style: TextStyle(
                            fontSize: 16
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              ),

              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Icon(
                  Icons.photo_library,
                  color: Colors.green,
                  size: 24,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}