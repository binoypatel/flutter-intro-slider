import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';

import 'dot_animation_enum.dart';
import 'list_rtl_language.dart';
import 'scrollbar_behavior_enum.dart';
import 'slide_object.dart';

class IntroSlider extends StatefulWidget {
  final Key? key;
  // ---------- Slides ----------
  /// An array of Slide object
  final List<Slide>? slides;

  /// Background color for all slides
  final Color? backgroundColorAllSlides;

  // ---------- SKIP button ----------
  /// Render your own SKIP button
  final Widget? renderSkipBtn;

  /// Width of view wrapper SKIP button
  final double? widthSkipBtn;

  /// Fire when press SKIP button
  final Function? onSkipPress;

  /// Change SKIP to any text you want
  final String? nameSkipBtn;

  /// Style for text at SKIP button
  final TextStyle? styleNameSkipBtn;

  /// Color for SKIP button
  final Color? colorSkipBtn;

  /// Color for Skip button when press
  final Color? highlightColorSkipBtn;

  /// Show or hide SKIP button
  final bool? isShowSkipBtn;

  /// Rounded SKIP button
  final double? borderRadiusSkipBtn;

  // ---------- PREV button ----------
  /// Render your own PREV button
  final Widget? renderPrevBtn;

  /// Width of view wrapper PREV button
  final double? widthPrevBtn;

  /// Change PREV to any text you want
  final String? namePrevBtn;

  /// Style for text at PREV button
  final TextStyle? styleNamePrevBtn;

  /// Color for PREV button
  final Color? colorPrevBtn;

  /// Color for PREV button when press
  final Color? highlightColorPrevBtn;

  /// Show or hide PREV button (only visible if skip is hidden)
  final bool? isShowPrevBtn;

  /// Rounded PREV button
  final double? borderRadiusPrevBtn;

  // ---------- NEXT button ----------
  /// Render your own NEXT button
  final Widget? renderNextBtn;

  /// Change NEXT to any text you want
  final String? nameNextBtn;

  /// Show or hide NEXT button
  final bool? isShowNextBtn;

  // ---------- DONE button ----------
  /// Change DONE to any text you want
  final String? nameDoneBtn;

  /// Render your own DONE button
  final Widget? renderDoneBtn;

  /// Width of view wrapper DONE button
  final double? widthDoneBtn;

  /// Fire when press DONE button
  final Function? onDonePress;

  /// Style for text at DONE button
  final TextStyle? styleNameDoneBtn;

  /// Color for DONE button
  final Color? colorDoneBtn;

  /// Color for DONE button when press
  final Color? highlightColorDoneBtn;

  /// Rounded DONE button
  final double? borderRadiusDoneBtn;

  /// Show or hide DONE button
  final bool? isShowDoneBtn;

  // ---------- Dot indicator ----------
  /// Show or hide dot indicator
  final bool? isShowDotIndicator;

  /// Color for dot when passive
  final Color? colorDot;

  /// Color for dot when active
  final Color? colorActiveDot;

  /// Size of each dot
  final double? sizeDot;

  /// Type dots animation
  final dotSliderAnimation typeDotAnimation;

  // ---------- Tabs ----------
  /// Render your own custom tabs
  final List<Widget>? listCustomTabs;

  /// Notify when tab change completed
  final Function? onTabChangeCompleted;

  /// Ref function go to specific tab index
  final Function? refFuncGoToTab;

  // ---------- Behavior ----------
  /// Whether or not the slider is scrollable (or controlled only by buttons)
  final bool? isScrollable;
  final ScrollPhysics? scrollPhysics;

  /// Show or hide status bar
  final bool? shouldHideStatusBar;

  /// The way the vertical scrollbar should behave
  final scrollbarBehavior? verticalScrollbarBehavior;

  // Bottom widget
  final Widget? bottomWidget;

