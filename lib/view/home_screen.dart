import 'package:flutter/material.dart';
import 'package:kheloo_clone_goa/view/widgets/carousel_part.dart';
import 'package:kheloo_clone_goa/view/widgets/game_list.dart';
import 'package:provider/provider.dart';
import 'package:kheloo_clone_goa/constants/constants.dart';
import 'package:kheloo_clone_goa/view/widgets/language_container.dart';
import 'package:kheloo_clone_goa/view/widgets/bottom_sheet.dart';
import 'package:kheloo_clone_goa/view/widgets/header.dart';
import 'package:kheloo_clone_goa/view/widgets/lucky_pot.dart';
import 'package:kheloo_clone_goa/view/widgets/user_card.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import '../provider/home_provider.dart';
import 'widgets/common_header.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<HomeProvider>(
        create: (_) => HomeProvider(),
        builder: (context, child) {
          return homeScreenContent(
            context,
          );
        });
  }

  Scaffold homeScreenContent(BuildContext context) {
    return Scaffold(
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: const floatingButton(),
        bottomSheet: const CustomeBottomSheet(),
        backgroundColor: Colors.black,
        body: SafeArea(
          child: CustomScrollView(
            slivers: [
              const SliverAppBar(
                backgroundColor: Colors.black,
                flexibleSpace: CommonHeader(),
                floating: false,
                pinned: true,
              ),
              Consumer<HomeProvider>(
                builder: (context, provider, child) {
                  return SliverToBoxAdapter(
                    child: Column(
                      children: [
                        CarouselPart(
                          provider: provider,
                        ),
                        LanguageContainer(),
                        const LuckyPot(),
                        const Header(
                          title: "LIVE WITHDRAWAL",
                        ),
                        const UserList(),
                        videoPlayer(),
                        divider(),
                        const Header(
                          title: "GAMES",
                        ),
                        GameList(
                          provider: provider,
                        ),
                      ],
                    ),
                  );
                },
              ),
            ],
          ),
        ));
  }

  YoutubePlayer videoPlayer() {
    return YoutubePlayer(
      controller: YoutubePlayerController(
        initialVideoId: youtubeVideoID,
        flags: const YoutubePlayerFlags(
          autoPlay: false,
          hideThumbnail: true,
          mute: false,
        ),
      ),
      showVideoProgressIndicator: true,
    );
  }

  Padding divider() {
    return const Padding(
      padding: EdgeInsets.symmetric(vertical: 20),
      child: Divider(
        color: ColorConstants.primaryYellow,
        endIndent: 200,
        thickness: 3,
      ),
    );
  }
}
