import 'package:flutter/material.dart';
import 'package:medkit/home/current_medications_bloc/current_bloc_list.dart';
import 'package:medkit/home/home_constructor_bloc/upcoming_bloc_title.dart';
import 'package:medkit/resources/resources.dart';

class Currentbloc extends StatefulWidget {
  const Currentbloc({super.key});

  @override
  State<Currentbloc> createState() => _CurrentblocState();
}

class _CurrentblocState extends State<Currentbloc> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: const Column(
        children: [
          Column(
            children: [
              UpcomingBlocTitle(
                upcomingTitleName: 'Current medications',
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CurrentBlocList(image: AppImages.tabs, name: 'Paracethamol'),
                  CurrentBlocList(image: AppImages.tabsbl, name: 'Vitamin C'),
                  CurrentBlocList(image: AppImages.tabs, name: 'Vitamin B'),
                ],
              )
            ],
          ),
          Column(
            children: [
              UpcomingBlocTitle(
                upcomingTitleName: 'Find your doctor',
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CurrentBlocList(
                      image: AppImages.cardiolog, name: 'Cardiologist'),
                  CurrentBlocList(image: AppImages.dentist, name: 'Dentist'),
                  CurrentBlocList(image: AppImages.dna, name: 'Geneticist'),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CurrentBlocList(image: AppImages.nurse, name: 'Nurse'),
                  CurrentBlocList(image: AppImages.virus, name: 'Virologist'),
                  CurrentBlocList(image: AppImages.tabs, name: 'General'),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}



// children: [
//         UpcomingBlocTitle(
//           upcomingTitleName: 'Current medications',
//         ),
//         SizedBox(
//           height: 10,
//         ),
//         Row(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: [
//             CurrentBlocList(image: AppImages.tabs, name: 'Paracethamol'),
//             CurrentBlocList(image: AppImages.tabsbl, name: 'Vitamin C'),
//             CurrentBlocList(image: AppImages.tabs, name: 'Vitamin B'),
//           ],
//         )
//       ],