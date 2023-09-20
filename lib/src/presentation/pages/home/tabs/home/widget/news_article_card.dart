import 'package:flutter/material.dart';

import '../../../../../../config/size/size.dart';

class NewsArticleCard extends StatelessWidget {
  const NewsArticleCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final fSize = SizeComp.fSize;

    return Container(
      margin: EdgeInsets.only(bottom: fSize * 2),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(fSize * 1.5),
      ),
      height: 300,
      child: Card(
        child: Column(
          children: [
            AspectRatio(
              aspectRatio: 1.8,
              child: Image.asset(
                'assets/images/globe.jpg',
                fit: BoxFit.cover,
              ),
            ),
            Container(
              padding: EdgeInsets.all(fSize * 2),
              child: Row(
                children: [
                  const Expanded(
                    child: Text(
                      'A simple trick for creating color palettes quickly',
                    ),
                  ),
                  SizedBox(width: fSize * 2),
                  const Icon(
                    Icons.bookmark,
                    size: 24,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
