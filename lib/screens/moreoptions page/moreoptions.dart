import 'package:flutter/material.dart';
import 'package:goodhealth/data/moreinfoData.dart';

class MoreOptionPage extends StatefulWidget {
  const MoreOptionPage({Key? key}) : super(key: key);

  @override
  _MoreOptionPageState createState() => _MoreOptionPageState();
}

class _MoreOptionPageState extends State<MoreOptionPage> {
  List<MoreInfo> moreinfoOption = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    moreinfoOption = getInfos();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("More Info"),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.transparent,
          ),
          onPressed: () {},
        ),
      ),
      body: ListView.builder(
        itemBuilder: (context, i) {
          return ExpansionTile(
            title: Text(moreinfoOption[i].getTitle()),
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 20.0, vertical: 10.0),
                child: Text(moreinfoOption[i].getDesc()),
              ),
            ],
          );
        },
        itemCount: moreinfoOption.length,
      ),
    );
  }
}
