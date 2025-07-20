import 'package:flutter/material.dart';
import 'package:gym_dashboard_project/models/bodybuilders.dart';
import 'package:gym_dashboard_project/view/components/App_colors.dart';

class AppTable extends StatelessWidget {
  final List<BodyBuilders> bodybuilders = [
    BodyBuilders(
        id: 1,
        name: 'علی',
        last_name: 'رضایی',
        start_date: DateTime(2023, 1, 1),
        goal: 'کاهش وزن',
        injury: 'دیسک کمر، آرتروز، پوکی استخان',
        weight: 75.0,
        height: 180.0,
        img: "",
        analysis: "عالییی"
        ),
    BodyBuilders(
        id: 2,
        name: 'مریم',
        last_name: 'محمدی',
        start_date: DateTime(2023, 2, 15),
        goal: 'افزایش حجم عضلات',
        injury: 'زانو درد',
        weight: 65.0,
        height: 170.0,
        img: "",
        analysis: "عالیی")
  ];

  AppTable({super.key}) {
    for (var i = 0; i < 20; i++) {
      bodybuilders.add(
        BodyBuilders(
          id: i,
          name: 'مریم',
          last_name: 'محمدی',
          start_date: DateTime(2023, 2, 15),
          goal: 'افزایش حجم عضلات',
          injury: 'زانو درد',
          weight: 65.0,
          height: 170.0,
          img: "",
          analysis: "عالیی",
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(right: 30.0),
        width: 1175,
        height: 435,
        decoration: BoxDecoration(
            color: AppColors.surface,
            borderRadius: BorderRadius.circular(10.0),
            boxShadow: AppColors.container_shadow),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: DataTable(
              columns: [
                DataColumn(label: Text('آیدی')),
                DataColumn(label: Text('نام')),
                DataColumn(label: Text('نام خانوادگی')),
                DataColumn(label: Text('شروع')),
                DataColumn(label: Text('هدف')),
                DataColumn(label: Text('آسیب')),
                DataColumn(label: Text('قد')),
                DataColumn(label: Text('وزن')),
                DataColumn(label: Text('عکس')),
                DataColumn(label: Text('آنالیز')),
              ],
              rows: bodybuilders
                  .map((b) => DataRow(cells: [
                        DataCell(Text((b.id).toString())),
                        DataCell(Text(b.name)),
                        DataCell(Text(b.last_name)),
                        DataCell(Text(b.start_date.toIso8601String().split('T')[0])),
                        DataCell(Text(b.goal)),
                        DataCell(Text(b.injury)),
                        DataCell(Text(b.height.toString())),
                        DataCell(Text(b.weight.toString())),
                        DataCell(Text(b.img.toString())),
                        DataCell(Text(b.analysis.toString())),
                      ]))
                  .toList(),
            ),
          ),
        ));
  }
}