  // Constructor
  IntroSlider(
      {this.key,
      // Slides
      this.slides,
      this.backgroundColorAllSlides,

      // Skip
      this.renderSkipBtn,
      this.widthSkipBtn,
      this.onSkipPress,
      this.nameSkipBtn,
      this.styleNameSkipBtn,
      this.colorSkipBtn,
      this.highlightColorSkipBtn,
      this.isShowSkipBtn,
      this.borderRadiusSkipBtn,

      // Prev
      this.renderPrevBtn,
      this.widthPrevBtn,
      this.namePrevBtn,
      this.isShowPrevBtn,
      this.styleNamePrevBtn,
      this.colorPrevBtn,
      this.highlightColorPrevBtn,
      this.borderRadiusPrevBtn,

      // Done
      this.renderDoneBtn,
      this.widthDoneBtn,
      this.onDonePress,
      this.nameDoneBtn,
      this.colorDoneBtn,
      this.highlightColorDoneBtn,
      this.borderRadiusDoneBtn,
      this.styleNameDoneBtn,
      this.isShowDoneBtn,

      // Next
      this.renderNextBtn,
      this.nameNextBtn,
      this.isShowNextBtn,

      // Dots
      this.isShowDotIndicator,
      this.colorDot,
      this.colorActiveDot,
      this.sizeDot,
      this.typeDotAnimation = dotSliderAnimation.DOT_MOVEMENT,

      // Tabs
      this.listCustomTabs,
      this.onTabChangeCompleted,
      this.refFuncGoToTab,

      // Behavior
      this.isScrollable,
      this.scrollPhysics,
      this.shouldHideStatusBar,
      this.verticalScrollbarBehavior,

      // bottom widget
      this.bottomWidget})
      : super(key: key);

  @override
  IntroSliderState createState() {
    return new IntroSliderState(
        // Slides
        slides: this.slides,
        backgroundColorAllSlides: this.backgroundColorAllSlides,

        // Skip
        renderSkipBtn: this.renderSkipBtn,
        widthSkipBtn: this.widthSkipBtn,
        onSkipPress: this.onSkipPress,
        nameSkipBtn: this.nameSkipBtn,
        styleNameSkipBtn: this.styleNameSkipBtn,
        colorSkipBtn: this.colorSkipBtn,
        highlightColorSkipBtn: this.highlightColorSkipBtn,
        isShowSkipBtn: this.isShowSkipBtn,
        borderRadiusSkipBtn: this.borderRadiusSkipBtn,

        // Prev
        renderPrevBtn: this.renderPrevBtn,
        widthPrevBtn: this.widthPrevBtn,
        namePrevBtn: this.namePrevBtn,
        isShowPrevBtn: this.isShowPrevBtn,
        styleNamePrevBtn: this.styleNamePrevBtn,
        colorPrevBtn: this.colorPrevBtn,
        highlightColorPrevBtn: this.highlightColorPrevBtn,
        borderRadiusPrevBtn: this.borderRadiusPrevBtn,

        // Done
        renderDoneBtn: this.renderDoneBtn,
        widthDoneBtn: this.widthDoneBtn,
        onDonePress: this.onDonePress,
        nameDoneBtn: this.nameDoneBtn,
        styleNameDoneBtn: this.styleNameDoneBtn,
        colorDoneBtn: this.colorDoneBtn,
        highlightColorDoneBtn: this.highlightColorDoneBtn,
        borderRadiusDoneBtn: this.borderRadiusDoneBtn,
        isShowDoneBtn: this.isShowDoneBtn,

        // Next
        renderNextBtn: this.renderNextBtn,
        nameNextBtn: this.nameNextBtn,
        isShowNextBtn: this.isShowNextBtn,

        // Dots
        isShowDotIndicator: this.isShowDotIndicator,
        colorDot: this.colorDot,
        colorActiveDot: this.colorActiveDot,
        sizeDot: this.sizeDot,
        typeDotAnimation: this.typeDotAnimation,

        // Tabs
        listCustomTabs: this.listCustomTabs,
        onTabChangeCompleted: this.onTabChangeCompleted,
        refFuncGoToTab: this.refFuncGoToTab,

        // Behavior
        isScrollable: this.isScrollable,
        scrollPhysics: this.scrollPhysics,
        shouldHideStatusBar: this.shouldHideStatusBar,
        verticalScrollbarBehavior:
            this.verticalScrollbarBehavior ?? scrollbarBehavior.HIDE,

        // bottom widget
        bottomWidget: this.bottomWidget);
  }
}

