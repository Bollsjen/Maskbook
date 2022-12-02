import 'package:flutter/material.dart';
import 'package:maskbook/components/TitleBar.dart';
import 'package:maskbook/components/TopNavigationBar.dart';
import 'package:maskbook/pageContent/Menu.dart';
//import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:maskbook/pageContent/Feed.dart';

class FeedPage extends StatefulWidget {
  const FeedPage({super.key});

  @override
  State<FeedPage> createState() => FeedPageState();
}

class FeedPageState extends State<FeedPage> {

  String page = 'home';
  int currentPage = 0;
  Offset transitionOffset = Offset.zero;
  StatelessWidget contentWidget = Feed();
  List<Widget> children = new List.generate(1, (int i) => new Feed());

  buildChild () => Container(
    child: contentWidget,
  );

  @override
  Widget build(BuildContext context) {
    void SwitchPage(int clickedPage){
      if(clickedPage > currentPage){
        setState(() {
          transitionOffset = Offset(1.0, 0.0);
        });
      }else{
        setState(() {
          transitionOffset = Offset(-1.0, 0.0);
        });
      }
      currentPage = clickedPage;

      switch(currentPage){
        case 0:
          {
            setState(() {
              page = 'home';
              contentWidget = Feed();
            });
          }
          break;

        case 1: {
          setState(() {
            page = 'friends';
          });
        }
        break;

        case 2: {
          setState(() {
            page = 'watch';
          });
        }
        break;

        case 3: {
          setState(() {
            page = 'marketplace';
          });
        }
        break;

        case 4: {
          setState(() {
            page = 'notifications';
          });
        }
        break;

        case 5: {
          setState(() {
            page = 'menu';
            contentWidget = Menu();
          });
        }
        break;
      }
    }

    return Scaffold(
      body: SafeArea (
        child: Column(
          children: [
            TitleBar(),
            TopNavigationBar(page: page, function: SwitchPage,),
            Expanded(
              child: contentWidget,
              /*child: AnimatedSwitcher(
                duration: const Duration(milliseconds: 250),
                transitionBuilder: (Widget child, Animation<double> animation) {
                  return SlideTransition(position: Tween<Offset>(begin: transitionOffset, end: Offset(0,0)).animate(animation),child: child);
                },
                child: (currentPage == 0 ? Feed() : (currentPage == 5 ? Menu() : null))
              )*/
            )
          ],
        ),
      ),
    );
  }
}