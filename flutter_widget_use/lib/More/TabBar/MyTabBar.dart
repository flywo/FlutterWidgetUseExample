import 'package:flutter/cupertino.dart';
import 'package:flutter_markdown/flutter_markdown.dart';

/// @ClassName MyTabBar
/// @Description Tabbar和TabBarView配合
/// @Author YuHua
/// @Date 2021-03-03 6:21 PM


const content = """
## Tabbar和TabBarView配合使用
> 1.使用TabController进行配合
```
/// class _MyTabbedPageState extends State<MyTabbedPage> with SingleTickerProviderStateMixin {
///   final List<Tab> myTabs = <Tab>[
///     Tab(text: 'LEFT'),
///     Tab(text: 'RIGHT'),
///   ];
///
///   TabController _tabController;
///
///   @override
///   void initState() {
///     super.initState();
///     _tabController = TabController(vsync: this, length: myTabs.length);
///   }
///
///  @override
///  void dispose() {
///    _tabController.dispose();
///    super.dispose();
///  }
///
///   @override
///   Widget build(BuildContext context) {
///     return Scaffold(
///       appBar: AppBar(
///         bottom: TabBar(
///           controller: _tabController,
///           tabs: myTabs,
///         ),
///       ),
///       body: TabBarView(
///         controller: _tabController,
///         children: myTabs.map((Tab tab) {
///           final String label = tab.text.toLowerCase();
///           return Center(
///             child: Text(
///               'This is the label tab',
///               style: const TextStyle(fontSize: 36),
///             ),
///           );
///         }).toList(),
///       ),
///     );
///   }
/// }
```
> 2.使用DefaultTabController配合
```
/// final List<Tab> tabs = <Tab>[
///   Tab(text: 'Zeroth'),
///   Tab(text: 'First'),
///   Tab(text: 'Second'),
/// ];
/// ```
///
/// ```dart
/// Widget build(BuildContext context) {
///   return DefaultTabController(
///     length: tabs.length,
///     // The Builder widget is used to have a different BuildContext to access
///     // closest DefaultTabController.
///     child: Builder(
///       builder: (BuildContext context) {
///         final TabController tabController = DefaultTabController.of(context);
///         tabController.addListener(() {
///           if (!tabController.indexIsChanging) {
///             // Your code goes here.
///             // To get index of current tab use tabController.index
///           }
///         });
///         return Scaffold(
///           appBar: AppBar(
///             bottom: TabBar(
///               tabs: tabs,
///             ),
///           ),
///           body: TabBarView(
///             children: tabs.map((Tab tab){
///               return Center(
///                 child: Text(
///                   tab.text + ' Tab',
///                   style: Theme.of(context).textTheme.headline5,
///                 ),
///               );
///             }).toList(),
///           ),
///         );
///       }
///     ),
///   );
/// }
```
> 3.可使用Scaffold配合自定义TabBar实现任意位置放置TabBar和TabBarView的配合
```
class ListContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 7,
        child: Scaffold(
          appBar: _TabBar(
            color: Theme.of(context).primaryColor,
            tabBar: TabBar(
              indicatorSize: TabBarIndicatorSize.tab,
              indicatorPadding: EdgeInsets.only(bottom: 4, left: 33, right: 33),
              labelPadding: EdgeInsets.only(left: 20, right: 20),
              labelStyle: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold
              ),
              unselectedLabelStyle: TextStyle(
                  fontSize: 14,
              ),
              labelColor: Color4974F5,
              indicatorColor: Color4974F5,
              unselectedLabelColor: Color222222,
              isScrollable: true,
              tabs: [
                SizedBox(width: 42, child: Tab(text: "全部")),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              Text("1"),
            ],
          ),
        )
    );
  }
}


class _TabBar extends Container implements PreferredSizeWidget {
  final Color color;
  final TabBar tabBar;

  _TabBar({Key key, @required this.color, @required this.tabBar})
      : super(key: key);

  @override
  Size get preferredSize => Size.fromHeight(44);

  @override
  Widget build(BuildContext context) => Material(
    elevation: 0,
    color: color,
    child: tabBar,
  );
}
```
> 4.或者任意放置TabBar和TabBarView的位置
```
DefaultTabController(
        length: 7,
      child: Column(
        children: [
          _TabBar(
            color: Theme.of(context).primaryColor,
            tabBar: TabBar(
              indicatorSize: TabBarIndicatorSize.tab,
              indicatorPadding: EdgeInsets.only(bottom: 4, left: 33, right: 33),
              labelPadding: EdgeInsets.only(left: 20, right: 20),
              labelStyle: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold
              ),
              unselectedLabelStyle: TextStyle(
                fontSize: 14,
              ),
              labelColor: Color4974F5,
              indicatorColor: Color4974F5,
              unselectedLabelColor: Color222222,
              isScrollable: true,
              tabs: [
                SizedBox(width: 42, child: Tab(text: "全部")),
              ],
            ),
          ),
          Expanded(
            child: TabBarView(
              children: [
                Text("7"),
              ],
            ),
          ),
        ],
      ),
    );
```
""";

class MyTabBarView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Markdown(data: content);
  }
}
