import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool selectedSwitch=false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1f2933),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
           setAppbar(),
            SizedBox(height:30),
           setCard(),
            SizedBox(height:25),
            Container(
              height: 50,
              width: double.infinity,
              decoration:BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                color: Color(0xff323f4b),
              ),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset("assets/images/icons/creditcard.png",
                    height: 25,
                    width: 25,
                    fit: BoxFit.cover,),
                    const SizedBox(width: 12),
                    const Text("Add a new card",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18
                    ),)
                  ],
                )
              ),
            ),
            SizedBox(height:25),
          setinOut(),
            SizedBox(height:25),
           setAction(),
            SizedBox(height:30),
            const Text("Fast Send Money",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 17
              ),),
            SizedBox(height:25),
           setUsers()

          ],
        ),
      ),
    );
  }

  setAppbar() {
    return  Padding(
      padding: const EdgeInsets.only(top:35.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset("assets/images/icons/hamburger.png",height: 30,
            width: 30,
            fit: BoxFit.cover,),
          const Text("Wallet",
            style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w500,
                color: Colors.white
            ),),
          ClipRRect(
            borderRadius: BorderRadius.circular(40),
            child: Image.asset("assets/images/people/edem-tudzi-1Mkn4O0zOHs-unsplash.jpg",
              height: 50,
              width: 50,
              fit: BoxFit.cover,),
          )
        ],
      ),
    );
  }

  setCard() {
    return  Container(
      height: 230,
      width: double.infinity,
      decoration:BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: const DecorationImage(
              image:AssetImage("assets/images/background/gradient.jpg"),
              fit: BoxFit.cover
          )

      ),

      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 30),
            const Text("Total Balance",
              style: TextStyle(
                  fontSize: 16,
                  color: Colors.white
              ),),
            SizedBox(height: 5),
            const Text("\$ 892.203.000",
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w500,
                  color: Colors.white
              ),),
            SizedBox(height:70),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text("****   ****   2563",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: Colors.white
                  ),),
                CupertinoSwitch(value: selectedSwitch, onChanged: (value) {
                  setState(() {
                    selectedSwitch = value;
                    print(selectedSwitch);
                  });
                },)
              ],
            )

          ],
        ),
      ),
    );
  }

  setinOut() {
    return   Row(
      children: [
        Expanded(
          flex: 1,
          child: Container(
            height: 85,
            width: double.infinity,
            decoration:BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Color(0xff323f4b),
            ),
            child: Padding(
                padding: const EdgeInsets.only(left:20.0,right: 13),
                child: Row(

                  children: [
                    Expanded(
                      flex: 2,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text("IN COME",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 14
                            ),),
                          SizedBox(height: 5),
                          Text("12.859.000",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 16
                            ),)
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Center(
                        child: Image.asset("assets/images/icons/chart-up.png",
                          height: 45,
                          width: 45,
                          fit: BoxFit.cover,),
                      ),
                    ),


                  ],
                )
            ),
          ),
        ),
        SizedBox(width:15),
        Expanded(
          flex: 1,
          child: Container(
            height: 85,
            width: double.infinity,
            decoration:BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Color(0xff323f4b),
            ),
            child: Padding(
                padding: const EdgeInsets.only(left:20.0,right: 13),
                child: Row(

                  children: [
                    Expanded(
                      flex: 2,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text("OUT COME",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 14
                            ),),
                         SizedBox(height: 5),
                          Text("9.300.000",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 16
                            ),)
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Center(
                        child: Image.asset("assets/images/icons/chart-down.png",
                          height: 45,
                          width: 45,
                          fit: BoxFit.cover,),
                      ),
                    ),


                  ],
                )
            ),
          ),
        ),
      ],
    );
  }

  setAction() {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          children: [
            Container(
              height: 85,
              width: 85,
              decoration:BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: const Color(0xff323f4b),
              ),
              child: Padding(
                padding: const EdgeInsets.all(22.0),
                child: Image.asset("assets/images/icons/exchange.png"),
              ),
            ),
            const SizedBox(height:10),
            const Text("Transfer",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 16
              ),)
          ],
        ),
        Column(
          children: [
            Container(
              height: 85,
              width: 85,
              decoration:BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: const Color(0xff323f4b),
              ),
              child: Padding(
                padding: const EdgeInsets.all(22.0),
                child: Image.asset("assets/images/icons/bill.png"),
              ),
            ),
            const SizedBox(height:10),
            const Text("Bills",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 16
              ),)
          ],
        ),
        Column(
          children: [
            Container(
              height: 85,
              width: 85,
              decoration:BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: const Color(0xff323f4b),
              ),
              child: Padding(
                padding: const EdgeInsets.all(22.0),
                child: Image.asset("assets/images/icons/barcode-scanner.png"),
              ),
            ),
            const SizedBox(height:10),
            const Text("Scan",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 16
              ),)
          ],
        ),
        Column(
          children: [
            Container(
              height: 85,
              width: 85,
              decoration:BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: const Color(0xff323f4b),
              ),
              child: Padding(
                padding: const EdgeInsets.all(22.0),
                child: Image.asset("assets/images/icons/discover.png"),
              ),
            ),
            const SizedBox(height:10),
            const Text("More",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 16
              ),)
          ],
        ),



      ],
    );
  }

  setUsers() {
    return Row(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(40),
          child: Image.asset("assets/images/people/art-hauntington-jzY0KRJopEI-unsplash.jpg",
            height: 65,
            width: 65,
          ),
        ),
        SizedBox(width:12),
        ClipRRect(
          borderRadius: BorderRadius.circular(40),
          child: Image.asset("assets/images/people/anastasia-vityukova-rpF3p_RrE9g-unsplash.jpg",
            height: 65,
            width: 65,
            fit: BoxFit.cover,),
        ),
        SizedBox(width:12),
        ClipRRect(
          borderRadius: BorderRadius.circular(40),
          child: Image.asset("assets/images/people/christopher-campbell-rDEOVtE7vOs-unsplash.jpg",
            height: 65,
            width: 65,
            fit: BoxFit.cover,),
        ),
        SizedBox(width:12),
        ClipRRect(
          borderRadius: BorderRadius.circular(40),
          child: Image.asset("assets/images/people/imansyah-muhamad-putera-n4KewLKFOZw-unsplash.jpg",
            height: 65,
            width: 65,),
        ),
        SizedBox(width:12),
        Stack(
          children: [
            Positioned(
                left: 15,
                top: 15,
                child: Icon(Icons.add,color: Colors.white,size: 35,)),
            Image.asset("assets/images/icons/dashed-circle.png",height: 65,
              width: 65,),
          ],
        )

      ],
    );
  }
}
