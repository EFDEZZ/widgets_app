import 'package:flutter/material.dart';

class ProgressScreen extends StatelessWidget {
  const ProgressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Progress Indicators"),
      ),
      body: const _ProgressView(),
    );
  }
}

class _ProgressView extends StatelessWidget {
  const _ProgressView();

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(
        children: [
          Text("Circular Progress Indicator"),
          SizedBox(height: 12,),
          // CircularProgressIndicator(strokeWidth: 2, backgroundColor: Colors.black12,),
          SizedBox(height: 20,),
          Text("Progress Indicator Controlado"),
          _ControlledProgressIndicator(),
        ],
      )
      );
  }
}

class _ControlledProgressIndicator extends StatelessWidget {
  const _ControlledProgressIndicator();

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: Stream.periodic(
        const Duration(milliseconds: 10), (value){
          return (value*2)/1000.toDouble(); 
        } ).takeWhile((value) => value < 1 ),
      builder: (context, snapshot) {
        final progressValue = snapshot.data ?? 0;
        return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          children: [
            CircularProgressIndicator(strokeWidth: 2, backgroundColor: Colors.black26, value: progressValue,),
            const SizedBox(width: 20,),
            Expanded(child: LinearProgressIndicator(value: progressValue,)),
          ],
        ),
      );
      }, 
    );
  }
}