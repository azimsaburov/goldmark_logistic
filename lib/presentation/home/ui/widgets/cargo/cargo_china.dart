import 'package:flutter/material.dart';
import 'package:goldmark_logistic/constants/colors_const.dart';
import 'package:goldmark_logistic/mock/cargo_mock.dart';
import 'package:goldmark_logistic/mock/dammy_data.dart';

class CargoChina extends StatelessWidget {
  CargoChina({super.key});

  final List<Cargo> cargos = dammyData;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(40)),
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: DataTable(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: ColorsConst.primary,
          ),
          columnSpacing: 10,
          columns: const [
            DataColumn(label: Text('Код клиента')),
            DataColumn(label: Text('Номер груза')),
            DataColumn(label: Text('Категория товара')),
            DataColumn(label: Text('Количество мест')),
            DataColumn(label: Text('Статус для клиента')),
            DataColumn(label: Text('Комментарий')),
          ],
          rows: cargos.map((cargo) {
            return DataRow(
              
              cells: [
                DataCell(Text(cargo.clientCode)),
                DataCell(Text(cargo.cargoNumber)),
                DataCell(Text(cargo.category)),
                DataCell(Text(cargo.quantity)),
                DataCell(
                  Text(
                    cargo.status,
                    style: TextStyle(
                      color: cargo.status == 'В пути'
                          ? Colors.green
                          : Colors.black,
                    ),
                  ),
                ),
                DataCell(
                  SizedBox(
                    width: 150,
                    child: Text(cargo.comment, overflow: TextOverflow.ellipsis),
                  ),
                ),
              ],
            );
          }).toList(),
        ),
      ),
    );
  }
}
