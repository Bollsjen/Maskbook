import 'package:flutter/material.dart';

class TitleBar extends StatelessWidget {
  const TitleBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        decoration: BoxDecoration(
            color: Colors.white
        ),
        child: Row(
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.all(8),
                child: TextButton(
                  onPressed: () {

                  },
                  child: Text(
                      'Maskbook',
                      style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                        fontSize: 28,
                      )
                  ),
                ),
              ),
            ),

            Expanded(
              child: Align(
                alignment: Alignment.centerRight,
                child: Padding(
                  padding: EdgeInsets.all(12),
                  child: Wrap(
                    children: [
                      GestureDetector(
                        onTap: () {

                        },
                        child: Padding(
                          padding: EdgeInsets.all(2),
                          child: Container(
                            decoration: BoxDecoration(
                                color: Colors.grey.shade200,
                                borderRadius: BorderRadius.circular(50)
                            ),
                            child: Padding(
                              padding: EdgeInsets.all(8),
                              child: Icon(Icons.search_outlined),
                            ),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {

                        },
                        child: Padding(
                          padding: EdgeInsets.only(left: 6),
                          child: Container(
                            decoration: BoxDecoration(
                                color: Colors.grey.shade200,
                                borderRadius: BorderRadius.circular(50)
                            ),
                            child: Padding(
                              padding: EdgeInsets.all(8),
                              child: Icon(Icons.message),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        )
    );
  }
}