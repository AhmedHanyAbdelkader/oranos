import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:oranos/oranobot/data/models.dart';
import 'package:oranos/oranobot/presentation/resources/assets_manager.dart';
import 'package:oranos/oranobot/presentation/resources/color_manager.dart';
import 'package:oranos/oranobot/presentation/resources/strings_manager.dart';
import 'package:oranos/oranobot/presentation/resources/styles_manager.dart';
import 'package:oranos/oranobot/presentation/resources/values_manager.dart';
import 'package:oranos/test_bloc/test_bloc.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  List<Widget> experts = [
    RecommindationContainer(person: Person(
        name: "Kareem Adel",
        isLoved: false,
        rating: 5.0,
        description: 'Supply Chain',
        img: 'https://img.freepik.com/free-photo/young-man-sunglasses-with-smartphone-coffee-city_169016-21517.jpg?w=360&t=st=1666763378~exp=1666763978~hmac=9ef29de1bad4359ecaee9b4aefc8e988853e1e0d3ccabc00cf8e0ed8b51dbff0'
    ),),
    RecommindationContainer(person: Person(
        name: "Merna Adel",
        isLoved: false,
        rating: 4.9,
        description: 'Supply Chain',
        img: 'https://img.freepik.com/premium-photo/portrait-young-muslim-woman_600776-39007.jpg?w=900'
    ),),
  ];

  List<Track> myTracks = [
    Track(image: 'https://img.freepik.com/free-vector/logo-design-combination-letter-c-c-gradation_557339-408.jpg?w=740&t=st=1666765531~exp=1666766131~hmac=34d4ff180e127292866abf221a908e44da7f24df0f1149411a9bed03f17c1762', trackName: 'information technology', numOfExperts: '8 Experts'),
    Track(image: 'https://img.freepik.com/free-vector/logo-design-combination-letter-c-c-gradation_557339-408.jpg?w=740&t=st=1666765531~exp=1666766131~hmac=34d4ff180e127292866abf221a908e44da7f24df0f1149411a9bed03f17c1762', trackName: 'information technology', numOfExperts: '8 Experts'),
    Track(image: 'https://img.freepik.com/free-vector/logo-design-combination-letter-c-c-gradation_557339-408.jpg?w=740&t=st=1666765531~exp=1666766131~hmac=34d4ff180e127292866abf221a908e44da7f24df0f1149411a9bed03f17c1762', trackName: 'information technology', numOfExperts: '8 Experts'),
    Track(image: 'https://img.freepik.com/free-vector/logo-design-combination-letter-c-c-gradation_557339-408.jpg?w=740&t=st=1666765531~exp=1666766131~hmac=34d4ff180e127292866abf221a908e44da7f24df0f1149411a9bed03f17c1762', trackName: 'information technology', numOfExperts: '8 Experts'),
    Track(image: 'https://img.freepik.com/free-vector/logo-design-combination-letter-c-c-gradation_557339-408.jpg?w=740&t=st=1666765531~exp=1666766131~hmac=34d4ff180e127292866abf221a908e44da7f24df0f1149411a9bed03f17c1762', trackName: 'information technology', numOfExperts: '8 Experts'),
    Track(image: 'https://img.freepik.com/free-vector/logo-design-combination-letter-c-c-gradation_557339-408.jpg?w=740&t=st=1666765531~exp=1666766131~hmac=34d4ff180e127292866abf221a908e44da7f24df0f1149411a9bed03f17c1762', trackName: 'information technology', numOfExperts: '8 Experts'),
    Track(image: 'https://img.freepik.com/free-vector/logo-design-combination-letter-c-c-gradation_557339-408.jpg?w=740&t=st=1666765531~exp=1666766131~hmac=34d4ff180e127292866abf221a908e44da7f24df0f1149411a9bed03f17c1762', trackName: 'information technology', numOfExperts: '8 Experts'),
    Track(image: 'https://img.freepik.com/free-vector/logo-design-combination-letter-c-c-gradation_557339-408.jpg?w=740&t=st=1666765531~exp=1666766131~hmac=34d4ff180e127292866abf221a908e44da7f24df0f1149411a9bed03f17c1762', trackName: 'information technology', numOfExperts: '8 Experts'),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(

          body: Column(
            children: [
             const CustomAppBar(),
              const SizedBox(height: AppSize.s20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Recommended Experts',style: getMediumStyle(size: 14,color: ColorManager.pureBlackColor),),
                  IconButton(onPressed: (){}, icon: const Icon(Icons.linear_scale)),
                ],
              ),
              Container(
                height: 350,
                width: double.infinity,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: experts.length,
                    physics: BouncingScrollPhysics(),
                    shrinkWrap: false,
                    itemBuilder: (BuildContext context, index){
                    return experts[index];
                }),
              ),

              const SizedBox(height: AppSize.s20,),

              ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 10,
                  itemBuilder: (BuildContext context, index){
                return Column(
                  children: [
                    Stack(
                      alignment: Alignment.topRight,
                      children: [
                        CircleAvatar(
                          backgroundColor: ColorManager.gray,
                          radius: 50.0,
                        ),
                        CircleAvatar(
                          backgroundColor: ColorManager.primary,
                          radius: 5,
                        ),
                      ],
                    ),
                    const SizedBox(height: AppSize.s10,),
                    Text('Lance'),
                  ],
                );
              })





            ],
          ),

          bottomSheet: BottomSheet(
            enableDrag: true,
            builder: (BuildContext context) {
              return ListView.builder(
                  itemBuilder: (BuildContext context, index){
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Card(
                        elevation: AppSize.s6,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Row(
                          children: [
                            Image(image: NetworkImage(myTracks[index].image)),
                            const SizedBox(width: 15,),
                            Column(
                              children: [
                                Text(myTracks[index].trackName),
                                Text(myTracks[index].numOfExperts),
                              ],
                            )
                          ],
                        ),
                      ),
                    );
              });
            },
            onClosing: () {  },
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(topLeft: Radius.circular(15), topRight: Radius.circular(15),)
            ),
          ),
          
          bottomNavigationBar: BottomNavigationBar(
            items: const [
              BottomNavigationBarItem(icon: Icon(Icons.home_outlined)),
              BottomNavigationBarItem(icon: Icon(Icons.star_border)),
              BottomNavigationBarItem(icon: Icon(Icons.account_balance_wallet_outlined)),
              BottomNavigationBarItem(icon: Icon(Icons.person_outline)),
            ],
          ),
          
        ),
    );
  }
}

