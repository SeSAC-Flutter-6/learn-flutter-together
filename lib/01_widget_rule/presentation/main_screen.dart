import 'package:flutter/material.dart';
import 'package:learn_flutter_together/01_widget_rule/data/model/landmark.dart';
import 'package:learn_flutter_together/01_widget_rule/presentation/component/landmark_card.dart';

import 'component/greeting.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  // 상태(데이터)
  String text = '나는 신경쓰지 말 것';

  final landmarkList = [
    const Landmark(
      id: 1,
      title: 'title',
      subTitle: 'subTitle',
      imageUrl:
          'https://cdn.pixabay.com/photo/2023/10/18/00/59/mountain-8322610_1280.jpg',
    ),
    const Landmark(
      id: 2,
      title: 'title2',
      subTitle: 'subTitle2',
      imageUrl:
          'https://cdn.pixabay.com/photo/2018/04/25/09/26/eiffel-tower-3349075_1280.jpg',
    ),
  ];

  Set<int> favoriteSet = {};
  int favoriteCount = 40;

  void toggleFavorite(int id) {
    setState(() {
      if (favoriteSet.contains(id)) {
        favoriteSet.remove(id);
        favoriteCount--;
      } else {
        favoriteSet.add(id);
        favoriteCount++;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('제목'),
      ),
      body: Column(
        children: [
          Greeting(
            name: text,
            onTab: (name) {
              setState(() {
                text = name;
              });
            },
          ),
          ...landmarkList.map((landmark) => LandmarkCard(
            landmark: landmark,
            isFavorite: favoriteSet.contains(landmark.id),
            onFavoriteTap: (Landmark landmark) {
              toggleFavorite(landmark.id);
            },
          )),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // 변경
          setState(() {
            text = '바꼈음';
          });
        },
        child: const Text('변경'),
      ),
    );
  }
}
