
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../bloc/user_bloc.dart';
import '../../bloc/user_event.dart';

class ActionButtons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final UserBloc userBloc = context.read<UserBloc>();
    // final UserCubit userCubit = context.read<UserCubit>();
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        ElevatedButton(
          child: const Text('Load'),
          onPressed: () {
            userBloc.add(UserLoadEvent());
            // userCubit.fetchUsers();
          },
          style: ElevatedButton.styleFrom(
            primary: Colors.green,
          ),
        ),
        const SizedBox(width: 8.0),
        ElevatedButton(
          onPressed: () {
            userBloc.add(UserClearEvent());
            // userCubit.clearUsers();
          },
          style: ElevatedButton.styleFrom(
            primary: Colors.red,
          ),
          child: const Text('Clear'),
        ),
      ],
    );
  }
}
