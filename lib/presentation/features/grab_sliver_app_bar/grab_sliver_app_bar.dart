import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ParalaxSliver extends StatelessWidget {
  const ParalaxSliver({super.key});

  @override
  Widget build(BuildContext context) {
    const title = 'Floating App Bar';

    return MaterialApp(
      title: title,
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: CustomScrollView(
          slivers: [
            // Add the app bar to the CustomScrollView.
            SliverAppBar(
              backgroundColor: Colors.red.withOpacity(0),
              // Provide a standard title.
              title: Text(title),
              leading: IconButton(
                icon: Icon(Icons.arrow_back_ios),
                onPressed: () {
                  Get.back();
                },
              ),
              // Allows the user to reveal the app bar if they begin scrolling
              // back up the list of items.
              floating: true,
              // Display a placeholder widget to visualize the shrinking size.
              flexibleSpace: FlexibleSpaceBar(
                background: Image.network(
                  'https://images.unsplash.com/photo-1543988884-c01cfa7b41c2?crop=entropy&cs=tinysrgb&fit=crop&fm=jpg&h=600&ixid=MnwxfDB8MXxyYW5kb218MHx8b2NlYW58fHx8fHwxNjcyNzI2Mzkz&ixlib=rb-4.0.3&q=80&utm_campaign=api-credit&utm_medium=referral&utm_source=unsplash_source&w=1000',
                  fit: BoxFit.cover,
                ),
                title: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      'Ceritanya App Bar() nanti dia opacity nya',
                      style: TextStyle(fontSize: 15),
                    ),
                  ),
                ),
                centerTitle: true,
                collapseMode: CollapseMode.none,
                stretchModes: [StretchMode.fadeTitle],
                expandedTitleScale: 1500.0,
              ),
              // Make the initial height of the SliverAppBar larger than normal.
              expandedHeight: 200,
              actions: [
                Icon(Icons.person_add),
                SizedBox(
                  width: 12,
                )
              ],
            ),

            // Next, create a SliverList
            SliverList(
              // Use a delegate to build items as they're scrolled on screen.
              delegate: SliverChildBuilderDelegate(
                // The builder function returns a ListTile with a title that
                // displays the index of the current item.
                (context, index) => ListTile(title: Text('Item #$index')),
                // Builds 1000 ListTiles
                childCount: 50,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