class IntroSliderState extends State<IntroSlider>
    with SingleTickerProviderStateMixin {
  /// Default values
  static TextStyle defaultBtnNameTextStyle = TextStyle(color: Colors.white);

  static double defaultBtnBorderRadius = 30.0;

  static Color defaultBtnColor = Colors.transparent;

  static Color defaultBtnHighlightColor = Colors.white.withOpacity(0.3);

  // ---------- Slides ----------
  /// An array of Slide object
  final List<Slide>? slides;

  /// Background color for all slides
  Color? backgroundColorAllSlides;

  // ---------- SKIP button ----------
  /// Render your own SKIP button
  Widget? renderSkipBtn;

  /// Width of view wrapper SKIP button
  double? widthSkipBtn;

  /// Fire when press SKIP button
  Function? onSkipPress;

  /// Change SKIP to any text you want
  String? nameSkipBtn;

  /// Style for text at SKIP button
  TextStyle? styleNameSkipBtn;

  /// Color for SKIP button
  Color? colorSkipBtn;

  /// Color for SKIP button when press
  Color? highlightColorSkipBtn;

  /// Show or hide SKIP button
  bool? isShowSkipBtn;

  /// Rounded SKIP button
  double? borderRadiusSkipBtn;

  // ---------- PREV button ----------
  /// Render your own PREV button
  Widget? renderPrevBtn;

  /// Change PREV to any text you want
  String? namePrevBtn;

  /// Style for text at PREV button
  TextStyle? styleNamePrevBtn;

  /// Color for PREV button
  Color? colorPrevBtn;

  /// Width of view wrapper PREV button
  double? widthPrevBtn;

  /// Color for PREV button when press
  Color? highlightColorPrevBtn;

  /// Show or hide PREV button
  bool? isShowPrevBtn;

  /// Rounded PREV button
  double? borderRadiusPrevBtn;

  // ---------- DONE button ----------
  /// Render your own DONE button
  Widget? renderDoneBtn;

  /// Width of view wrapper DONE button
  double? widthDoneBtn;

  /// Fire when press DONE button
  Function? onDonePress;

  /// Change DONE to any text you want
  String? nameDoneBtn;

  /// Style for text at DONE button
  TextStyle? styleNameDoneBtn;

  /// Color for DONE button
  Color? colorDoneBtn;

  /// Color for DONE button when press
  Color? highlightColorDoneBtn;

  /// Rounded DONE button
  double? borderRadiusDoneBtn;

  /// Show or hide DONE button
  bool? isShowDoneBtn;

  // ---------- NEXT button ----------
  /// Render your own NEXT button
  Widget? renderNextBtn;

  /// Change NEXT to any text you want
  String? nameNextBtn;

  /// Show or hide NEXT button
  bool? isShowNextBtn;

  // ---------- Dot indicator ----------
  /// Show or hide dot indicator
  bool? isShowDotIndicator = true;

  /// Color for dot when passive
  Color? colorDot;

  /// Color for dot when active
  Color? colorActiveDot;

  /// Size of each dot
  double? sizeDot = 8.0;

  /// Type dots animation
  dotSliderAnimation typeDotAnimation;

  // ---------- Tabs ----------
  /// List custom tabs
  List<Widget>? listCustomTabs;

  /// Notify when tab change completed
  Function? onTabChangeCompleted;

  /// Ref function go to specific tab index
  Function? refFuncGoToTab;

  // ---------- Behavior ----------
  /// Allow the slider to scroll
  bool? isScrollable;
  ScrollPhysics? scrollPhysics;

  /// Show or hide status bar
  bool? shouldHideStatusBar;

  /// The way the vertical scrollbar should behave
  final scrollbarBehavior verticalScrollbarBehavior;

  /// Bottom
  final Widget? bottomWidget;

  // Constructor
  IntroSliderState({
    // List slides
    required this.slides,
    required this.backgroundColorAllSlides,

    // Skip button
    required this.renderSkipBtn,
    required this.widthSkipBtn,
    required this.onSkipPress,
    required this.nameSkipBtn,
    required this.styleNameSkipBtn,
    required this.colorSkipBtn,
    required this.highlightColorSkipBtn,
    required this.isShowSkipBtn,
    required this.borderRadiusSkipBtn,

    // Prev button
    required this.widthPrevBtn,
    required this.isShowPrevBtn,
    required this.namePrevBtn,
    required this.renderPrevBtn,
    required this.styleNamePrevBtn,
    required this.colorPrevBtn,
    required this.highlightColorPrevBtn,
    required this.borderRadiusPrevBtn,

    // Done button
    required this.renderDoneBtn,
    required this.widthDoneBtn,
    required this.onDonePress,
    required this.nameDoneBtn,
    required this.styleNameDoneBtn,
    required this.colorDoneBtn,
    required this.highlightColorDoneBtn,
    required this.borderRadiusDoneBtn,
    required this.isShowDoneBtn,

    // Next button
    required this.nameNextBtn,
    required this.renderNextBtn,
    required this.isShowNextBtn,

    // Dot indicator
    required this.isShowDotIndicator,
    required this.colorDot,
    required this.colorActiveDot,
    required this.sizeDot,
    required this.typeDotAnimation,

    // Tabs
    required this.listCustomTabs,
    required this.onTabChangeCompleted,
    required this.refFuncGoToTab,

    // Behavior
    required this.isScrollable,
    required this.scrollPhysics,
    required this.shouldHideStatusBar,
    required this.verticalScrollbarBehavior,

    // Sign-up & Sign-in
    required this.bottomWidget,
  });

  TabController? tabController;

  List<Widget>? tabs = [];
  List<Widget> dots = [];
  List<double?> sizeDots = [];
  List<double> opacityDots = [];
  List<ScrollController> scrollControllers = [];

  // For DOT_MOVEMENT
  double marginLeftDotFocused = 0;
  double marginRightDotFocused = 0;

  // For SIZE_TRANSITION
  double currentAnimationValue = 0;
  int currentTabIndex = 0;

  int lengthSlide = 0;

  @override
  void initState() {
    super.initState();

    lengthSlide = slides?.length ?? listCustomTabs?.length ?? 0;

    tabController = new TabController(length: lengthSlide, vsync: this);
    tabController!.addListener(() {
      if (tabController!.indexIsChanging) {
        currentTabIndex = tabController!.previousIndex;
      } else {
        currentTabIndex = tabController!.index;
      }
      currentAnimationValue = tabController!.animation!.value;
      if (this.onTabChangeCompleted != null) {
        this.onTabChangeCompleted!(tabController!.index);
      }
    });

    // Send reference function goToTab to parent
    if (this.refFuncGoToTab != null) {
      this.refFuncGoToTab!(this.goToTab);
    }

    // Dot animation
    if (sizeDot == null) {
      sizeDot = 8.0;
    }
    double initValueMarginRight = (sizeDot! * 2) * (lengthSlide - 1);

    switch (typeDotAnimation) {
      case dotSliderAnimation.DOT_MOVEMENT:
        for (int i = 0; i < lengthSlide; i++) {
          sizeDots.add(sizeDot);
          opacityDots.add(1.0);
        }
        marginRightDotFocused = initValueMarginRight;
        break;
      case dotSliderAnimation.SIZE_TRANSITION:
        for (int i = 0; i < lengthSlide; i++) {
          if (i == 0) {
            sizeDots.add(sizeDot! * 1.5);
            opacityDots.add(1.0);
          } else {
            sizeDots.add(sizeDot);
            opacityDots.add(0.5);
          }
        }
    }

    tabController!.animation!.addListener(() {
      this.setState(() {
        switch (typeDotAnimation) {
          case dotSliderAnimation.DOT_MOVEMENT:
            marginLeftDotFocused =
                tabController!.animation!.value * sizeDot! * 2;
            marginRightDotFocused = initValueMarginRight -
                tabController!.animation!.value * sizeDot! * 2;
            break;
          case dotSliderAnimation.SIZE_TRANSITION:
            if (tabController!.animation!.value == currentAnimationValue) {
              break;
            }

            double diffValueAnimation =
                (tabController!.animation!.value - currentAnimationValue).abs();
            int diffValueIndex = (currentTabIndex - tabController!.index).abs();

            // When press skip button
            if (tabController!.indexIsChanging &&
                (tabController!.index - tabController!.previousIndex).abs() >
                    1) {
              if (diffValueAnimation < 1.0) {
                diffValueAnimation = 1.0;
              }
              sizeDots[currentTabIndex] = sizeDot! * 1.5 -
                  (sizeDot! / 2) * (1 - (diffValueIndex - diffValueAnimation));
              sizeDots[tabController!.index] = sizeDot! +
                  (sizeDot! / 2) * (1 - (diffValueIndex - diffValueAnimation));
              opacityDots[currentTabIndex] =
                  1.0 - (diffValueAnimation / diffValueIndex) / 2;
              opacityDots[tabController!.index] =
                  0.5 + (diffValueAnimation / diffValueIndex) / 2;
            } else {
              if (tabController!.animation!.value > currentAnimationValue) {
                // Swipe left
                sizeDots[currentTabIndex] =
                    sizeDot! * 1.5 - (sizeDot! / 2) * diffValueAnimation;
                sizeDots[currentTabIndex + 1] =
                    sizeDot! + (sizeDot! / 2) * diffValueAnimation;
                opacityDots[currentTabIndex] = 1.0 - diffValueAnimation / 2;
                opacityDots[currentTabIndex + 1] = 0.5 + diffValueAnimation / 2;
              } else {
                // Swipe right
                sizeDots[currentTabIndex] =
                    sizeDot! * 1.5 - (sizeDot! / 2) * diffValueAnimation;
                sizeDots[currentTabIndex - 1] =
                    sizeDot! + (sizeDot! / 2) * diffValueAnimation;
                opacityDots[currentTabIndex] = 1.0 - diffValueAnimation / 2;
                opacityDots[currentTabIndex - 1] = 0.5 + diffValueAnimation / 2;
              }
            }
            break;
        }
      });
    });

    // Dot indicator
    if (isShowDotIndicator == null) {
      isShowDotIndicator = true;
    }
    if (colorDot == null) {
      colorDot = Color(0x80000000);
    }
    if (colorActiveDot == null) {
      colorActiveDot = colorDot;
    }
    if (isScrollable == null) {
      isScrollable = true;
    }

    if (scrollPhysics == null) {
      scrollPhysics = ScrollPhysics();
    }

    setupButtonDefaultValues();

    if (this.listCustomTabs == null) {
      renderListTabs();
    } else {
      tabs = this.listCustomTabs;
    }
  }

  void setupButtonDefaultValues() {
    // Skip button
    if (onSkipPress == null) {
      onSkipPress = () {
        if (!this.isAnimating(tabController!.animation!.value)) {
          if (lengthSlide > 0) {
            tabController!.animateTo(lengthSlide - 1);
          }
        }
      };
    }
    if (isShowSkipBtn == null) {
      isShowSkipBtn = true;
    }
    if (styleNameSkipBtn == null) {
      styleNameSkipBtn = defaultBtnNameTextStyle;
    }
    if (nameSkipBtn == null) {
      nameSkipBtn = "SKIP";
    }
    if (renderSkipBtn == null) {
      renderSkipBtn = Text(
        nameSkipBtn!,
        style: styleNameSkipBtn,
      );
    }
    if (colorSkipBtn == null) {
      colorSkipBtn = defaultBtnColor;
    }
    if (highlightColorSkipBtn == null) {
      highlightColorSkipBtn = defaultBtnHighlightColor;
    }
    if (borderRadiusSkipBtn == null) {
      borderRadiusSkipBtn = defaultBtnBorderRadius;
    }

    // Prev button
    if (isShowPrevBtn == null || isShowSkipBtn!) {
      isShowPrevBtn = false;
    }
    if (styleNamePrevBtn == null) {
      styleNamePrevBtn = defaultBtnNameTextStyle;
    }
    if (namePrevBtn == null) {
      namePrevBtn = "PREV";
    }
    if (renderPrevBtn == null) {
      renderPrevBtn = Text(
        namePrevBtn!,
        style: styleNamePrevBtn,
      );
    }
    if (colorPrevBtn == null) {
      colorPrevBtn = defaultBtnColor;
    }
    if (highlightColorPrevBtn == null) {
      highlightColorPrevBtn = defaultBtnHighlightColor;
    }
    if (borderRadiusPrevBtn == null) {
      borderRadiusPrevBtn = defaultBtnBorderRadius;
    }
    if (isShowDoneBtn == null) {
      isShowDoneBtn = true;
    }

    if (isShowNextBtn == null) {
      isShowNextBtn = true;
    }

    // Done button
    if (onDonePress == null) {
      onDonePress = () {};
    }
    if (styleNameDoneBtn == null) {
      styleNameDoneBtn = defaultBtnNameTextStyle;
    }
    if (nameDoneBtn == null) {
      nameDoneBtn = "DONE";
    }
    if (renderDoneBtn == null) {
      renderDoneBtn = Text(
        nameDoneBtn!,
        style: styleNameDoneBtn,
      );
    }
    if (colorDoneBtn == null) {
      colorDoneBtn = defaultBtnColor;
    }
    if (highlightColorDoneBtn == null) {
      highlightColorDoneBtn = defaultBtnHighlightColor;
    }
    if (borderRadiusDoneBtn == null) {
      borderRadiusDoneBtn = defaultBtnBorderRadius;
    }

    // Next button
    if (nameNextBtn == null) {
      nameNextBtn = "NEXT";
    }
    if (renderNextBtn == null) {
      renderNextBtn = Text(
        nameNextBtn!,
        style: styleNameDoneBtn,
      );
    }
  }

  void goToTab(index) {
    if (index < tabController!.length) {
      tabController!.animateTo(index);
    }
  }

  @override
  void dispose() {
    super.dispose();
    tabController!.dispose();
  }

  // Checking if tab is animating
  bool isAnimating(value) {
    return tabController!.animation!.value -
            tabController!.animation!.value.truncate() !=
        0;
  }

  bool isRTLLanguage(language) {
    return rtlLanguages.contains(language);
  }

  @override
  Widget build(BuildContext context) {
    // Full screen view
    if (shouldHideStatusBar == true) {
      SystemChrome.setEnabledSystemUIOverlays([]);
    }

    return Scaffold(
      body: DefaultTabController(
        length: lengthSlide,
        child: Stack(
          children: <Widget>[
            TabBarView(
              children: tabs!,
              controller: tabController,
              physics: isScrollable!
                  ? scrollPhysics
                  : NeverScrollableScrollPhysics(),
            ),
            renderBottom(),
          ],
        ),
      ),
      backgroundColor: this.backgroundColorAllSlides ?? Colors.transparent,
    );
  }

  Widget buildSkipButton() {
    if (tabController!.index + 1 == lengthSlide) {
      return Container(width: MediaQuery.of(context).size.width / 4);
    } else {
      return TextButton(
        onPressed: onSkipPress as void Function()?,
        child: renderSkipBtn!,
        style: ButtonStyle(
          foregroundColor: MaterialStateProperty.all<Color?>(colorSkipBtn),
          shape: MaterialStateProperty.all<OutlinedBorder>(
            new RoundedRectangleBorder(
              borderRadius: new BorderRadius.circular(borderRadiusSkipBtn!),
            ),
          ),
          overlayColor:
              MaterialStateProperty.all<Color?>(highlightColorSkipBtn),
        ),
      );
    }
  }

  Widget buildDoneButton() {
    return TextButton(
      onPressed: onDonePress as void Function()?,
      child: renderDoneBtn!,
      style: ButtonStyle(
        foregroundColor: MaterialStateProperty.all<Color?>(colorDoneBtn),
        shape: MaterialStateProperty.all<OutlinedBorder>(
          new RoundedRectangleBorder(
            borderRadius: new BorderRadius.circular(borderRadiusDoneBtn!),
          ),
        ),
        overlayColor: MaterialStateProperty.all<Color?>(highlightColorDoneBtn),
      ),
    );
  }

  Widget buildPrevButton() {
    if (tabController!.index == 0) {
      return Container(width: MediaQuery.of(context).size.width / 4);
    } else {
      return TextButton(
        onPressed: () {
          if (!this.isAnimating(tabController!.animation!.value)) {
            tabController!.animateTo(tabController!.index - 1);
          }
        },
        child: renderPrevBtn!,
        style: ButtonStyle(
          foregroundColor: MaterialStateProperty.all<Color?>(colorPrevBtn),
          shape: MaterialStateProperty.all<OutlinedBorder>(
            new RoundedRectangleBorder(
              borderRadius: new BorderRadius.circular(borderRadiusPrevBtn!),
            ),
          ),
          overlayColor:
              MaterialStateProperty.all<Color?>(highlightColorPrevBtn),
        ),
      );
    }
  }

  Widget buildNextButton() {
    return TextButton(
      onPressed: () {
        if (!this.isAnimating(tabController!.animation!.value)) {
          tabController!.animateTo(tabController!.index + 1);
        }
      },
      child: renderNextBtn!,
      style: ButtonStyle(
        foregroundColor: MaterialStateProperty.all<Color?>(colorDoneBtn),
        shape: MaterialStateProperty.all<OutlinedBorder>(
          new RoundedRectangleBorder(
            borderRadius: new BorderRadius.circular(borderRadiusDoneBtn!),
          ),
        ),
        overlayColor: MaterialStateProperty.all<Color?>(highlightColorDoneBtn),
      ),
    );
  }

  Widget renderBottom() {
    return Positioned(
      child: Column(
        children: [
          Row(
            children: <Widget>[
              // Skip button
              Container(
                alignment: Alignment.center,
                child: isShowSkipBtn!
                    ? buildSkipButton()
                    : (isShowPrevBtn! ? buildPrevButton() : Container()),
                width: isShowSkipBtn!
                    ? widthSkipBtn ?? MediaQuery.of(context).size.width / 4
                    : (isShowPrevBtn!
                        ? widthPrevBtn
                        : MediaQuery.of(context).size.width / 4),
              ),

              // Dot indicator
              Flexible(
                child: isShowDotIndicator!
                    ? Container(
                        child: Stack(
                          children: <Widget>[
                            Row(
                              children: this.renderListDots(),
                              mainAxisAlignment: MainAxisAlignment.center,
                            ),
                            typeDotAnimation == dotSliderAnimation.DOT_MOVEMENT
                                ? Center(
                                    child: Container(
                                      decoration: BoxDecoration(
                                          color: colorActiveDot,
                                          borderRadius: BorderRadius.circular(
                                              sizeDot! / 2)),
                                      width: sizeDot,
                                      height: sizeDot,
                                      margin: EdgeInsets.only(
                                          left: this.isRTLLanguage(
                                                  Localizations.localeOf(
                                                          context)
                                                      .languageCode)
                                              ? marginRightDotFocused
                                              : marginLeftDotFocused,
                                          right: this.isRTLLanguage(
                                                  Localizations.localeOf(
                                                          context)
                                                      .languageCode)
                                              ? marginLeftDotFocused
                                              : marginRightDotFocused),
                                    ),
                                  )
                                : Container()
                          ],
                        ),
                      )
                    : Container(),
              ),

              // Next, Done button
              Container(
                alignment: Alignment.center,
                child: tabController!.index + 1 == lengthSlide
                    ? isShowDoneBtn!
                        ? buildDoneButton()
                        : Container()
                    : isShowNextBtn!
                        ? buildNextButton()
                        : Container(),
                width: widthDoneBtn ?? MediaQuery.of(context).size.width / 4,
                height: 50,
              ),
            ],
          ),
          if (bottomWidget != null) bottomWidget!,
        ],
      ),
      bottom: 10.0,
      left: 10.0,
      right: 10.0,
    );
  }

  List<Widget>? renderListTabs() {
    for (int i = 0; i < lengthSlide; i++) {
      final scrollController = ScrollController();
      scrollControllers.add(scrollController);
      tabs!.add(
        renderTab(
          scrollController,
          slides![i].widgetTitle,
          slides![i].title,
          slides![i].maxLineTitle,
          slides![i].styleTitle,
          slides![i].marginTitle,
          slides![i].widgetDescription,
          slides![i].description,
          slides![i].maxLineTextDescription,
          slides![i].styleDescription,
          slides![i].marginDescription,
          slides![i].pathImage,
          slides![i].widthImage,
          slides![i].heightImage,
          slides![i].foregroundImageFit,
          slides![i].centerWidget,
          slides![i].onCenterItemPress,
          slides![i].backgroundColor,
          slides![i].colorBegin,
          slides![i].colorEnd,
          slides![i].directionColorBegin,
          slides![i].directionColorEnd,
          slides![i].backgroundImage,
          slides![i].backgroundImageFit,
          slides![i].backgroundOpacity,
          slides![i].backgroundOpacityColor,
          slides![i].backgroundBlendMode,
        ),
      );
    }
    return tabs;
  }

  Widget renderTab(
    ScrollController scrollController,

    // Title
    Widget? widgetTitle,
    String? title,
    int? maxLineTitle,
    TextStyle? styleTitle,
    EdgeInsets? marginTitle,

    // Description
    Widget? widgetDescription,
    String? description,
    int? maxLineTextDescription,
    TextStyle? styleDescription,
    EdgeInsets? marginDescription,

    // Image
    String? pathImage,
    double? widthImage,
    double? heightImage,
    BoxFit? foregroundImageFit,

    // Center Widget
    Widget? centerWidget,
    Function? onCenterItemPress,

    // Background color
    Color? backgroundColor,
    Color? colorBegin,
    Color? colorEnd,
    AlignmentGeometry? directionColorBegin,
    AlignmentGeometry? directionColorEnd,

    // Background image
    String? backgroundImage,
    BoxFit? backgroundImageFit,
    double? backgroundOpacity,
    Color? backgroundOpacityColor,
    BlendMode? backgroundBlendMode,
  ) {
    final listView = ListView(
      controller: scrollController,
      children: <Widget>[
        if (title != null && title.isNotEmpty)
          Container(
            // Title
            child: widgetTitle ??
                Text(
                  title,
                  style: styleTitle ??
                      TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 30.0,
                      ),
                  maxLines: maxLineTitle != null ? maxLineTitle : 1,
                  textAlign: TextAlign.center,
                  overflow: TextOverflow.ellipsis,
                ),
            margin: marginTitle ??
                EdgeInsets.only(
                    top: 70.0, bottom: 50.0, left: 20.0, right: 20.0),
          ),

        // Image or Center widget
        GestureDetector(
          child: pathImage != null
              ? Image.asset(
                  pathImage,
                  width: widthImage ?? 200.0,
                  height: heightImage ?? 200.0,
                  fit: foregroundImageFit ?? BoxFit.contain,
                )
              : Center(child: centerWidget ?? Container()),
          onTap: onCenterItemPress as void Function()?,
        ),

        // Description
        Container(
          child: widgetDescription ??
              Text(
                description ?? "",
                style: styleDescription ??
                    TextStyle(color: Colors.white, fontSize: 18.0),
                textAlign: TextAlign.center,
                maxLines: maxLineTextDescription != null
                    ? maxLineTextDescription
                    : 100,
                overflow: TextOverflow.ellipsis,
              ),
          margin:
              marginDescription ?? EdgeInsets.fromLTRB(20.0, 50.0, 20.0, 50.0),
        ),
      ],
    );
    return Stack(
      children: [
        if (backgroundImage != null && backgroundImage.endsWith('.svg'))
          Align(
            alignment: Alignment.center,
            child: SvgPicture.asset(
              backgroundImage,
              fit: backgroundImageFit ?? BoxFit.cover,
            ),
          ),
        Container(
          width: double.infinity,
          height: double.infinity,
          decoration: backgroundImage != null &&
                  !backgroundImage.endsWith('.svg')
              ? BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(backgroundImage),
                    fit: backgroundImageFit ?? BoxFit.cover,
                    colorFilter: ColorFilter.mode(
                      backgroundOpacityColor != null
                          ? backgroundOpacityColor
                              .withOpacity(backgroundOpacity ?? 0.5)
                          : Colors.black.withOpacity(backgroundOpacity ?? 0.5),
                      backgroundBlendMode ?? BlendMode.darken,
                    ),
                  ),
                )
              : backgroundColor != null || colorBegin != null
                  ? BoxDecoration(
                      gradient: LinearGradient(
                        colors: backgroundColor != null
                            ? [backgroundColor, backgroundColor]
                            : [
                                colorBegin ?? Colors.amberAccent,
                                colorEnd ?? Colors.amberAccent
                              ],
                        begin: directionColorBegin ?? Alignment.topLeft,
                        end: directionColorEnd ?? Alignment.bottomRight,
                      ),
                    )
                  : null,
          child: Container(
            margin: EdgeInsets.only(bottom: 60.0),
            child: this.verticalScrollbarBehavior != scrollbarBehavior.HIDE
                ? Platform.isIOS
                    ? CupertinoScrollbar(
                        child: listView,
                        controller: scrollController,
                        isAlwaysShown: this.verticalScrollbarBehavior ==
                            scrollbarBehavior.SHOW_ALWAYS)
                    : Scrollbar(
                        child: listView,
                        controller: scrollController,
                        isAlwaysShown: this.verticalScrollbarBehavior ==
                            scrollbarBehavior.SHOW_ALWAYS)
                : listView,
          ),
        ),
      ],
    );
  }

  List<Widget> renderListDots() {
    dots.clear();
    for (int i = 0; i < lengthSlide; i++) {
      dots.add(renderDot(sizeDots[i]!, colorDot, opacityDots[i]));
    }
    return dots;
  }

  Widget renderDot(double radius, Color? color, double opacity) {
    return Opacity(
      child: Container(
        decoration: BoxDecoration(
            color: color, borderRadius: BorderRadius.circular(radius / 2)),
        width: radius,
        height: radius,
        margin: EdgeInsets.only(left: radius / 2, right: radius / 2),
      ),
      opacity: opacity,
    );
  }
}
