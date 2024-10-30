import 'package:flutter/material.dart';
import 'package:storytellers/card/report_history_card.dart';

class history_page extends StatelessWidget {
  const history_page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
         title: Text('Reports History'),
         actions: [
           IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back_ios))
         ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: GridView(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        children: [
          ReportHistoryCard(
            reportBuilding: 12,
            reportDate: '12/12/1222',
            reportDescribtion: 'idk',
            reportFloor: 1,
            reportID: '1020',
            reportIssue: 'many',
            reportRoomNo: 102
          ),
        ],),
      ),
    );
  }
}
