import '../../../../../exports.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          "Development jarayonida",
          style: context.textStyle.size18Regular,
        ),
      ),
    );
  }
}
