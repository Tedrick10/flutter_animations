// Models
import '../models/button.model.dart';

// Pages
//// Material Widget Pages
import "../pages/material_widgets_pages/stepper.page.dart";
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
import '../pages/drawing_based_animation_pages/flip_card.page.dart';
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
// Wish List Pages
import '../pages/wish_pages/trulia_example_pages/trulia_index.page.dart';
import '../pages/wish_pages/imyanmar_house_pages/imyanmar_house_index.page.dart';

// Material Widget Pages List
List<ButtonModel> materialWidgetsList = [
  ButtonModel(
    title: StepperPage.title,
    routeName: StepperPage.routeName,
  ),
  ButtonModel(
    title: TransformPage.title,
    routeName: TransformPage.routeName,
  ),
];

// Code Based Animation Pages List
List<ButtonModel> codeBasedAnimationsList = [
  ButtonModel(
    title: AnimatedAlignPage.title,
    routeName: AnimatedAlignPage.routeName,
  ),
  ButtonModel(
    title: AnimatedBuilderPage.title,
    routeName: AnimatedBuilderPage.routeName,
  ),
  ButtonModel(
    title: AnimatedContainerPage.title,
    routeName: AnimatedContainerPage.routeName,
  ),
  ButtonModel(
    title: AnimatedCrossFadePage.title,
    routeName: AnimatedCrossFadePage.routeName,
  ),
  ButtonModel(
    title: AnimatedDefaultTextStylePage.title,
    routeName: AnimatedDefaultTextStylePage.routeName,
  ),
  ButtonModel(
    title: AnimatedListStatePage.title,
    routeName: AnimatedListStatePage.routeName,
  ),
  // ButtonModel(
  //   title: AnimatedModelBarrierPage.title,
  //   routeName: AnimatedModelBarrierPage.routeName,
  // ),
];

// Drawing Based Animation Pages List
List<ButtonModel> drawingBasedAnimationsList = [
  ButtonModel(
    title: CurvedNavigationBarExamplePage.title,
    routeName: CurvedNavigationBarExamplePage.routeName,
  ),
  ButtonModel(
    title: FlutterSnakeNavigationBarPage.title,
    routeName: FlutterSnakeNavigationBarPage.routeName,
  ),
  ButtonModel(
    title: FlashyTabBarPage.title,
    routeName: FlashyTabBarPage.routeName,
  ),
  ButtonModel(
    title: FlipCardPage.title,
    routeName: FlipCardPage.routeName,
  ),
  // ButtonModel(
  //   title: FlChartPage.title,
  //   routeName: FlChartPage.routeName,
  // ),
  ButtonModel(
    title: FlutterSpinKitPage.title,
    routeName: FlutterSpinKitPage.routeName,
  ),
  ButtonModel(
    title: AccordionPage.title,
    routeName: AccordionPage.routeName,
  ),
  // ButtonModel(
  //   title: ImplicitlyAnimatedReorderableListPage.title,
  //   routeName: ImplicitlyAnimatedReorderableListPage.routeName,
  // ),
  ButtonModel(
    title: DelayedDisplayPage.title,
    routeName: DelayedDisplayPage.routeName,
  ),
  ButtonModel(
    title: PieChartPage.title,
    routeName: PieChartPage.routeName,
  ),
  // ButtonModel(
  //   title: GetWidgetPage.title,
  //   routeName: GetWidgetPage.routeName,
  // ),
  ButtonModel(
    title: AnimatedSearchBarPage.title,
    routeName: AnimatedSearchBarPage.routeName,
  ),
  // ButtonModel(
  //   title: BubbleLensPage.title,
  //   routeName: BubbleLensPage.routeName,
  // ),
  // ButtonModel(
  //   title: CardSwiperPage.title,
  //   routeName: CardSwiperPage.routeName,
  // ),
  ButtonModel(
    title: PhotoViewPage.title,
    routeName: PhotoViewPage.routeName,
  ),
];

// WishList Page List: Constants
List<ButtonModel> wishPagesList = [
  ButtonModel(
    title: TruliaIndexPage.title,
    routeName: TruliaIndexPage.routeName,
  ),
  ButtonModel(
    title: IMyanmarHouseIndexPage.title,
    routeName: IMyanmarHouseIndexPage.routeName,
  ),
];

// Transform Widgets List: Constants
List<ButtonModel> transformWidgetsList = [
  ButtonModel(
    title: ScaleTransformPage.title,
    routeName: ScaleTransformPage.routeName,
  ),
  ButtonModel(
    title: SkewTransformPage.title,
    routeName: SkewTransformPage.routeName,
  ),
];

// PhotoUrlsList: Constants
List<String> photoUrlsList = [
  "https://images.unsplash.com/photo-1599809275671-b5942cabc7a2?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1700&q=80",
  "https://images.unsplash.com/photo-1592595896551-12b371d546d5?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1700&q=80",
  "https://images.unsplash.com/photo-1494526585095-c41746248156?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1700&q=80",
  "https://images.unsplash.com/photo-1580587771525-78b9dba3b914?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1600&q=80",
  "https://images.unsplash.com/photo-1564013799919-ab600027ffc6?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1700&q=80",
  "https://images.unsplash.com/photo-1416331108676-a22ccb276e35?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1700&q=80",
  "https://images.unsplash.com/photo-1512917774080-9991f1c4c750?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1700&q=80",
  "https://images.unsplash.com/photo-1582268611958-ebfd161ef9cf?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1700&q=80",
  "https://images.unsplash.com/photo-1605146769289-440113cc3d00?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1700&q=80",
  "https://images.unsplash.com/photo-1605276374104-dee2a0ed3cd6?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1700&q=80",
];
