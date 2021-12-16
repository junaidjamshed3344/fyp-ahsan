import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:sohaib_task/utils/best_seller_container.dart';
import 'package:sohaib_task/utils/category_container.dart';
import 'package:sohaib_task/utils/image_container.dart';
import 'package:sohaib_task/view/setting.dart';
class HomePage extends StatefulWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
     Size size = MediaQuery.of(context).size;
    return  SafeArea(
      child:  Scaffold(
        backgroundColor: const Color(0xFFD3D7DA),
        body: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children:  [
                    Container(
                      width: size.width*1,
                      height: size.height*0.05,
                      child: Padding(
                        padding:  EdgeInsets.only(left: size.width*0.25),
                        child: Row(
                          children: [
                            const Icon(Icons.location_on_outlined,
                            color: Colors.red,),
                            const Text('Islamabad, Pakistan',
                            style: TextStyle(
                              fontWeight: FontWeight.bold
                            ),
                            ),
                            const Icon(Icons.arrow_drop_down),
                            SizedBox(
                              width: size.width*0.1,
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: size.height*0.02,
                    ),
                    Container(
                      height: size.height*0.32,
                      //color: Colors.red,
                      child: Padding(
                        padding: EdgeInsets.only(left: size.width*0.05),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                const Text('Select Category',
                                style: TextStyle(
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.bold
                                ),
                                ),
                            SizedBox(
                              width: size.width*0.35,
                            ),
                            const Text('view all',
                            style: TextStyle(
                              color: Colors.orange,
                            ),
                            ),
                              ],
                            ),
                            SizedBox(
                              height: size.height*0.03,
                            ),
                            Row(
                              children: [
                                CategoryContainer(icon: Icons.mobile_friendly,title: 'Phones',),
                                SizedBox(
                                  width: size.width*0.05,
                                ),
                                CategoryContainer(icon: Icons.computer,title: 'Computer',),
                                SizedBox(
                                  width: size.width*0.05,
                                ),
                                CategoryContainer(icon: Icons.health_and_safety_rounded,title: 'Health',),
                                SizedBox(
                                  width: size.width*0.05,
                                ),
                                CategoryContainer(icon: Icons.book,title: 'Books',),
                              ],
                            ),
                            SizedBox(
                              height: size.height*0.04,
                            ),
                            Container(
                              width: size.width*0.8,
                              height: size.height*0.05,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(16.0),
                                color: Colors.white,
                              ),
                              child: Padding(
                                padding: EdgeInsets.only(left: size.width*0.05),
                                child: Row(
                                  
                                  children: [
                                    const Icon(Icons.search,color: Colors.orange,),
                                    SizedBox(width: size.width*0.07,),
                                    const Text('Search'),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                      Padding(
                        padding: EdgeInsets.only(left: size.width*0.07),
                        child: Row(
                        //  mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text('Hot Sales',style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold
                        ),
                        ),
                        SizedBox(width: size.width*0.45,),
                        const Text('see more',style: TextStyle(
                          color: Colors.orange,
                        ),
                        ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: size.height*0.03,
                      ),
                      const ImageContainer(),
                      SizedBox(
                        height: size.height*0.02,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: size.width*0.07),
                        child: Row(
                        //  mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text('Best Seller',style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold
                        ),
                        ),
                        SizedBox(width: size.width*0.45,),
                        const Text('see more',style: TextStyle(
                          color: Colors.orange,
                        ),
                        ),
                          ],
                        ),
                      ),
                      Row(
                        children: [
                          BestSellerContainer(name: 'images/s9.jpg',price: '30,500',),
                          BestSellerContainer(name: 'images/A7.jpg',price: '50,000',)
                        ],
                      )
                  ],
                ),
              ),
            ),
            Container(
              height: size.height*0.1,
              decoration: const BoxDecoration(
                color: Colors.black,
                borderRadius:  BorderRadius.only(
                        topLeft:  Radius.circular(40.0),
                         topRight:  Radius.circular(40.0),
                      )
                
                 ),
                 child: Padding(
                   padding:  EdgeInsets.only(left: size.width*0.15,top: size.height*0.03),
                   child: Row(
                     crossAxisAlignment: CrossAxisAlignment.center,
                     children:  [
                       Container(
                         width: size.width*0.03,
                         height: size.height*0.03,
                         decoration: const BoxDecoration(
                           shape: BoxShape.circle,
                           color: Colors.white
                         ),
                       ),
                       SizedBox(
                         width: size.width*0.03,
                       ),
                       const Text('Explorer',
                       style: TextStyle(
                         color: Colors.white,
                         fontWeight: FontWeight.bold
                       ),
                       ),
                       SizedBox(
                         width: size.width*0.1,
                       ),
                       SvgPicture.asset("images/1.svg",color: Colors.white,),
                       SizedBox(
                         width: size.width*0.1,
                       ),
                       SvgPicture.asset("images/20951337511543238895.svg",color: Colors.white,),
                        SizedBox(
                         width: size.width*0.1,
                       ),
                       GestureDetector(
                         onTap: (){
                           Get.to(
                             Setting()
                           );
                         },
                         child: const Icon(Icons.person_outlined,color: Colors.white,))
                      // const Icon(Icons)
                     ],
                   ),
                 ),
            ),

          ],
        ),
    ),
    );
  }
}