import 'package:cryptogram/views/index.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

enum MiscAction {
  switch_account,
}

class ChatView extends StatelessWidget {
  static const route = '/chat';

  void onMiscAction(BuildContext context, MiscAction action) {
    if (action == MiscAction.switch_account) {
      Navigator.pushReplacementNamed(context, IndexView.route);
    }
  }

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context).settings;
    return Scaffold(
      body: RefreshIndicator(
        onRefresh: () async {
          await Future.delayed(Duration(milliseconds: 500));
        },
        child: CustomScrollView(
          slivers: [
            SliverSafeArea(
                minimum: EdgeInsets.symmetric(vertical: 30),
                sliver: SliverAppBar(
                  flexibleSpace: Container(
                    margin: EdgeInsets.symmetric(horizontal: 10),
                    child: Ink(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Color(0xFF313131)),
                      child: ListTile(
                        onTap: () {},
                        trailing: PopupMenuButton<MiscAction>(
                          padding: EdgeInsets.zero,
                          icon: Icon(Icons.more_vert),
                          onSelected: (action) => onMiscAction(context, action),
                          itemBuilder: (context) => [
                            PopupMenuItem(
                                value: MiscAction.switch_account,
                                child: ListTile(
                                  visualDensity: VisualDensity.compact,
                                  contentPadding: EdgeInsets.zero,
                                  leading: Icon(MdiIcons.accountSwitch),
                                  title: Text("Switch account"),
                                )),
                          ],
                        ),
                      ),
                    ),
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