class RecommindationContainer extends StatelessWidget {
  RecommindationContainer({Key? key,required this.person}) : super(key: key);
  final Person person;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context)=>LovedPersonBloc(),
      child: Padding(
        padding: const EdgeInsets.all(AppSize.s10),
        child: Container(
          width: 200,
          height: 50,
          decoration: BoxDecoration(
            color: ColorManager.pureWhite,
            borderRadius: BorderRadius.circular(AppSize.s15),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image(image: NetworkImage(person.img),height: 150,width: 200,),
              Row(
                children: [
                  Icon(Icons.star,color: ColorManager.yellow,),
                  Text('(${person.rating})',style: getMediumStyle(size: AppSize.s6,color: ColorManager.gray),
                  ),
                  const Spacer(),
                  BlocBuilder<LovedPersonBloc,bool>(
                      builder: (BuildContext context, state) {
                        return IconButton(
                            onPressed: (){
                              LovedPersonBloc().toggleIcon(person.isLoved);
                            },
                            icon: Icon(Icons.add, color: state == true? ColorManager.red : ColorManager.gray),
                        );
                      },)
                ],
              ),
              Text(person.name,style: getMediumStyle(size: AppSize.s10,color: ColorManager.pureBlackColor),),
              Text(person.description,style: getMediumStyle(size: AppSize.s6,color: ColorManager.gray),),
            ],
          ),
        ),
      ),
    );
  }
}


class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: AppSize.s8),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(AppSize.s6),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CircleAvatar(
                    child: SvgPicture.asset(ImageAssets.leadingIcon),
                  ),
                  Image.asset(ImageAssets.logo,fit: BoxFit.fill,),
                  IconButton(
                      onPressed: (){},
                      icon: const Icon(Icons.search)
                  )
                ],
              ),
            ),
            SizedBox(width: double.infinity,height: AppSize.s1,child: Container(color: ColorManager.gray,),)
          ],
        ),
      ),
    );
  }
}
