import 'package:flutter/material.dart';

class SlideInfo {
  final String title;
  final String caption;
  final String imageUrl;

  SlideInfo({required this.title, required this.caption, required this.imageUrl});
}

final slides = <SlideInfo> [
  SlideInfo(title: 'Busca la comida', caption: 'Quis non magna laboris est aliquip excepteur ullamco commodo nisi culpa incididunt.', imageUrl: 'assets/images/1.png'),
  SlideInfo(title: 'Entrega rápida', caption: 'Consectetur ut et et ullamco in consequat proident fugiat labore amet duis aliquip.', imageUrl: 'assets/images/2.png'),
  SlideInfo(title: 'Disfruta la comida', caption: 'Et voluptate sit ullamco tempor dolor commodo incididunt commodo Lorem veniam magna incididunt.', imageUrl: 'assets/images/3.png'),
];






class AppTutorialScreen extends StatelessWidget {

  static const name = 'tutorial_screen';

  const AppTutorialScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: PageView(
        physics: const BouncingScrollPhysics(),
        children: slides.map((
          slideData) => _Slide(
            title: slideData.title, 
            caption: slideData.caption, 
            imageUrl: slideData.imageUrl
          )
        ).toList()
      ),

    );
  }
}

class _Slide extends StatelessWidget {

  final String title;
  final String caption;
  final String imageUrl;

  const _Slide({
    required this.title, 
    required this.caption, 
    required this.imageUrl
  });

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}