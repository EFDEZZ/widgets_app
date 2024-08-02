import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

List<SlidesInfo> slides = [
  SlidesInfo(title: 'Busca la comida', caption: 'Tempor aliquip eu laborum nulla id ipsum esse tempor reprehenderit laboris culpa dolore nulla.', url: 'assets/Images/1.png'),
  SlidesInfo(title: 'Entrega rápida', caption: 'Aliquip ad veniam incididunt fugiat aliqua ullamco aliquip enim cillum ex et aute velit.', url: 'assets/Images/2.png'),
  SlidesInfo(title: 'Disfruta el pedido', caption: 'Minim ullamco officia proident nisi ut esse excepteur ad.', url: 'assets/Images/3.png'),
];

class SlidesInfo {
  final String title;
  final String caption;
  final String url;

  SlidesInfo({
    required this.title, 
    required this.caption, 
    required this.url});
}

class AppTutorialScreen extends StatefulWidget {
  const AppTutorialScreen({super.key});

  @override
  State<AppTutorialScreen> createState() => _AppTutorialScreenState();
}

class _AppTutorialScreenState extends State<AppTutorialScreen> {
  final PageController pageViewController = PageController();
  bool endReached = false;

  @override
  void initState() {
    super.initState();
    
    pageViewController.addListener((){

      final page = pageViewController.page ?? 0;
      if ( !endReached && page >= (slides.length-1.5)){
        setState(() {
          endReached = true;
        });
      }
    });
  }
  
  @override
  void dispose() {
    pageViewController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: pageViewController, 
            physics: const BouncingScrollPhysics(),
            children: slides.map((slideData) => _Slide(title: slideData.title, caption: slideData.caption, url: slideData.url)).toList(),
          ),
          Positioned(
            top: 60,
            right: 20,
            child: TextButton(
              onPressed: (){
                context.pop();
              }, 
              child: const Text("Omitir",style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),))),

          endReached ? Positioned(
            bottom: 40,
            right: 20,
            child: FilledButton(
              onPressed: () => context.pop(), 
              child: const Text("Comenzar")
                )
              ):const SizedBox(),
        ],
      ),
    );
  }
}

class _Slide extends StatelessWidget {
  final String title;
  final String caption;
  final String url;
  const _Slide({required this.title, required this.caption, required this.url});

  @override
  Widget build(BuildContext context) {
    final titleStyle = Theme.of(context).textTheme.titleLarge;
    final captionStyle = Theme.of(context).textTheme.bodyLarge;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(url),
              Text(title, style: titleStyle,),
              Text(caption, style: captionStyle,),
            ],
          ),
        ),
      ),
    );
  }
}