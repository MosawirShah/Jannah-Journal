import 'package:flutter/material.dart';
import 'package:jannah_journal/presentation/view_models/auth_view_model.dart';
import 'package:provider/provider.dart';

import 'app/app_settings.dart';

void main(){
  runApp(const JannahJournalApp());
}

class JannahJournalApp extends StatelessWidget {
  const JannahJournalApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (_)=> AuthViewModel()),
        ],
        child: AppSettings());
  }
}
