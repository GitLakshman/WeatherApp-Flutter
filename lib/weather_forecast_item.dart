import 'package:flutter/material.dart';

class WeaterForecastInfoItem extends StatelessWidget {
  final String time;
  final IconData icon;
  final String temperature;
  const WeaterForecastInfoItem({
    super.key,
    required this.time,
    required this.icon,
    required this.temperature,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 6,
      child: Container(
        width: 90,
        padding: const EdgeInsets.all(8.0),
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(12)),
        child: Column(
          children: [
            Text(
              time,
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
            const SizedBox(height: 8.0),
            Icon(icon),
            const SizedBox(height: 8.0),
            Text(temperature),
          ],
        ),
      ),
    );
  }
}
