import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:shadcn_flutter/shadcn_flutter.dart';
import 'package:taskorbit/presentation/screens/kaban-multi-task-screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(systemNavigationBarColor: Colors.transparent));
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ShadcnApp(

      debugShowCheckedModeBanner: false,
      title: 'My App',
      home:  KanbanMultiBoard(),
      theme: ThemeData(

        colorScheme: ColorSchemes.lightZinc(),
        radius: 0.7,
      ),
    );
  }
}