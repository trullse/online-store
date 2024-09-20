import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:online_store/presentation/app/app.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:yandex_maps_mapkit/init.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await dotenv.load(fileName: '.env');
  String apiKey = dotenv.env['YANDEX_MAPS_API_KEY']!;
  await initMapkit(apiKey: apiKey);

  runApp(
    const ProviderScope(
      child: App(),
    ),
  );
}
