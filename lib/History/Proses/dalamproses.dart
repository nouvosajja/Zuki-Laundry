import 'package:flutter/material.dart';
import 'package:zuki_laundry/History/Proses/proseskonfirm.dart';
import 'package:zuki_laundry/History/Proses/prosestunggu.dart';

class proses extends StatefulWidget {
  const proses({super.key});

  @override
  State<proses> createState() => _prosesState();
}

class _prosesState extends State<proses> with SingleTickerProviderStateMixin {
  TabController? controller;
  @override
  void initState() {
    super.initState();
    controller = TabController(length: 2, vsync: this);
    controller?.addListener(_onTabChange);
  }

  void _onTabChange() {
    setState(() {});
  }

  @override
  void dispose() {
    controller?.removeListener(_onTabChange);
    controller?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Padding(
        padding: const EdgeInsets.only(top: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 45, // Increased the height to accommodate cards
              child: AppBar(
                elevation: 0,
                backgroundColor: Color.fromRGBO(244, 244, 244, 1),
                flexibleSpace: TabBar(
                  indicator: BoxDecoration(
                    color: Colors.transparent, // Warna indikator transparan
                  ),
                  controller: controller,
                  tabs: [
                    CardTabItem(
                      label: 'Menunggu',
                      onPressed: () {
                        controller?.animateTo(0);
                      },
                      isSelected: controller?.index == 0,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    CardTabItem(
                      label: 'Siap Diantar',
                      onPressed: () {
                        controller?.animateTo(1);
                      },
                      isSelected: controller?.index == 1,
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ],
                ),
                automaticallyImplyLeading: false,
              ),
            ),
            Expanded(
              child: TabBarView(
                controller: controller,
                children: [proses_tunggu(), proses_konfirm()],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CardTabItem extends StatefulWidget {
  final String label;
  final VoidCallback onPressed;
  final bool isSelected;
  final BorderRadius? borderRadius;

  const CardTabItem({
    required this.label,
    required this.onPressed,
    required this.isSelected,
    this.borderRadius,
  });

  @override
  _CardTabItemState createState() => _CardTabItemState();
}

class _CardTabItemState extends State<CardTabItem> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        widget.onPressed();
      },
      child: Card(
        elevation: widget.isSelected ? 0 : 2,
        color:
            widget.isSelected ? Color.fromRGBO(25, 164, 206, 1) : Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: widget.borderRadius ?? BorderRadius.circular(0),
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            child: Text(
              widget.label,
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 14,
                color: widget.isSelected ? Colors.white : Colors.black,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
