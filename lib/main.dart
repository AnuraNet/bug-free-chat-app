
import 'package:flutter/material.dart';

void main() => runApp(ChatApp());

class ChatApp extends StatelessWidget {

    @override
    Widget build(BuildContext context) {
        final brightColor = Color.fromARGB(255, 239, 239, 239);
        final textColor = Color.fromARGB(255, 186, 186, 186);
        return MaterialApp(
            title: 'Anura ChatApp',
            theme: ThemeData(
                brightness: Brightness.dark,
                appBarTheme: AppBarTheme(
                    actionsIconTheme: IconThemeData(
                        color: brightColor // TODO: Doesn't work
                    ),
                    textTheme: TextTheme(
                        title: TextStyle(color: brightColor, fontSize: 20)
                    ),
                ),
                tabBarTheme: TabBarTheme(
                    labelColor: brightColor,
                    unselectedLabelColor: brightColor
                ),
                primaryColor: Color.fromARGB(255, 137, 184, 0),
                iconTheme: IconThemeData(
                    color: brightColor
                ),
                textTheme: TextTheme(
                    body1: TextStyle(fontWeight: FontWeight.w300)
                )

            ),
            home: DefaultTabController(
                length: 3,
                child: Scaffold(
                    appBar: AppBar(
                        title: Text('ChatApp'),
                        actions: <Widget>[
                            IconButton(
                                icon: Icon(Icons.search),
                                tooltip: 'Search',
                                onPressed: null,
                            ),
                            IconButton(
                                icon: Icon(Icons.settings),
                                tooltip: 'Settings',
                                onPressed: null,
                            ),
                            IconButton(
                                icon: Icon(Icons.account_circle),
                                tooltip: 'Profile',
                                onPressed: null,
                            )
                        ],
                        bottom: TabBar(
                            tabs: [
                                Tab(text: 'ANFRAGEN'),
                                Tab(text: 'CHATS'),
                                Tab(text: 'FAVORITEN')
                            ],
                            indicatorColor: brightColor,
                        )
                    ),
                    body: TabBarView(
                        children: [
                            Container(
                                child: ListView(
                                    children: [
                                        ListTile(
                                            leading: Icon(Icons.account_circle, size: 40),
                                            title: Text('Max Mustermann'),
                                            subtitle: Text('Beispieltext um zu zeigen, wie weit es...')
                                        ),
                                        ListTile(
                                            leading: Icon(Icons.account_circle, size: 40),
                                            title: Text('Max Mustermann'),
                                            subtitle: Text('Beispieltext um zu zeigen, wie weit es...')
                                        ),
                                        ListTile(
                                            leading: Icon(Icons.account_circle, size: 40),
                                            title: Text('Max Mustermann'),
                                            subtitle: Text('Beispieltext um zu zeigen, wie weit es...')
                                        )
                                    ]
                                ),
                            ),
                            Container(
                                child: ListView(
                                    children: [
                                        ListTile(
                                            leading: Icon(Icons.account_circle, size: 40),
                                            title: Text('Max Mustermann'),
                                            subtitle: Text('Beispieltext um zu zeigen, wie weit es...')
                                        ),
                                        ListTile(
                                            leading: Icon(Icons.account_circle, size: 40),
                                            title: Text('Max Mustermann'),
                                            subtitle: Text('Beispieltext um zu zeigen, wie weit es...')
                                        ),
                                        ListTile(
                                            leading: Icon(Icons.account_circle, size: 40),
                                            title: Text('Max Mustermann'),
                                            subtitle: Text('Beispieltext um zu zeigen, wie weit es...')
                                        )
                                    ]
                                ),
                            ),
                            Container(
                                child: ListView(
                                    children: [
                                        ListTile(
                                            leading: Icon(Icons.account_circle, size: 40),
                                            title: Text('Max Mustermann'),
                                            subtitle: Text('Beispieltext um zu zeigen, wie weit es...')
                                        ),
                                        ListTile(
                                            leading: Icon(Icons.account_circle, size: 40),
                                            title: Text('Max Mustermann'),
                                            subtitle: Text('Beispieltext um zu zeigen, wie weit es...')
                                        ),
                                        ListTile(
                                            leading: Icon(Icons.account_circle, size: 40),
                                            title: Text('Max Mustermann'),
                                            subtitle: Text('Beispieltext um zu zeigen, wie weit es...')
                                        )
                                    ]
                                ),
                            ),
                        ]
                    )
                )
            )
        );
    }
}
