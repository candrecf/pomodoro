import 'package:flutter/material.dart';
import 'package:pomodoro/pages/pomodoro.dart';
import 'package:provider/provider.dart';

import 'store/pomodoro.store.dart';

void main() {
  runApp(const MyHomePage());
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<PomodoroStore>(
          create: (_) => PomodoroStore(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        // theme: ThemeData(
        //   elevatedButtonTheme: ElevatedButtonThemeData(
        //     style: ElevatedButton.styleFrom(
        //       backgroundColor: Colors.blue,
        //       foregroundColor: Colors.white,
        //       iconColor: Colors.white,
        //     ),
        //   ),
        // ),
        home: Pomodoro(),
      ),
    );
  }
}

// final store = ContadorStore();
// class HomePage extends StatelessWidget {
//   const HomePage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Contador'),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Text('Clique aqui'),
//             Observer(
//               builder: (_) => Text('${store.contador}'),
//             ),
//           ],
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: store.incrementar,
//         tooltip: 'Incrementar',
//         child: Icon(Icons.add),
//       ),
//     );
//   }
// }
