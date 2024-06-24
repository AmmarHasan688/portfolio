import 'package:ammar_hasan/generated/assets.dart';
import 'package:ammar_hasan/utils/helpers.dart';
import 'package:flutter/material.dart';
import '../statics/data_values.dart';
import '../statics/key_holders.dart';
import '../theme/app_theme.dart';
import '../widgets/container_card.dart';
import '../widgets/frame_title.dart';
import '../widgets/project_data.dart';

class DS4Projects extends StatefulWidget {
  const DS4Projects({Key? key}) : super(key: key);

  @override
  State<DS4Projects> createState() => _DS4ProjectsState();
}

class _DS4ProjectsState extends State<DS4Projects> {
  final PageController _pageController = PageController(
    viewportFraction: 0.8,
  );
  int _currentPage = 0;

  @override
  void initState() {
    super.initState();
    _pageController.addListener(() {
      setState(() {
        _currentPage = _pageController.page!.round();
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      key: KeyHolders.personalProjectsKey,
      color: AppThemeData.backgroundGrey,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 18),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const FrameTitle(
              title: DataValues.personalProjects,
              description: ' ',
            ),
            Column(
              children: [
                SizedBox(
                  height: 540,
                  child: PageView.builder(
                    controller: _pageController,
                    itemCount: DataValues.projectDataList.length,
                    onPageChanged: (index) {
                      setState(() {
                        _currentPage = index;
                      });
                    },
                    itemBuilder: (context, index) {
                      var p = DataValues.projectDataList[index];
                      return Container(
                        margin: const EdgeInsets.all(20),
                        child: ContainerCard().desktopProjectCard(
                          images: p.images,
                          lang: p.language,
                          title: p.title,
                          links: p.links,
                          height: 250,
                          fontSize: 13,
                          values: p.values,
                        ),
                      );
                    },
                  ),
                ),
                const SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                      onPressed: () {
                        if (_currentPage > 0) {
                          _pageController.previousPage(
                            duration: const Duration(milliseconds: 300),
                            curve: Curves.easeInOut,
                          );
                        }
                      },
                      icon: const Icon(Icons.arrow_left),
                    ),
                    const SizedBox(width: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List<Widget>.generate(
                          DataValues.projectDataList.length, (index) {
                        return MouseRegion(
                          cursor: SystemMouseCursors.click,
                          child: GestureDetector(
                            onTap: () {
                              if (_currentPage != index) {
                                _pageController.animateToPage(
                                  index,
                                  duration: const Duration(milliseconds: 300),
                                  curve: Curves.easeInOut,
                                );
                              }
                            },
                            child: Container(
                              width: 10,
                              height: 10,
                              margin: const EdgeInsets.symmetric(horizontal: 2),
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: _currentPage == index
                                    ? const Color(0xFF019FAB)
                                    : Colors.grey,
                              ),
                            ),
                          ),
                        );
                      }),
                    ),
                    const SizedBox(width: 10),
                    IconButton(
                      onPressed: () {
                        if (_currentPage < DataValues.projectDataList.length - 1) {
                          _pageController.nextPage(
                            duration: const Duration(milliseconds: 300),
                            curve: Curves.easeInOut,
                          );
                        }
                      },
                      icon: const Icon(Icons.arrow_right),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

}
