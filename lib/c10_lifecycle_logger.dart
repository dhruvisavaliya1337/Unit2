import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: LifecycleLoggerDemo(),
  ));
}

class LifecycleLogger extends StatefulWidget {
  final Widget child;
  const LifecycleLogger({super.key, required this.child});

  @override
  State<LifecycleLogger> createState() => _LifecycleLoggerState();
}

class _LifecycleLoggerState extends State<LifecycleLogger> {
  void _log(String method) {
    print('[${DateTime.now().toIso8601String()}] Lifecycle: $method');
  }

  @override
  void initState() {
    super.initState();
    _log('initState');
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _log('didChangeDependencies');
  }

  @override
  void didUpdateWidget(covariant LifecycleLogger oldWidget) {
    super.didUpdateWidget(oldWidget);
    _log('didUpdateWidget');
  }

  @override
  void deactivate() {
    _log('deactivate');
    super.deactivate();
  }

  @override
  void dispose() {
    _log('dispose');
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    _log('build');
    return widget.child;
  }
}

class CounterWidget extends StatefulWidget {
  const CounterWidget({super.key});

  @override
  State<CounterWidget> createState() => _CounterWidgetState();
}

class _CounterWidgetState extends State<CounterWidget> {
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('Counter: $_counter', style: const TextStyle(fontSize: 24)),
        ElevatedButton(
          onPressed: () => setState(() => _counter++),
          child: const Text('Increment Counter'),
        ),
      ],
    );
  }
}

class LifecycleLoggerDemo extends StatelessWidget {
  const LifecycleLoggerDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Lifecycle Logger Utility')),
      body: const Center(
        child: LifecycleLogger(
          child: CounterWidget(),
        ),
      ),
    );
  }
}
