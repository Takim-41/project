import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:multi_select_flutter/bottom_sheet/multi_select_bottom_sheet.dart';
import 'package:multi_select_flutter/bottom_sheet/multi_select_bottom_sheet_field.dart';
import 'package:multi_select_flutter/chip_display/multi_select_chip_display.dart';
import 'package:multi_select_flutter/util/multi_select_item.dart';
import 'package:multi_select_flutter/util/multi_select_list_type.dart';

import '../../../TempDatabase/tempProducts.dart';
import '../../../core/size_config.dart';


class FilterAndSort extends StatefulWidget {
  const FilterAndSort({
    Key? key,
  }) : super(key: key);

  _FilterAndSortState createState() => _FilterAndSortState();
}

  class _FilterAndSortState extends State<FilterAndSort> {
    List <String> sortList = ["A-Z" , "sort by upload date", "sort by favourite rate"];
  final _items = product
      .map((item) => MultiSelectItem<TempProduct>(item, item.title))
      .toList();
  List<TempProduct> _selectedItems2 = [];


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
        padding: EdgeInsets.symmetric(
          horizontal: getProportionateScreenWidth(1),
          vertical: getProportionateScreenHeight(1)
        ),
        child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconButton(
            icon: SvgPicture.asset("assets/icons/filter.svg"),
            padding: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(75)),
            iconSize: 15,
            onPressed: () =>
              MultiSelectBottomSheetField(
              initialChildSize: 0.4,
              listType: MultiSelectListType.CHIP,
              searchable: true,
              buttonText: Text("Favorite Animals"),
              title: Text("Animals"),
              items: _items,
              onConfirm: (values) {
                //_selectedItems2 = values;
              },
              chipDisplay: MultiSelectChipDisplay(
                onTap: (value) {
                  setState(() {
                    _selectedItems2.remove(value);
                  });
                },
              ),
            ),
          ),
          IconButton(
            icon: SvgPicture.asset("assets/icons/direction-vertical.svg"),
            padding: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(75)),
            iconSize: 15,
            onPressed: () {}
            )
           ],
          ),
        ),
      ],
    );
  }
}

