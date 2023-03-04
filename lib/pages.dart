import 'package:bottom_navigator_poc/bindings.dart';
import 'package:bottom_navigator_poc/custom_bottom_navigator_.dart';
import 'package:flutter/material.dart';

class FirstPage extends StatelessWidget {
  final FirstController controller;
  const FirstPage({
    super.key,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('First Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text('Fourth Page'),
            Text('Current Route: ${ModalRoute.of(context)?.settings.name}'),
            Text('Controller name is: ${controller.name}'),
            Text('Next route is: ${controller.nextRoute}'),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // navigator without bottom navigator
          Navigator.pushNamed(
            context,
            '/second',
          );
        },
        child: const Icon(Icons.arrow_forward),
      ),
      // Add this when you want to navigator by other methods in the page
      bottomNavigationBar: CustomBottomNavigator(page: this),
    );
  }
}

class SecondPage extends StatelessWidget {
  final SecondController controller;
  const SecondPage({
    super.key,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text('Fourth Page'),
            Text('Current Route: ${ModalRoute.of(context)?.settings.name}'),
            Text('Controller name is: ${controller.name}'),
            Text('Next route is: ${controller.nextRoute}'),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(
            context,
            '/third',
          );
        },
        child: const Icon(Icons.arrow_forward),
      ),
      bottomNavigationBar: CustomBottomNavigator(page: this),
    );
  }
}

class ThirdPage extends StatelessWidget {
  final ThirdController controller;
  const ThirdPage({
    super.key,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Third Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text('Fourth Page'),
            Text('Current Route: ${ModalRoute.of(context)?.settings.name}'),
            Text('Controller name is: ${controller.name}'),
            Text('Next route is: ${controller.nextRoute}'),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, '/fourth');
        },
        child: const Icon(Icons.arrow_forward),
      ),
      bottomNavigationBar: CustomBottomNavigator(page: this),
    );
  }
}

class FourthPage extends StatelessWidget {
  final FourthController controller;
  const FourthPage({
    super.key,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Fourth Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text('Fourth Page'),
            Text('Current Route: ${ModalRoute.of(context)?.settings.name}'),
            Text('Controller name is: ${controller.name}'),
          ],
        ),
      ),
      bottomNavigationBar: CustomBottomNavigator(page: this),
    );
  }
}
