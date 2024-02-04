part of 'splash_imports.dart';

@RoutePage()
class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    miveToOnBoard();
    super.initState();
  }

  miveToOnBoard() async {
    await Future.delayed(const Duration(seconds: 3), () {
      AutoRouter.of(context).push(const OnbardRoute());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.primaryColor,
      body: Center(
          child: FadedScaleAnimation(
        child: const Text(
          "PocketPress",
          style: TextStyle(),
        ),
      )),
    );
  }
}
