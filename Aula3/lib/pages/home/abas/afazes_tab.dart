  import 'package:flutter/material.dart';
import 'package:school/components/spacer_component.dart';

class AfazeresTab extends StatefulWidget {
  final valorInicial;
  const AfazeresTab({super.key,required this.valorInicial});

  @override
  State createState() => _AfazeresTab();
}

class _AfazeresTab extends State<AfazeresTab> {
  late int acumulador;

  void somaMaisUm(){
    setState(() {
      acumulador++;
    });
  }
  
  @override
  void initState() {
    acumulador= widget.valorInicial;
    super.initState();
  }
  
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('$acumulador'),
        const SpaceComponent(),
        ElevatedButton(onPressed: somaMaisUm, child: const Text("+1")),],
      );
  }
}