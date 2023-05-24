import 'package:flutter/material.dart';
import 'package:zuki_laundry/History/dalamProses.dart';
import 'package:zuki_laundry/History/history.dart';

class Tabbar extends StatefulWidget {
  const Tabbar({super.key});

  @override
  State<Tabbar> createState() => _TabbarState();
}

class _TabbarState extends State<Tabbar>with SingleTickerProviderStateMixin {
  TabController? controller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    controller?.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Riwayat', style: TextStyle(color: Colors.black),),
          backgroundColor: Colors.transparent,
          elevation: 0,
          automaticallyImplyLeading: false,

        ),
        body:  SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            SizedBox(
              height: 50,
              width: 250,
              child: AppBar(
                elevation: 0,
                backgroundColor: Colors.transparent,
                flexibleSpace: TabBar(
                  unselectedLabelColor: Colors.grey,
                  labelColor: Colors.black,
                  controller: controller,
                  tabs: [
                  Container(
                    height: 50,
                    child: 
                  Center(child: Text('Riwayat'))), 
                  Container(
                    height: 50,
                    child: 
                  Center(child: Text('Dalam Proses'))), ],
                ),
                automaticallyImplyLeading: false,
              ),
            ),
            Expanded(
              child: TabBarView(
                controller: controller,
                children: [
              History(),
              Proses(),
            ], ))
          ],)
        ),
      ),
    );
  }
}