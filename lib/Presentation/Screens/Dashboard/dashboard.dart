import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_project/Presentation/Screens/NavBarPage/Ui/Nav_Bar.dart';

import '../../../buisness_logic/Dashboard/dashboard_bloc.dart';
import '../../Components/loader.dart';
import '../../Components/spacers.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({Key? key, required this.title, required this.username})
      : super(key: key);

  final String title;
  final String username;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // ignore: prefer_const_constructors
        title: Text('Welcome to UIB'),
        // ignore: prefer_const_constructors
        backgroundColor: Color(0xff036B56),
      ),
      body: BlocConsumer<DashboardBloc, DashboardState>(
        listener: (context, state) {
          if (state is DashboardNav) {
            Navigator.pop(context);
          }
        },
        builder: (context, state) {
          if (state is DashboardLoading) {
            return LoadingWidget(
              child: initialLayout(context),
            );
          } else {
            return initialLayout(context);
          }
        },
      ),
    );
  }

  Widget initialLayout(BuildContext context) => Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Welcome student $username!",
              style: const TextStyle(fontSize: 30.00),
            ),
            const HeightSpacer(myHeight: 50.00),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const NavBar_Screen(),
                      ));
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xff036B56),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
                ),
                child: const Text(
                  "continue",
                  style: TextStyle(fontSize: 18),
                ))
          ],
        ),
      );
}
