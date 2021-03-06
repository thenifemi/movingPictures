import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../application/people/people_bloc.dart';
import '../../injection.dart';
import '../core/app_colors.dart';
import '../core/app_localizations.dart';
import '../core/component_widgets/cancel_button_widget.dart';
import '../core/constants/language_constants.dart';
import 'widgets/people_search_bar.dart';

class PeopleScreen extends StatelessWidget {
  final bool automaticallyImplyLeading;

  const PeopleScreen({
    Key key,
    @required this.automaticallyImplyLeading,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final lang = AppLocalizations.of(context);
    final appTextTheme = Theme.of(context).textTheme;

    return BlocProvider(
      create: (context) =>
          getIt<PeopleBloc>()..add(const PeopleEvent.watchPeople()),
      child: BlocBuilder<PeopleBloc, PeopleState>(
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(
              automaticallyImplyLeading: automaticallyImplyLeading,
              leading: automaticallyImplyLeading ? const CancelButton() : null,
              title:
                  Text(lang.translate(people), style: appTextTheme.headline5),
              bottom: const PeopleSearchBar(),
            ),
            body: PeopleYouFollowOrSearchResults(),
          );
        },
      ),
    );
  }
}

class PeopleYouFollowOrSearchResults extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final appTextTheme = Theme.of(context).textTheme;

    return Container(
      color: AppColors.gray,
      height: 100.0,
      width: double.infinity,
      child: Center(
        child: Text(
          "Coming soon!",
          style: appTextTheme.headline5,
        ),
      ),
    );

    //   return BlocBuilder<PeopleBloc, PeopleState>(
    //     builder: (context, state) {
    //       final appTextTheme = Theme.of(context).textTheme;

    //       return state.maybeMap(
    //         initial: (_) => const MovieLoadingWidget(),
    //         loading: (_) => const MovieLoadingWidget(),
    //         failure: (_) => const MovieErrorWidget(),
    //         watchPeopleSuccess: (state) {
    //           if (state.people.isEmpty) {
    //             return Container(
    //               color: AppColors.gray,
    //               height: 100.0,
    //               width: double.infinity,
    //               child: Center(
    //                 child: Text(
    //                   "Aw! You are not following anybody.",
    //                   style: appTextTheme.headline5,
    //                 ),
    //               ),
    //             );
    //           }

    //           return PeopleYouFollowWidget(state: state);
    //         },
    //         loadSuccessforSearchQuery: (state) {
    //           return Column(
    //             crossAxisAlignment: CrossAxisAlignment.start,
    //             children: [
    //               Padding(
    //                 padding: const EdgeInsets.symmetric(horizontal: 10.0),
    //                 child: Text("Results", style: appTextTheme.headline5),
    //               ),
    //               Container(
    //                 padding: const EdgeInsets.all(10.0),
    //                 margin: const EdgeInsets.symmetric(
    //                     vertical: 5.0, horizontal: 10.0),
    //                 decoration: BoxDecoration(
    //                   borderRadius: BorderRadius.circular(10.0),
    //                   color: AppColors.gray,
    //                 ),
    //                 width: double.infinity,
    //                 child: Center(
    //                   child: Row(
    //                     crossAxisAlignment: CrossAxisAlignment.start,
    //                     children: [
    //                       SizedBox(
    //                         height: 60.0,
    //                         child: ClipRRect(
    //                           borderRadius: BorderRadius.circular(100.0),
    //                           child: Image.network(
    //                             state.person.photoURL,
    //                             fit: BoxFit.fill,
    //                           ),
    //                         ),
    //                       ),
    //                       const SizedBox(width: 20.0),
    //                       Column(
    //                         crossAxisAlignment: CrossAxisAlignment.start,
    //                         children: [
    //                           Text(
    //                             state.person.name,
    //                             style: appTextTheme.headline6,
    //                           ),
    //                           PrimaryButton(
    //                             appTextTheme: appTextTheme,
    //                             name: "Follow",
    //                             color: AppColors.red,
    //                             onpressed: () async => context
    //                                 .read<PeopleBloc>()
    //                                 .add(
    //                                     PeopleEvent.followed(state.person.email)),
    //                             isFullButton: false,
    //                           ),
    //                         ],
    //                       ),
    //                     ],
    //                   ),
    //                 ),
    //               ),
    //             ],
    //           );
    //         },
    //         orElse: () => null,
    //       );
    //     },
    //   );
  }
}
