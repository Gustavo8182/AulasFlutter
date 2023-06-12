import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    /* MaterialApp( 
      title: "School",
      home: Scaffold(        
        body: Container(
          padding: const EdgeInsets.all(20),          
          child: Column( 
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children:[ 
            CircleAvatar(child: Text("R")),
            const Text("Texto 1"),
            const Text("Texto 2"),
            const Text("Texto 3"),
            const Divider() ,
            Row(
              children: [
                Icon(Icons.add, color: Colors.red,),
                Spacer(),
                Icon(Icons.access_alarm, color: Colors.red),
              ],
            ),
            Switch(value: true, onChanged:(value) => {}),
            const Card(
              child: Padding(
                padding: EdgeInsets.all(16),
                child: Text("Rafael")),
              
            ),
          ],
          ),
        ),
      ),
    );*/

   return MaterialApp(
      title: 'School',
      home: Scaffold(
        body: Container(
          //da um esparço nas margens do texto, levado o mesmo para dentro.
          padding: const EdgeInsets.all(20),
          child: Column(
            // define o alinhamento dos widgets no eixo principal do contêine 
              mainAxisAlignment: MainAxisAlignment.start,
            //define o alinhamento dos widgets no eixo cruzado do contêiner
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(children: const [
                  CircleAvatar(child: Text('G')),
                  // este sizebox esta criando um espaçamento entre meu nome e o circulo de avatar
                  SizedBox(width: 20),
                  Text('Gustavo Alves'),
                ]),
                //este comando cria uma linha melhor visão de divisão é como o Br de html
                const Divider(),
                Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('Minhas Estatísticas'),
                      const SizedBox(height: 16),
                      Row(
                        children: const [
                          Icon(Icons.list),
                          Text('Total de Notas: 0')
                        ],
                      ),
                      Row(
                        children: const [
                          Icon(Icons.done_all),
                          Text('Concluídas: 0')
                        ],
                      ),
                      const Divider(),
                      const SizedBox(height: 16),
                      const Text('Configurações'),
                      Row(
                        children: [
                          const Text('Tema Escuro'),
                          const Spacer(),
                          // não funciona se o const estiver no pai, neste caso o colum 
                          Switch(value: true, onChanged: (val) {}),
                        ],
                      )
                    ]),
              ]),
        ),
      ),      
  );
  }
}