import 'package:flutter/material.dart';
import 'package:school/components/spacer_component.dart';
import 'package:school/entities/afazer_entity.dart';

class AfazeresTab extends StatefulWidget {
  const AfazeresTab({
    super.key,
  });

  @override
  State createState() => _AfazeresTab();
}

class _AfazeresTab extends State<AfazeresTab> {
  late List<AfazerEntity> _listaAfazeres;

  void handleAdicionar() {
    final item = AfazerEntity(
      uuid: 'teste3',
      titulo: 'Teste 3',
      dataInicio: DateTime.now(),
      dataFim: DateTime.now(),
      isConcluido: false,
    );

    _listaAfazeres.add(item);

    setState(() {
      _listaAfazeres = _listaAfazeres;
    });
  }

  void handleExcluir(int index) {
    _listaAfazeres.removeAt(index);
    setState(() {
      _listaAfazeres = _listaAfazeres;
    });
  }

  @override
  void initState() {
    _listaAfazeres = [
      AfazerEntity(
        uuid: 'teste1',
        titulo: 'Teste 1',
        dataInicio: DateTime.now(),
        dataFim: DateTime.now(),
        isConcluido: true,
      ),
      AfazerEntity(
        uuid: 'teste2',
        titulo: 'Teste 2',
        dataInicio: DateTime.now(),
        dataFim: DateTime.now(),
        isConcluido: true,
      ),
    ];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ElevatedButton(
          onPressed: handleAdicionar,
          child: const Text('Adicionar'),
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width,
          height: 400,
          child: ListView.builder(
            itemCount: _listaAfazeres.length,
            itemBuilder: (context, index) {
              final item = _listaAfazeres.elementAt(index);
              return Dismissible(
                key: Key(item.uuid),
                onDismissed: (direction) {
                  if (direction == DismissDirection.startToEnd) {
                    handleExcluir(index);
                  }
                },
                 child: Padding(
                    padding: const EdgeInsets.only(bottom: 7),
                    child: Card(
                      child: ListTile(
                        leading: Icon(
                          item.isConcluido == true
                              ? Icons.done_all
                              : Icons.check_sharp,
                          color: item.isConcluido == true
                              ? Colors.green
                              : Colors.greenAccent,
                        ),
                        title: Text(item.titulo),
                        trailing: IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.keyboard_arrow_right_rounded,
                              size: 26,
                            )),
                      ),
                    ),
                  )); //Text(item.titulo));
            },
          ),
        ),
        const SpacerComponent(),
      ],
    );
  }
}