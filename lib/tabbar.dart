import 'package:flutter/material.dart';
import 'package:zuki_laundry/History/dalamProses.dart';
import 'package:zuki_laundry/History/riwayat.dart';

class Tabbar extends StatefulWidget {
  const Tabbar({super.key});

  @override
  State<Tabbar> createState() => _TabbarState();
}

class _TabbarState extends State<Tabbar>with SingleTickerProviderStateMixin {
  TabController? controller;

  @override
  void initState() {
    super.initState();
    controller = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    controller?.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 100,
          title: const Text('Riwayat', style: TextStyle(color: Colors.black, fontWeight: FontWeight.w600, fontSize: 25),),
          backgroundColor: Colors.transparent,
          elevation: 0,
          automaticallyImplyLeading: false,
        ),
        body:  SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            SizedBox(
              height: 30,
              width: 280,
              child: AppBar(
                elevation: 0,
                backgroundColor: Colors.transparent,
                flexibleSpace: TabBar(
                  indicatorSize: TabBarIndicatorSize.label,
                  indicatorWeight: 2,
                  indicatorColor: const Color.fromRGBO(25, 164, 206, 1),
                  unselectedLabelColor: Colors.grey,
                  labelColor: Colors.black,
                  controller: controller,
                  tabs: const [
                  SizedBox(
                    height: 50,
                    child: 
                  Center(child: Text('Riwayat', style: TextStyle(fontWeight: FontWeight.w600),))), 
                  SizedBox(
                    height: 50,
                    child: 
                  Center(child: Text('Dalam Proses', style: TextStyle(fontWeight: FontWeight.w600),))), ],
                ),
                automaticallyImplyLeading: false,
              ),
            ),
            Expanded(
              child: TabBarView(
                controller: controller,
                children: const [
              Riwayat(),
              Proses(),
            ], ))
          ],)
        ),
      ),
    );
  }
}