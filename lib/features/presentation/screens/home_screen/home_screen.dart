import 'package:flutter/material.dart';
import 'home_screen_views/category_widget.dart';
import 'home_screen_views/posts_list_tile.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18.0),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 35),
              const Text(
                "Hello, Kamayel!",
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 24,
                  color: Color(0xFF061730),
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                'Let’s see recommendation stories for you',
                style: TextStyle(
                  color: Color(0xFF6D7E97),
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  height: 0,
                  letterSpacing: 0.16,
                ),
              ),
              const SizedBox(height: 40),
              const SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    CategoryWidget(text: "🔥 Popular", currentIndex: 0),
                    SizedBox(width: 20),
                    CategoryWidget(text: "📩 Newest", currentIndex: 1),
                    SizedBox(width: 20),
                    CategoryWidget(text: "💡️ Best", currentIndex: 2),
                    SizedBox(width: 20),
                    CategoryWidget(text: "🚀 Top", currentIndex: 3),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Expanded(
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return const Card(
                      color: Colors.white,
                      elevation: 0.3,
                      shadowColor: Colors.white70,
                      child: PostsListTile(),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


