import 'package:flutter/material.dart';
import 'package:s3_costs/widgets/ad_banner.dart';
import '../logic/s3_cost_calculator.dart';

class CalculatorPage extends StatefulWidget {
  const CalculatorPage({super.key});

  @override
  State<CalculatorPage> createState() => _CalculatorPageState();
}

class _CalculatorPageState extends State<CalculatorPage> {
  final gbController = TextEditingController();
  final timesController = TextEditingController(text: '1');
  double? result;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('S3 ダウンロード料金概算')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            TextField(
              controller: this.gbController,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(labelText: 'ダウンロード容量（GB）'),
            ),
            TextField(
              controller: this.timesController,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(labelText: '月の回数'),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () {
                  final gb = double.tryParse(gbController.text) ?? 0;
                  final times = int.tryParse(timesController.text) ?? 1;
                  setState(() {
                    result = calculateS3DownloadCost(gb: gb, times: times);
                  });
                },
                child: const Text('計算する')),
            const SizedBox(
              height: 20,
            ),
            if (result != null)
              Text(
                '概算料金：￥${result!.toStringAsFixed(2)}',
                style: Theme.of(context).textTheme.titleLarge,
              ),
            const SizedBox(
              height: 16,
            ),
            const AdBanner()
          ],
        ),
      ),
    );
  }
}
