import 'package:flutter/material.dart';
import 'package:maskbook/pages/pageInterfaces/PageInterface.dart';
import 'package:maskbook/pages/router/TopNavigationBarRouter.dart';
import 'package:maskbook/pages/FeedPage.dart';

class TopNavigationBar extends StatelessWidget {
  const TopNavigationBar(
      {
        super.key,
        required this.page,
        required this.function
      });

  final String page;
  final function;



  @override
  Widget build(BuildContext context){
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
        border: Border(bottom: BorderSide(color: Theme.of(context).dividerColor))
      ),
      child: Row(
        children: [
          Expanded(
            child: GestureDetector(
              onTap: (){
                if(page != 'home'){
                  function(0);
                }
              },
              child: Container(
                child: Padding(
                  padding: EdgeInsets.all(12),
                  child: Icon(
                    Icons.house,
                    color: (page == "home" ? Colors.blue[400] : Colors.grey.shade400),
                    size: 36,
                  ),
                ),
              ),
            ),
          ),

          Expanded(
            child: GestureDetector(
              onTap: (){
                function(1);
              },
              child: Container(
                child: Padding(
                  padding: EdgeInsets.all(12),
                  child: Icon(
                    Icons.group_outlined,
                    color: (page == "friends" ? Colors.blue[400] : Colors.grey.shade400),
                    size: 36,
                  ),
                ),
              ),
            ),
          ),

          Expanded(
            child: GestureDetector(
              onTap: (){
                function(2);
              },
              child: Container(
                child: Padding(
                  padding: EdgeInsets.all(12),
                  child: Icon(
                    Icons.movie,
                    color: (page == "watch" ? Colors.blue[400] : Colors.grey.shade400),
                    size: 36,
                  ),
                ),
              ),
            ),
          ),

          Expanded(
            child: GestureDetector(
              onTap: (){
                function(3);
              },
              child: Container(
                child: Padding(
                  padding: EdgeInsets.all(12),
                  child: Icon(
                    Icons.store,
                    color: (page == "marketplace" ? Colors.blue[400] : Colors.grey.shade400),
                    size: 36,
                  ),
                ),
              ),
            ),
          ),

          Expanded(
            child: GestureDetector(
              onTap: (){
                function(4);
              },
              child: Container(
                child: Padding(
                  padding: EdgeInsets.all(12),
                  child: Icon(
                    Icons.notifications,
                    color: (page == "notifications" ? Colors.blue[400] : Colors.grey.shade400),
                    size: 36,
                  ),
                ),
              ),
            ),
          ),

          Expanded(
            child: GestureDetector(
              onTap: (){
                function(5);
              },
              child: Container(
                child: Padding(
                  padding: EdgeInsets.all(12),
                  child: Icon(
                    Icons.menu,
                    color: (page == "menu" ? Colors.blue[400] : Colors.grey.shade400),
                    size: 36,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}