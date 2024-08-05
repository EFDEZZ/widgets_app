import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class InfiniteScrollScreen extends StatefulWidget {

  const InfiniteScrollScreen({super.key});

  @override
  State<InfiniteScrollScreen> createState() => _InfiniteScrollScreenState();
}

class _InfiniteScrollScreenState extends State<InfiniteScrollScreen> {
  final ScrollController scrollController = ScrollController();
  bool isLoading = false;
  bool isMounted = true;
  List<int> imageIds = [1,2,3,4,5];

  void moveScrollToBottom(){
    if(scrollController.position.pixels+100 <= scrollController.position.maxScrollExtent) return;

      scrollController.animateTo(
        scrollController.position.pixels+120, 
        duration: const Duration(milliseconds: 300), 
        curve: Curves.fastOutSlowIn);
    
  }

  Future<void> onRefresh () async{
    isLoading = true;
    setState(() { });
    await Future.delayed(const Duration(seconds: 2));
    
    if(!isMounted) return;
    isLoading = false;
    final lastImage = imageIds.last;
    imageIds.clear();
    imageIds.add(lastImage+1);
    addFiveImages();
    setState(() {
      
    });
  }

  void addFiveImages(){
    final lastImage = imageIds.last;
    imageIds.addAll(
      [1,2,3,4,5].map((e) => lastImage+e,)
    );
  }

  @override
  void initState() {
    super.initState();

    scrollController.addListener(() {
      if ((scrollController.position.pixels +500) >= scrollController.position.maxScrollExtent) {
        loadNextPage();
      }
    },);
  }

  Future loadNextPage() async{
    if(isLoading) return;
    
    setState(() {
      isLoading = true;
    });
    await Future.delayed(const Duration(seconds: 2));

    if(!isMounted) return;
    setState(() {
      addFiveImages();
      isLoading = false;
    });
    moveScrollToBottom();
  

  }

  @override
  void dispose() {
    scrollController.dispose();
    isMounted = false;
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: MediaQuery.removePadding(
        context: context,
        removeTop: true,
        removeBottom: true,
        child: RefreshIndicator(
          edgeOffset: 15,
          strokeWidth: 2,
          onRefresh: onRefresh,
          child: ListView.builder(
            controller: scrollController,
            itemCount: imageIds.length,
            itemBuilder: (context, index) {
              return FadeInImage(
                fit: BoxFit.cover,
                width: double.infinity,
                height: 300,
            placeholder: const AssetImage('assets/Images/jar-loading.gif'), 
            image: NetworkImage('https://picsum.photos/id/${imageIds[index]}/500/300'),);
            },
            ),
        ),
      ),
        floatingActionButton: FloatingActionButton(
          onPressed: () => context.pop(),
          child: isLoading? SpinPerfect(
            infinite: true,
            child: FadeIn(child: const Icon(Icons.refresh_rounded))): const Icon(Icons.arrow_back_ios_new_outlined),
          ),
    );
  }
}