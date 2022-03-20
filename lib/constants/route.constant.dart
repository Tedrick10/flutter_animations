// Flutter: Existing Libraries
import 'package:flutter/material.dart';
import 'package:flutter_snake_navigationbar/flutter_snake_navigationbar.dart';

// Pages: To Delcare Routes
//// Main Pages
import '../pages/home.page.dart';
import '../pages/material_widgets_list.page.dart';
import '../pages/drawing_based_animation_list.page.dart';
import '../pages/code_based_animation_list.page.dart';
import '../pages/wish_list.page.dart';
//// Material Widgets Pages
import '../pages/material_widgets_pages/stepper.page.dart';
import '../pages/material_widgets_pages/transform.page.dart';
//////// Transform Pages
import '../pages/material_widgets_pages/transform_pages/scale_transform.page.dart';
import '../pages/material_widgets_pages/transform_pages/skew_transform.page.dart';
//// Code Based Animation Pages
import '../pages/code_based_animation_pages/animated_align.page.dart';
import '../pages/code_based_animation_pages/animated_builder.page.dart';
import '../pages/code_based_animation_pages/animated_container.page.dart';
import '../pages/code_based_animation_pages/animated_cross_fade.page.dart';
import '../pages/code_based_animation_pages/animated_default_text_style.page.dart';
import '../pages/code_based_animation_pages/animated_list_state.page.dart';
import '../pages/code_based_animation_pages/animated_model_barrier.page.dart';
//// Drawing Based Animation Pages
import "../pages/drawing_based_animation_pages/curved_navigation_bar.page.dart";
import "../pages/drawing_based_animation_pages/flip_card.page.dart";
import '../pages/drawing_based_animation_pages/fl_chart.page.dart';
import '../pages/drawing_based_animation_pages/flutter_spinkit.page.dart';
import '../pages/drawing_based_animation_pages/accordion.page.dart';
import '../pages/drawing_based_animation_pages/flutter_snake_navigationbar.page.dart';
import '../pages/drawing_based_animation_pages/implicitly_animated_reorderable_list.page.dart';
import '../pages/drawing_based_animation_pages/delayed_display.page.dart';
import '../pages/drawing_based_animation_pages/pie_chart.page.dart';
import '../pages/drawing_based_animation_pages/get_widget.page.dart';
import '../pages/drawing_based_animation_pages/flashy_tab_bar.page.dart';
import '../pages/drawing_based_animation_pages/animated_search_bar.page.dart';
import '../pages/drawing_based_animation_pages/bubble_lens.page.dart';
import '../pages/drawing_based_animation_pages/card_swiper.page.dart';
import '../pages/drawing_based_animation_pages/photo_view.page.dart';
//// Wish Pages
////// Trulia Example Pages
import '../pages/wish_pages/trulia_example_pages/trulia_index.page.dart';
import '../pages/wish_pages/trulia_example_pages/trulia_photo_list.page.dart';
import '../pages/wish_pages/trulia_example_pages/trulia_carousel.page.dart';
////// iMyanmar House Example Pages
import '../pages/wish_pages/imyanmar_house_pages/imyanmar_house_index.page.dart';
import '../pages/wish_pages/imyanmar_house_pages/imyanmar_house_photo_view.page.dart';

// Route List: Mapping
Map<String, Widget Function(BuildContext)> routeList = {
  // Main Pages
  HomePage.routeName: (_) => HomePage(),
  MaterialWidgetsListPage.routeName: (_) => MaterialWidgetsListPage(),
  DrawingBasedAnimationListPage.routeName: (_) =>
      DrawingBasedAnimationListPage(),
  CodeBasedAnimationListPage.routeName: (_) => CodeBasedAnimationListPage(),
  WishListPage.routeName: (_) => WishListPage(),
  // Material Widgets Pages
  StepperPage.routeName: (_) => StepperPage(),
  TransformPage.routeName: (_) => TransformPage(),
  //// Transform Pages
  ScaleTransformPage.routeName: (_) => ScaleTransformPage(),
  SkewTransformPage.routeName: (_) => SkewTransformPage(),
  // Code Based Animation Pages
  AnimatedAlignPage.routeName: (_) => AnimatedAlignPage(),
  AnimatedBuilderPage.routeName: (_) => AnimatedBuilderPage(),
  AnimatedContainerPage.routeName: (_) => AnimatedContainerPage(),
  AnimatedCrossFadePage.routeName: (_) => AnimatedCrossFadePage(),
  AnimatedDefaultTextStylePage.routeName: (_) => AnimatedDefaultTextStylePage(),
  AnimatedListStatePage.routeName: (_) => AnimatedListStatePage(),
  AnimatedModelBarrierPage.routeName: (_) => AnimatedModelBarrierPage(),
  // Drawing Based Animation Pages
  CurvedNavigationBarExamplePage.routeName: (_) =>
      CurvedNavigationBarExamplePage(),
  FlipCardPage.routeName: (_) => FlipCardPage(),
  FlChartPage.routeName: (_) => FlChartPage(),
  FlutterSpinKitPage.routeName: (_) => FlutterSpinKitPage(),
  AccordionPage.routeName: (_) => AccordionPage(),
  FlutterSnakeNavigationBarPage.routeName: (_) =>
      FlutterSnakeNavigationBarPage(),
  ImplicitlyAnimatedReorderableListPage.routeName: (_) =>
      ImplicitlyAnimatedReorderableListPage(),
  DelayedDisplayPage.routeName: (_) => DelayedDisplayPage(),
  PieChartPage.routeName: (_) => PieChartPage(),
  GetWidgetPage.routeName: (_) => GetWidgetPage(),
  FlashyTabBarPage.routeName: (_) => FlashyTabBarPage(),
  AnimatedSearchBarPage.routeName: (_) => AnimatedSearchBarPage(),
  BubbleLensPage.routeName: (_) => BubbleLensPage(),
  CardSwiperPage.routeName: (_) => CardSwiperPage(),
  PhotoViewPage.routeName: (_) => PhotoViewPage(),
  // Wish Pages
  //// Trulia Example Pages
  TruliaIndexPage.routeName: (_) => TruliaIndexPage(),
  TruliaPhotoListPage.routeName: (_) => TruliaPhotoListPage(),
  TruliaCarouselPage.routeName: (_) => TruliaCarouselPage(),
  //// iMyanmar House Example Pages
  IMyanmarHouseIndexPage.routeName: (_) => IMyanmarHouseIndexPage(),
  IMyanmarHousePhotoViewPage.routeName: (_) => IMyanmarHousePhotoViewPage(),
};
