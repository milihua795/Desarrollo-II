import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Column(
        children: <Widget>[
          _PlantsCard(context),
          _PlantsCard(context),
          _PlantsCard(context),

        ],
      ));
  }

  Widget _PlantsCard(BuildContext context){
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: 125,
        child: Card(
          child: Row(
            children: <Widget>[
              Container(
                height: 125,
                width: 100,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.network(
                    'https://metroio.vtexassets.com/arquivos/ids/240150/frontal-3106.jpg?v=638173826670800000',
                    fit: BoxFit.cover,
                  ),
                )),
              SizedBox(
                width: 26,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text('Planta',
                    style: TextStyle(
                      fontSize: 16,
                      fontFamily: 'Quicksand',
                      color: Colors.brown,
                      fontWeight: FontWeight.w500)),
                  SizedBox(
                    height: 4,
                  ),
                  Container(
                    height: 1,
                    width: 95,
                    color: Colors.orange,
                  ),
                  Text('Gabriela Zuniga',
                    style: TextStyle(fontSize: 16,fontFamily: 'Quicksand')),
                  SizedBox(
                    height: 4,
                  ), 
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
