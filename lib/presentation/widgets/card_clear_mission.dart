import 'package:flutter/material.dart';
import 'package:jelajah/common/theme.dart';
import 'package:jelajah/data/model/plan.dart';
import 'package:jelajah/presentation/pages/plan_detail_page.dart';

class CardClearMission extends StatefulWidget {
  final PlanModel plan;

  static const colorBiru = Color(0xff2F80ED);
  static const colorMerah = Color(0xffED1C24);

  const CardClearMission({Key? key, required this.plan}) : super(key: key);

  @override
  State<CardClearMission> createState() => _CardClearMissionState();
}

class _CardClearMissionState extends State<CardClearMission> {
  PlanModel? planDetail = null;

  @override
  Widget build(BuildContext context) {
    return InkWell(
        child: Container(
          padding: const EdgeInsets.all(8),
          margin: const EdgeInsets.only(bottom: 8),
          height: 40,
          decoration: BoxDecoration(
              border: Border.all(
                color: CardClearMission.colorBiru,
                style: BorderStyle.solid,
                width: 2.0,
              ),
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                    color: CardClearMission.colorBiru.withOpacity(0.1),
                    blurRadius: 4,
                    offset: const Offset(0, 4))
              ]),
          child: Row(
            children: [
              Expanded(
                  flex: 1,
                  child: Center(
                      child: Text('1/' + planDetail!.missions.length.toString(),
                          style: fontStyle.bodyText1))),
              Expanded(
                  flex: 4,
                  child: Text(widget.plan.name, style: fontStyle.bodyText1))
            ],
          ),
        ),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => PlanDetailPage(planDetail: planDetail!)),
          );
        });
  }
}
