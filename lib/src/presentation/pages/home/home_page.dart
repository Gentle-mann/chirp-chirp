import 'package:flutter/material.dart';

import '../../../config/size/size.dart';
import '../../widgets/header_text.dart';
import 'tabs/home/widget/news_article_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final fSize = SizeComp.fSize;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding:
              EdgeInsets.symmetric(vertical: fSize * 4, horizontal: fSize * 2),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const HeaderText('Browse'),
              SizedBox(height: fSize),
              const Text('Read news from all around the world'),
              SizedBox(height: fSize * 4),
              const TextField(
                autocorrect: false,
                decoration: InputDecoration(
                  hintText: 'Search',
                  prefixIcon: Icon(Icons.search),
                  suffixIcon: Icon(
                    Icons.mic,
                  ),
                ),
              ),
              SizedBox(height: fSize * 2),
              const HeaderText('Breaking news'),
              SizedBox(height: fSize * 2),
              const NewsArticleCard(),
            ],
          ),
        ),
      ),
    );
  }
}
