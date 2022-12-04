import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localization.dart';

import 'cubit/locale_cubit.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LocaleCubit, LocaleState>(
      listener: (context, state) {},
      builder: (context, state) {
        return Scaffold(
          extendBodyBehindAppBar: true,
          appBar: AppBar(
            backgroundColor: Colors.black38,
            title: Text('${AppLocalizations.of(context)?.login}'),
            actions: [
              PopupMenuButton(
                  onSelected: (value) {
                    LocaleCubit().get(context).changeLang(value);
                  },
                  itemBuilder: (context) => AppLocalizations.supportedLocales
                      .map((e) => PopupMenuItem(
                            child: Text('${e}'),
                            value: e,
                          ))
                      .toList())
            ],
          ),
          body: Container(
            color: Colors.red,
            width: 200,
            height: 200,
          ),
        );
      },
    );
  }
}
