import 'package:flutter/material.dart';
import 'package:myapp/pages/login/login.dart';
import 'package:myapp/pages/roomList/room_list.dart';
import 'package:myapp/pages/roomList/room_list_view.dart';
import 'package:myapp/pages/test.dart';
import 'package:myapp/utils.dart';
import 'package:myapp/pages/login/login_view.dart';

import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:matrix/matrix.dart';
import 'package:path_provider/path_provider.dart';
import 'package:provider/provider.dart';

void main() async {
	WidgetsFlutterBinding.ensureInitialized();

	final client = Client(
		'Matrix Example Chat',
		databaseBuilder: (_) async {
			final dir = await getApplicationSupportDirectory();
			final db = HiveCollectionsDatabase('matrix_example_chat', dir.path);
			await db.open();
			return db;
		},
	);

	await client.init();
	runApp(MyApp(client: client));
}

class MyApp extends StatelessWidget {
	final Client client;

	const MyApp({required this.client, super.key});

	@override
	Widget build(BuildContext context) {
		return MaterialApp(
				localizationsDelegates: const [
					AppLocalizations.delegate,
					GlobalMaterialLocalizations.delegate,
					GlobalWidgetsLocalizations.delegate,
					GlobalCupertinoLocalizations.delegate,
				],
				title: "Title",
				supportedLocales: const [
					Locale('en'), //English
					Locale('uk'),  //Ukrainian
					Locale('ru')  //Russian
				],
				debugShowCheckedModeBanner:
				false,
				scrollBehavior: MyCustomScrollBehavior(),
				theme: ThemeData(primarySwatch: Colors.blue),
				builder: (context, child) => Provider<Client>(
					create: (context) => client,
					child: child,
				),
				home: client.isLogged() ? RoomList() : const Login(),
		);
	}
}
