import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:my_first_app/model/world_states_model.dart';
import 'package:my_first_app/services/sates_services.dart';
import 'package:my_first_app/view/countries_list.dart';
import 'package:pie_chart/pie_chart.dart';

class WorldStatesScreen extends StatefulWidget {
  const WorldStatesScreen({super.key});

  @override
  State<WorldStatesScreen> createState() => _WorldStatesScreenState();
}

class _WorldStatesScreenState extends State<WorldStatesScreen> with TickerProviderStateMixin{
  
late final AnimationController _controller = AnimationController(
    duration: const Duration(seconds: 3),
    vsync: this)..repeat();


  @override

  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _controller.dispose();
  }

  final colorList = <Color>[

   const Color(0xff4285F4),
   const Color(0xff1aa260),
   const Color(0xffde5246)

  ];
  
  @override
  Widget build(BuildContext context) {
    SatesServices satesServices = SatesServices();
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              SizedBox(height: MediaQuery.of(context).size.height * .01,),

              FutureBuilder(
                future: satesServices.fecthWorldSatesRecods(),
                builder: (context , AsyncSnapshot<WorldStatesModel> snapshot){

                if(!snapshot.hasData){

                    return Expanded(
                      flex: 1,
                      child: SpinKitFadingCircle(

                        color: Colors.white,
                        size: 50.0,
                        controller: _controller,

                      )
                      );

                }else{

                  return Column(
                    children: [
                      
                      PieChart(
                         dataMap: {
                              "Total":double.parse(snapshot.data!.cases!.toString()),
                              "Recoverd":double.parse(snapshot.data!.cases!.toString()),
                              "Deaths": double.parse(snapshot.data!.cases!.toString()),
                },
                chartValuesOptions: const ChartValuesOptions(
                  showChartValuesInPercentage: true,
                ),
                chartRadius: MediaQuery.of(context).size.width/ 3.2,
                legendOptions: const LegendOptions(
                  legendPosition: LegendPosition.left
                ),  
                animationDuration: const Duration(milliseconds: 1200),
                chartType: ChartType.ring,
                colorList: colorList,
                ),

                Padding(
                  padding:  EdgeInsets.symmetric(vertical : MediaQuery.of(context).size.height * .06),
                  child: Card(
                    child: Column(
                      children: [
                        ReusableRow(title: 'Total', value: snapshot.data!.cases.toString()),
                        ReusableRow(title: 'Deaths', value: snapshot.data!.deaths.toString()),
                        ReusableRow(title: 'Recovered', value: snapshot.data!.recovered.toString()),
                        ReusableRow(title: 'Active', value: snapshot.data!.active.toString()),
                        ReusableRow(title: 'Critical', value: snapshot.data!.critical.toString()),
                        ReusableRow(title: 'Todays Deaths', value: snapshot.data!.todayDeaths.toString()),
                        ReusableRow(title: 'Todays Recoveed', value: snapshot.data!.todayRecovered.toString()),

                        
                      ],
                    ),
                  ),
                ),

                GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => CountriesListScreen()));
                  },
                  child: Container(
                    height: 50,
                    decoration: BoxDecoration(
                      color: Color(0xff1aa260),
                      borderRadius: BorderRadius.circular(10)
                    ),
                    child: const Center(
                      child: Text('Track Countries'),
                    ),
                  ),
                )
              
                    ],
                  );

                }

              }),
            
                 
              
            ],
          ),
        )),
    );
  }
}


class ReusableRow extends StatelessWidget {
  String title ,value ;
   ReusableRow({Key? key , required this.title,required this.value}):super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10,right: 10,top: 10,bottom: 5),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(title),
              Text(value),
            ],
          ),

          SizedBox(height: 5,)
          
        ],
      ),
    );
  }
}