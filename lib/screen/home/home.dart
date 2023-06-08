import 'package:evpoint/utils/imports.dart';

class PreHomeScreen extends StatefulWidget {
  const PreHomeScreen({Key? key}) : super(key: key);

  @override
  State<PreHomeScreen> createState() => _PreHomeScreenState();
}

class _PreHomeScreenState extends State<PreHomeScreen> {
  int _selectedIndex = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    HomeScreen(),
    SaveScreen(),
    MyBookingScreen(),
    WalletScreen(),
    AccountScreen(),
  ];

  void _onItemTapped(int index) => setState(() => _selectedIndex = index);

  @override
  void initState() {
    _selectedIndex = Get.arguments ?? 0;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        selectedFontSize: 15,
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        iconSize: 30,
        onTap: _onItemTapped,
        elevation: 0,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home_outlined), label: "Home", activeIcon: Icon(Icons.home_rounded)),
          BottomNavigationBarItem(
              icon: Icon(Icons.bookmark_outline_rounded), label: "Saved", activeIcon: Icon(Icons.bookmark_rounded)),
          BottomNavigationBarItem(
              icon: Icon(Icons.playlist_add_check_circle_outlined),
              label: "My Booking",
              activeIcon: Icon(Icons.playlist_add_check_circle_rounded)),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_balance_wallet_outlined),
              label: "My Wallet",
              activeIcon: Icon(Icons.account_balance_wallet)),
          BottomNavigationBarItem(icon: Icon(Icons.person_outlined), label: "Account", activeIcon: Icon(Icons.person)),
        ],
      ),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Widget viewWidget = const StationListView();
  bool isMapView = false;
  bool isLoading = false;

  @override
  void initState() {
    Get.put(LocationController());
    Get.put(AppCommonController());
    getLocation();
    super.initState();
  }

  //Get location will check user location permisssion and then make fetch location() call.
  void getLocation() async {
    setState(() => isLoading = true);

    //Get User Permission First
    LocationController.instance.getLocation();

    setState(() => isLoading = false);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          CustomFloatingActionButton(
              icon: isMapView ? Icons.list : Icons.map, onTap: () => setState(() => isMapView = !isMapView)),
          WidgetConst.kWidthSpacer(),
          CustomFloatingActionButton(
              icon: Icons.location_on_outlined,
              onTap: () {
                FirebaseAuthController.instance.logout();
              }),
          WidgetConst.kWidthSpacer(),
          if (isMapView) CustomFloatingActionButton(icon: Icons.my_location_rounded, onTap: () {}),
          if (isMapView) WidgetConst.kWidthSpacer(),
        ],
      ),
      body: Stack(
        children: [
          AnimatedSwitcher(
            duration: const Duration(milliseconds: 100),
            // transitionBuilder: (Widget child, Animation<double> animation) {
            //   return FadeTransition(opacity: animation, child: child);
            // },
            child: isMapView ? const StationMapView() : const StationListView(),
          ),
          isLoading ? const Center(child: CircularProgressIndicator()) : const SizedBox.shrink()
        ],
      ),
    );
  }
}
