import 'package:badges/badges.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:loading_animations/loading_animations.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

class EducationApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> with SingleTickerProviderStateMixin{
  TabController _tabController;
  int currentIndex = 0;
  bool dummyLoading = false;
  AnimationController _controller;
  Animation<Offset> _offsetAnimation;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(vsync: this, length: 5);

    _controller =
        AnimationController(vsync: this, duration: Duration(seconds: 1));

    _offsetAnimation = Tween<Offset>(begin: Offset.zero, end: Offset(0.0, 1.0))
        .animate(_controller);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SafeArea(
              top: true,
              left: true,
              right: true,
              child: Container(
                height: 80,
                padding: EdgeInsets.symmetric(horizontal: 24),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text("Home Page",style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold
                        ),),
                        SizedBox(height: 8,),
                        RichText(
                          text: TextSpan(
                              children: [
                                TextSpan(text:"Choose your language ", style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 12
                                )),
                                TextSpan(text: "right away", style: TextStyle(
                                  color: Colors.teal,
                                  fontSize: 12
                                )),
                            ]
                          ),
                        )
                      ],
                    ),
                    Spacer(),
                    Badge(
                      child: Icon(Icons.notifications, color: Colors.teal,),
                      showBadge: true,
                      badgeContent: Text(""),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(height: 24,),
            Container(height: 50,
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.only(left: 24,right: 24),
              padding: EdgeInsets.only(left: 16,right: 16),
              decoration: BoxDecoration(
                  color: Colors.blueGrey[50],
                  borderRadius: BorderRadius.circular(16)
              ),
              child: TextField(
                decoration: InputDecoration(
                  icon: Icon(Icons.search,size: 14,),
                  hintText: "Search for your grade, language...",
                  hintStyle: TextStyle(
                    fontSize: 12
                  ),
                  border: InputBorder.none
                ),
              ),
            ),
            SizedBox(
              height: 8,
            ),
            GridView.count(
                shrinkWrap: true,
                crossAxisCount: 3,
                children: <Widget>[
                  Container(
                    child: Column(
                      children: <Widget>[
                        Container(
                          height: 64,
                          width: 64,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  fit: BoxFit.cover,
                                image: AssetImage("assets/learning.jpg")
                              ),
                              shape: BoxShape.circle,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.1),
                                  blurRadius: 3,
                                  spreadRadius: 4
                                )
                              ]
                          ),
                        ),
                        SizedBox(height: 8,),
                        Text("Category"),
                      ],
                    ),
                  ),Container(
                    child: Column(
                      children: <Widget>[
                        Container(
                          height: 64,
                          width: 64,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                  image: AssetImage("assets/learnothers.jpg")
                              ),
                              shape: BoxShape.circle,
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.black.withOpacity(0.1),
                                    blurRadius: 3,
                                    spreadRadius: 4
                                )
                              ]
                          ),
                        ),
                        SizedBox(height: 8,),
                        Text("Learn form others"),
                      ],
                    ),
                  ),Container(
                    child: Column(
                      children: <Widget>[
                        Container(
                          height: 64,
                          width: 64,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage("assets/studing.png")
                              ),
                              shape: BoxShape.circle,
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.black.withOpacity(0.1),
                                    blurRadius: 3,
                                    spreadRadius: 4
                                )
                              ]
                          ),
                        ),
                        SizedBox(height: 8,),
                        Text("Free Tests"),
                      ],
                    ),
                  ),Container(
                    child: Column(
                      children: <Widget>[
                        Container(
                          height: 64,
                          width: 64,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage("assets/concept.jpg")
                              ),
                              shape: BoxShape.circle,
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.black.withOpacity(0.1),
                                    blurRadius: 3,
                                    spreadRadius: 4
                                )
                              ]
                          ),
                        ),
                        SizedBox(height: 8,),
                        Text("Hard Tests"),
                      ],
                    ),
                  ),Container(
                    child: Column(
                      children: <Widget>[
                        Container(
                          height: 64,
                          width: 64,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage("assets/dribblelearn.webp")
                              ),
                              shape: BoxShape.circle,
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.black.withOpacity(0.1),
                                    blurRadius: 3,
                                    spreadRadius: 4
                                )
                              ]
                          ),
                        ),
                        SizedBox(height: 8,),
                        Text("Words from Books"),
                      ],
                    ),
                  ),Container(
                    child: Column(
                      children: <Widget>[
                        Container(
                          height: 64,
                          width: 64,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage("assets/translate.jpg")
                              ),
                              shape: BoxShape.circle,
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.black.withOpacity(0.1),
                                    blurRadius: 3,
                                    spreadRadius: 4
                                )
                              ]
                          ),
                        ),
                        SizedBox(height: 8,),
                        Text("Translation"),
                      ],
                    ),
                  ),
                ]
              ),
            Container(
              height: 230,
              padding: EdgeInsets.only(left: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(right: 24),
                    child: Row(
                      children: <Widget>[
                        Text("Recommended Test",style: TextStyle(
                          fontSize: 18,
                          ),
                        ),
                        Spacer(),
                        Text("More",style: TextStyle(
                          fontSize: 12,
                          color: Colors.grey
                        ),)
                      ],
                    ),
                  ),
                  SizedBox(height: 4),
                  Text("You may also like",style: TextStyle(
                    fontSize: 12,
                    color: Colors.grey
                  ),),
                  SizedBox(height: 16,),
                  Container(
                    height: 170,
                    child: ListView(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        Container(
                          width: 140,
                          margin: EdgeInsets.only(right: 16,bottom: 8),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(4),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.1),
                                blurRadius: 3,
                                spreadRadius: 2
                              )
                            ]
                          ),
                          child: Column(
                            children: <Widget>[
                              Expanded(
                                flex: 3,
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(4)
                                  ),
                                  child: Center(
                                    child: Image(
                                        fit: BoxFit.fill,
                                        image: AssetImage("assets/lovelearn.png")),
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 4,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Text("English - Easy Test",style: TextStyle(
                                        color: Colors.grey
                                      ),),
                                      Text("8.6",style: TextStyle(
                                          color: Colors.black,
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold
                                      ),),
                                      Row(
                                        children: <Widget>[
                                          Icon(Icons.star, color: Colors.yellow,size: 12,),
                                          Icon(Icons.star, color: Colors.yellow,size: 12,),
                                          Icon(Icons.star, color: Colors.yellow,size: 12,),
                                          Icon(Icons.star, color: Colors.yellow,size: 12,),
                                          Icon(Icons.star, color: Colors.grey,size: 12,),
                                          Spacer(),
                                          Container(
                                            height: 24,
                                            width: 24,
                                            decoration: BoxDecoration(
                                              color: Colors.red,
                                              shape: BoxShape.circle,
                                            ),
                                            child: Center(
                                              child: Icon(
                                                Icons.favorite,
                                                size: 13,
                                                color: Colors.white,
                                              ),
                                            ),
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),Container(
                          width: 140,
                          margin: EdgeInsets.only(right: 16,bottom: 8),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(4),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.black.withOpacity(0.1),
                                    blurRadius: 3,
                                    spreadRadius: 2
                                )
                              ]
                          ),
                          child: Column(
                            children: <Widget>[
                              Expanded(
                                flex: 3,
                                child: Container(
                                  decoration: BoxDecoration(
                                      color: const Color(0xFFFDFAEB),
                                      borderRadius: BorderRadius.circular(4)
                                  ),
                                  child: Center(
                                    child: Image(
                                        fit: BoxFit.fill,
                                        image: AssetImage("assets/easylearn.jpeg")),
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 4,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Text("English - Hard Test",style: TextStyle(
                                          color: Colors.grey
                                      ),),
                                      Text("8.2",style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold
                                      ),),
                                      Row(
                                        children: <Widget>[
                                          Icon(Icons.star, color: Colors.yellow,size: 12,),
                                          Icon(Icons.star, color: Colors.yellow,size: 12,),
                                          Icon(Icons.star, color: Colors.yellow,size: 12,),
                                          Icon(Icons.star, color: Colors.yellow,size: 12,),
                                          Icon(Icons.star, color: Colors.grey,size: 12,),
                                          Spacer(),
                                          Container(
                                            height: 24,
                                            width: 24,
                                            decoration: BoxDecoration(
                                              color: Colors.red,
                                              shape: BoxShape.circle,
                                            ),
                                            child: Center(
                                              child: Icon(
                                                Icons.favorite,
                                                size: 13,
                                                color: Colors.white,
                                              ),
                                            ),
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),Container(
                          width: 140,
                          margin: EdgeInsets.only(right: 16,bottom: 8),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(4),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.black.withOpacity(0.1),
                                    blurRadius: 3,
                                    spreadRadius: 2
                                )
                              ]
                          ),
                          child: Column(
                            children: <Widget>[
                              Expanded(
                                flex: 3,
                                child: Container(
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(4)
                                  ),
                                  child: Center(
                                    child: Image(
                                        fit: BoxFit.fill,
                                        image: AssetImage("assets/learntime.jpg")),
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 4,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Text("Russian - Easy Test",style: TextStyle(
                                          color: Colors.grey
                                      ),),
                                      Text("8.0",style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold
                                      ),),
                                      Row(
                                        children: <Widget>[
                                          Icon(Icons.star, color: Colors.yellow,size: 12,),
                                          Icon(Icons.star, color: Colors.yellow,size: 12,),
                                          Icon(Icons.star, color: Colors.yellow,size: 12,),
                                          Icon(Icons.star, color: Colors.yellow,size: 12,),
                                          Icon(Icons.star, color: Colors.grey,size: 12,),
                                          Spacer(),
                                          Container(
                                            height: 24,
                                            width: 24,
                                            decoration: BoxDecoration(
                                              color: Colors.red,
                                              shape: BoxShape.circle,
                                            ),
                                            child: Center(
                                              child: Icon(
                                                Icons.favorite,
                                                size: 13,
                                                color: Colors.white,
                                              ),
                                            ),
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    )
                  )
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 24),
              height: 240,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Text("Today's event",style:  TextStyle(
                        fontSize: 18
                      ),),
                      Spacer(),
                      Text("view all >",style: TextStyle(
                        color: Colors.grey,
                        fontSize: 12
                      ),),
                    ],
                  ),
                  SizedBox(height: 8,),
                  Text("Join now", style: TextStyle(
                    color: Colors.teal,
                    fontSize: 12
                    ),
                  ),
                  Container(
                    height: 150,
                    margin: EdgeInsets.symmetric(vertical: 16),
                    decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(16),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.blueGrey[100],
                          blurRadius: 3,
                          spreadRadius: 2
                        )
                      ]
                    ),
                    child: Center(
                      child: Text("Place Your Image",style: TextStyle(
                        color: Colors.white
                      ),),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        height: 4,
                        width: 24,
                        decoration: BoxDecoration(
                          color: Colors.teal,
                          borderRadius: BorderRadius.circular(4)
                        ),
                      ),
                      SizedBox(width: 8,),
                      Container(
                        height: 4,
                        width: 20,
                        decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(4)
                        ),
                      ),
                      SizedBox(width: 8,),
                      Container(
                        height: 4,
                        width: 12,
                        decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(4)
                        ),
                      ),
                      SizedBox(width: 8,),
                      Container(
                        height: 4,
                        width: 8,
                        decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(4)
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
            Container(
              height: 32,
              child: TabBar(
                onTap: (newIndex){
                  print(newIndex);
                  if(newIndex ==1) {
                    Future.delayed(
                        Duration(seconds: 3), () {
                      setState(() {
                        dummyLoading = true;
                      });
                    });
                  }
                  else{
                    dummyLoading = false;
                  }
                  setState(() {
                    currentIndex = newIndex;
                  }
                  );
                },
                
                unselectedLabelStyle: TextStyle(
                  color: Colors.grey,
                  fontSize: 14
                ),
                labelStyle: TextStyle(
                  color: Colors.black,
                  fontSize: 20
                ),
                indicatorSize: TabBarIndicatorSize.label,
                indicatorColor: Colors.teal,
                isScrollable: true,
                labelColor: Colors.black,
                unselectedLabelColor: Colors.grey,
                controller: _tabController,
                tabs: <Widget>[
                  Tab(text: "Popular",),
                  Tab(text: "Lecture",),
                  Tab(text: "Taste",),
                  Tab(text: "Task",),
                  Tab(text: "Radio",),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 24, right: 24, top: 8),
              height: 380,
              child: TabBarView(
                controller: _tabController,
                children: [
                  Scaffold(
                    body: AnimationLimiter(
                      child: ListView.separated(
                        shrinkWrap: true,
                        itemBuilder: (context, index){
                          return AnimationConfiguration.staggeredList(
                            position: index,
                            duration: const Duration(milliseconds: 500),
                            child: SlideAnimation(
                              verticalOffset: 50.0,
                              child: FadeInAnimation(
                                child: Container(
                                  height: 92,
                                  child: Row(
                                    children: <Widget>[
                                      Expanded(
                                        flex: 4,
                                        child: Container(
                                          decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(12),
                                              color: Colors.red[100]
                                          ),
                                          child: Center(
                                            child: Text("Place Image"),
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        flex: 11,
                                        child: Padding(
                                          padding: const EdgeInsets.only(left: 16,top: 8,bottom: 8, right: 16),
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: <Widget>[
                                              Text("How hard is it for humans to climb Mount Everest?", style:  TextStyle(
                                                  fontSize: 13
                                              ),),
                                              Spacer(),
                                              Row(
                                                children: <Widget>[
                                                  Text("Record", style: TextStyle(
                                                      fontSize: 12,
                                                      color: Colors.grey
                                                  ),),
                                                  Spacer(),
                                                  Icon(Icons.favorite, size: 12,color: Colors.grey,),
                                                  SizedBox(width: 8,),
                                                  Text("122", style: TextStyle(
                                                      fontSize: 12,
                                                      color: Colors.grey
                                                  ),),
                                                  SizedBox(width: 16,),
                                                  Icon(Icons.message, size: 12, color: Colors.grey,),
                                                  SizedBox(width: 8,),
                                                  Text("98", style: TextStyle(
                                                      fontSize: 12,
                                                      color: Colors.grey
                                                  ),),
                                                  Spacer(),
                                                  Icon(Icons.more_horiz, size: 12, color: Colors.grey,)
                                                ],
                                              )
                                            ],
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                )

                              ),
                            )

                          );
                        },
                        itemCount: 5,
                        separatorBuilder: (context, index){
                          return Divider();
                        },
                      ),
                    )

                  ),

                !dummyLoading ? Center(child: LoadingDoubleFlipping.circle(
                  size: 30,
                  backgroundColor: Colors.orange,
                ),): Scaffold(
                    body: AnimationLimiter(
                      child: ListView.separated(
                        shrinkWrap: true,
                        itemBuilder: (context, index){
                          return AnimationConfiguration.staggeredList(
                              position: index,
                              duration: const Duration(milliseconds: 500),
                              child: SlideAnimation(
                                verticalOffset: 50.0,
                                child: FadeInAnimation(
                                    child: Container(
                                      height: 92,
                                      child: Row(
                                        children: <Widget>[
                                          Expanded(
                                            flex: 4,
                                            child: Container(
                                              decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.circular(12),
                                                  color: Colors.red[100]
                                              ),
                                              child: Center(
                                                child: Text("Place Image"),
                                              ),
                                            ),
                                          ),
                                          Expanded(
                                            flex: 11,
                                            child: Padding(
                                              padding: const EdgeInsets.only(left: 16,top: 8,bottom: 8, right: 16),
                                              child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: <Widget>[
                                                  Text("How hard is it for humans to climb Mount Everest?", style:  TextStyle(
                                                      fontSize: 13
                                                  ),),
                                                  Spacer(),
                                                  Row(
                                                    children: <Widget>[
                                                      Text("Record", style: TextStyle(
                                                          fontSize: 12,
                                                          color: Colors.grey
                                                      ),),
                                                      Spacer(),
                                                      Icon(Icons.favorite, size: 12,color: Colors.grey,),
                                                      SizedBox(width: 8,),
                                                      Text("122", style: TextStyle(
                                                          fontSize: 12,
                                                          color: Colors.grey
                                                      ),),
                                                      SizedBox(width: 16,),
                                                      Icon(Icons.message, size: 12, color: Colors.grey,),
                                                      SizedBox(width: 8,),
                                                      Text("98", style: TextStyle(
                                                          fontSize: 12,
                                                          color: Colors.grey
                                                      ),),
                                                      Spacer(),
                                                      Icon(Icons.more_horiz, size: 12, color: Colors.grey,)
                                                    ],
                                                  )
                                                ],
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    )

                                ),
                              )

                          );
                        },
                        itemCount: 5,
                        separatorBuilder: (context, index){
                          return Divider();
                        },
                      ),
                    )

                ),
                Placeholder(),
                Placeholder(),
                Placeholder()
              ],),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
      unselectedLabelStyle: TextStyle(
        color: Colors.grey,
      ),
      selectedIconTheme: IconThemeData(
        color: Colors.green
      ),
      selectedLabelStyle: TextStyle(
        color: Colors.green
      ),
      unselectedIconTheme: IconThemeData(
        color: Colors.grey
      ),
      showSelectedLabels: true,
      type: BottomNavigationBarType.fixed,
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(icon: Icon(Icons.home), title: Text("Home")),
        BottomNavigationBarItem(icon: Icon(Icons.book), title: Text("Subject")),
        BottomNavigationBarItem(icon: Icon(Icons.backup), title: Text("Growing")),
        BottomNavigationBarItem(icon: Icon(Icons.account_circle), title: Text("Me"))
      ],),
    );
  }
}

