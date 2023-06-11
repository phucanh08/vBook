import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:resources/resources.dart';

import '../bloc/extension_bloc.dart';
import '../widgets/book_item.dart';

@RoutePage(name: 'UpdateTabRouter')
class UpdateTab extends StatelessWidget {
  const UpdateTab({required this.bloc, super.key});

  final ExtensionBloc bloc;

  @override
  Widget build(BuildContext context) {

    return BlocBuilder<ExtensionBloc, ExtensionState>(
      buildWhen: (prev, cur) => prev.localPlugins != cur.localPlugins,
      builder: (context, state) {
        final listPlugins = state.localPlugins;

        return ListView.separated(
          padding: const EdgeInsets.all(10),
          itemBuilder: (context, index) {
            final item = listPlugins[index];

            return BookItem(
              iconUrl: item.icon,
              trailing: IconButton(
                onPressed: () => bloc.add(ExtensionEvent.removeButtonPressed(index)),
                icon: const FaIcon(
                  FaCodePoint.trash,
                  // size: 70,
                  type: IconType.thin,
                ),
              ),
              name: item.name,
              languageCode: item.languageCode,
              type: item.type,
              source: item.source,
              tag: item.tag,
            );
          },
          separatorBuilder: (BuildContext context, int index) =>
              const SizedBox(height: 10),
          itemCount: listPlugins.length,
        );
      },
    );
  }
}
