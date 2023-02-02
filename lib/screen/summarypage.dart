import 'package:flutter/material.dart';
import 'package:flutter_drawer/service/summaryService.dart';
import 'package:flutter_drawer/widget/drawer.dart';

void main(){
  runApp(const SummaryReportApp());
}

class SummaryReportApp extends StatefulWidget {
  const SummaryReportApp({Key? key}) : super(key: key);
  
  @override
  State<SummaryReportApp> createState() => _SummaryReportAppState();
}

class _SummaryReportAppState extends State<SummaryReportApp> {

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Summary Report",
      home: SummaryReportHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class SummaryReportHomePage extends StatelessWidget {
  const SummaryReportHomePage({Key? key}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Summary Report",
        ),
        backgroundColor: Colors.green,
        centerTitle: true,
        titleSpacing: 2.0,
      ),
      body: FutureBuilder(
        future: fetchSummaryReport(),
        builder: (BuildContext  context, AsyncSnapshot snapshot){
          if(snapshot.data == null){
            return const Center(
              child: Text("Loading"),
            );
          }else{
            return ListView.builder(
              shrinkWrap: true,
              itemCount: snapshot.data.length,
              itemBuilder: (BuildContext context, int index){
                return Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(5.0, 0.5, 5.0, 0.5),
                  child: Card(
                    child: ListTile(
                      leading: const Icon(Icons.perm_device_info_rounded),
                      title: Text(snapshot.data[index]['Project']),
                      subtitle: Text(snapshot.data[index]['LocationRevision'] + ' - ' + snapshot.data[index]['AssetsStatus'] + ' - Total: ' + snapshot.data[index]['Count'].toString()),
                      onTap: (){
                      },
                    ),
                  ),
                );
              },
            );
          }
        },
      ),
      drawer: const Drawer(
        child: DrawerCust(),
      ),
    );
  }
}

