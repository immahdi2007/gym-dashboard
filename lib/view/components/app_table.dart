import 'package:flutter/material.dart';
import 'package:gym_dashboard_project/models/bodybuilders.dart';
import 'package:gym_dashboard_project/view/components/App_colors.dart';
import 'package:intl/intl.dart';

class AppTable extends StatefulWidget {

   final List<BodyBuilders> bodybuilders = [
    BodyBuilders(
        id: 1,
        name: 'علی',
        last_name: 'رضایی',
        start_date: DateTime(2023, 1, 1),
        goal: 'کاهش وزن',
        injury: 'دیسک کمر، آرتروز،',
        weight: 75.0,
        height: 180.0,
        img: "",
        analysis: "کلیک"),
    BodyBuilders(
        id: 2,
        name: 'مریم',
        last_name: 'محمدی',
        start_date: DateTime(2023, 2, 15),
        goal: 'افزایش حجم عضلات',
        injury: 'زانو درد،  پوکی استخان، مشکلات روانی',
        weight: 65.0,
        height: 170.0,
        img: "",
        analysis: "کلیک")
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
          analysis: "کلیک",
        ),
      );
    }
  }

  @override
  State<AppTable> createState() => _AppTableState();
}

class _AppTableState extends State<AppTable> {

  int? _selectedRowIndex;
  int? _hoverdRowIndex;
  Widget _buildHeaderCell(String text) {
    return Text(
      text,
      style: TextStyle(
          color: AppColors.primary,
          fontSize: 24.0,
          fontWeight: FontWeight.w800,
      ),
    );
  }

    Widget _buildBodyCell(String text) {
    return Text(
      text,
      overflow: TextOverflow.ellipsis,
      maxLines: 1,
      softWrap: false,
      style: TextStyle(
          color: const Color.fromARGB(255, 0, 0, 0),
          fontSize: 24.0,
          fontWeight: FontWeight.w200,
      ),
    );
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
          // boxShadow: AppColors.container_shadow
          ),
      child: Column(
        children: [
          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.only(right: 30.0, top: 15.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Expanded(flex: 4, child: _buildHeaderCell("نام و نام خانوادگی")),
                  Expanded(flex: 3, child: _buildHeaderCell("تاریخ شروع")),
                  Spacer(flex: 1,),
                  Expanded(flex: 5, child: _buildHeaderCell("هدف")),
                  Expanded(flex: 5, child: _buildHeaderCell("آسیب")),
                  Spacer(flex: 1,),
                  Expanded(flex: 1, child: _buildHeaderCell("وزن")),
                  Expanded(flex: 1, child: _buildHeaderCell("قد")),
                  Expanded(flex: 2, child: _buildHeaderCell("عکس")),
                  Expanded(flex: 2, child: _buildHeaderCell("آنالیز")),
                ],
              ),
            ),
          ),

          //divider
          Container(
            height: 2.0,
            color: AppColors.primary,
            
          ),
      
          Expanded(
            flex: 6,
            child: ListView.builder(
              itemCount: widget.bodybuilders.length,
              itemBuilder: (context, index){

                final b = widget.bodybuilders[index];
                final isSelected = _selectedRowIndex == index;
                final isHovered = _hoverdRowIndex == index;

                return MouseRegion(
                  onEnter: (event) {
                    setState(() {
                      _hoverdRowIndex = index;
                    });
                  },
                  onExit: (event) {
                    setState(() {
                      _hoverdRowIndex = index;
                    });
                  },
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        _selectedRowIndex = index;
                      });
                    },
                    child: Container(
                      color: isSelected ?  AppColors.hoverPurple : isHovered ? AppColors.hoverPurple : null,
                      padding: EdgeInsets.only(right: 30.0, top: 10.0, bottom: 10.0),
                      child: Row(
                       children: [
                         Expanded(flex: 4 ,child: _buildBodyCell(b.name + " " + b.last_name)),
                         Expanded(flex: 3 ,child: _buildBodyCell(DateFormat("yyyy/MM/dd").format(b.start_date))),
                         Spacer(flex: 1,),
                         Expanded(flex: 5 ,child: _buildBodyCell(b.goal)),
                         Expanded(flex: 5 ,child: _buildBodyCell(b.injury)),
                         Spacer(flex: 1,),
                         Expanded(flex: 1 ,child: _buildBodyCell(b.weight.toString())),
                         Expanded(flex: 1 ,child: _buildBodyCell(b.height.toString())),
                         Expanded(flex: 2 ,child: _buildBodyCell(b.img)),
                         Expanded(flex: 2 ,child: _buildBodyCell(b.analysis)), 
                       ],
                     ),
                                     ),
                  ),
                );
              },
            ),
          )
      
      
        ],
      ),
    );
  }
}
