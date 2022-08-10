import 'package:flutter/material.dart';

class BMIScreen extends StatefulWidget {
  const BMIScreen({Key? key}) : super(key: key);

  @override
  State<BMIScreen> createState() => _BMIScreenState();
}

class _BMIScreenState extends State<BMIScreen> {
  bool isMale = true;
  double height = 180;
  int weight = 70;
  int age = 25;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI Calculator'),
      ),
      body: Column(
        children: [
          Expanded(
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: GestureDetector(
                        onTap: (){
                          setState(() {
                            isMale=true;
                          });
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            color: isMale?Colors.blue:Colors.grey,
                            borderRadius: BorderRadius.circular(15)
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                  'assets/images/male.png',
                                width: 70,
                                height: 70,
                              ),
                              const Text(
                                'Male',
                                style: TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                ),
                              )

                            ],
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      child: GestureDetector(
                        onTap: (){
                          setState(() {
                            isMale=false;
                          });
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              color: isMale?Colors.grey:Colors.blue,
                              borderRadius: BorderRadius.circular(15)
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                'assets/images/female.png',
                                width: 70,
                                height: 70,
                              ),
                              const Text(
                                'Female',
                                style: TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                ),
                              )

                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              )
          ),
          Expanded(
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 15),
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(15)
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Height',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 40
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(
                        '${height.round()}',
                        style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 40
                        ),
                      ),
                      const Text(
                        'cm',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20
                        ),
                      ),
                    ],
                  ),
                  Slider(
                      value: height,
                      min: 100,
                      max: 220,

                      onChanged: (v){
                        setState(() {
                          height = v;
                        });
                      },
                  )
                ],
              ),
            ),
          ),
          Expanded(
              child: Container(
                margin: const EdgeInsets.all(15),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                      decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(15),
                      ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              'Weight',
                              style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              '$weight',
                              style: const TextStyle(
                                fontSize: 40,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                FloatingActionButton(
                                    onPressed: (){
                                      setState(() {
                                        weight++;
                                      });
                                    },
                                  mini: true,
                                  heroTag: 'weight+',
                                  child: const Icon(Icons.add),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                FloatingActionButton(
                                  onPressed: (){
                                    setState(() {
                                      weight--;
                                    });
                                  },
                                  mini: true,
                                  heroTag: 'weight-',
                                  child: const Icon(Icons.remove),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      child: Container(
                      decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(15),
                      ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              'Age',
                              style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              '$age',
                              style: const TextStyle(
                                fontSize: 40,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                FloatingActionButton(
                                    onPressed: (){
                                      setState(() {
                                        age++;
                                      });
                                    },
                                  mini: true,
                                  heroTag: 'age+',
                                  child: const Icon(Icons.add),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                FloatingActionButton(
                                  onPressed: (){
                                    setState(() {
                                      age--;
                                    });
                                  },
                                  mini: true,
                                  heroTag: 'age-',
                                  child: const Icon(Icons.remove),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
          ),

          Container(
            width: double.infinity,
            decoration: const BoxDecoration(
              color: Colors.blue,

            ),
            child: MaterialButton(
                onPressed: (){},
              child: const Text(
                'Calculate',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
