part of masamune;

@immutable
class UICarousel extends StatefulWidget {
  const UICarousel({
    required this.items,
    this.controller,
    this.showIndicator = true,
    this.indicatorPadding = const EdgeInsets.symmetric(vertical: 4.0),
    this.height,
    this.aspectRatio = 16 / 9,
    this.viewportFraction = 0.8,
    this.initialPage = 0,
    this.enableInfiniteScroll = true,
    this.reverse = false,
    this.autoPlay = false,
    this.autoPlayInterval = const Duration(seconds: 4),
    this.autoPlayAnimationDuration = const Duration(milliseconds: 800),
    this.autoPlayCurve = Curves.fastOutSlowIn,
    this.enlargeCenterPage = false,
    this.onPageChanged,
    this.onScrolled,
    this.scrollPhysics,
    this.pageSnapping = true,
    this.scrollDirection = Axis.horizontal,
    this.pauseAutoPlayOnTouch = true,
    this.pauseAutoPlayOnManualNavigate = true,
    this.pauseAutoPlayInFiniteScroll = false,
    this.pageViewKey,
    this.enlargeStrategy = CenterPageEnlargeStrategy.scale,
    this.disableCenter = false,
    this.indicatorColor,
    this.activeIndicatorColor,
  });

  final List<Widget> items;
  final CarouselController? controller;
  final bool showIndicator;
  final Color? indicatorColor;
  final Color? activeIndicatorColor;
  final EdgeInsetsGeometry indicatorPadding;

  /// Set carousel height and overrides any existing [aspectRatio].
  final double? height;

  /// Aspect ratio is used if no height have been declared.
  ///
  /// Defaults to 16:9 aspect ratio.
  final double aspectRatio;

  /// The fraction of the viewport that each page should occupy.
  ///
  /// Defaults to 0.8, which means each page fills 80% of the carousel.
  final double viewportFraction;

  /// The initial page to show when first creating the [CarouselSlider].
  ///
  /// Defaults to 0.
  final int initialPage;

  ///Determines if carousel should loop infinitely or be limited to item length.
  ///
  ///Defaults to true, i.e. infinite loop.
  final bool enableInfiniteScroll;

  /// Reverse the order of items if set to true.
  ///
  /// Defaults to false.
  final bool reverse;

  /// Enables auto play, sliding one page at a time.
  ///
  /// Use [autoPlayInterval] to determent the frequency of slides.
  /// Defaults to false.
  final bool autoPlay;

  /// Sets Duration to determent the frequency of slides when
  ///
  /// [autoPlay] is set to true.
  /// Defaults to 4 seconds.
  final Duration autoPlayInterval;

  /// The animation duration between two transitioning pages while in auto playback.
  ///
  /// Defaults to 800 ms.
  final Duration autoPlayAnimationDuration;

  /// Determines the animation curve physics.
  ///
  /// Defaults to [Curves.fastOutSlowIn].
  final Curve autoPlayCurve;

  /// Determines if current page should be larger then the side images,
  /// creating a feeling of depth in the carousel.
  ///
  /// Defaults to false.
  final bool? enlargeCenterPage;

  /// The axis along which the page view scrolls.
  ///
  /// Defaults to [Axis.horizontal].
  final Axis scrollDirection;

  /// Called whenever the page in the center of the viewport changes.
  final Function(int index, CarouselPageChangedReason reason)? onPageChanged;

  /// Called whenever the carousel is scrolled
  final ValueChanged<double?>? onScrolled;

  /// How the carousel should respond to user input.
  ///
  /// For example, determines how the items continues to animate after the
  /// user stops dragging the page view.
  ///
  /// The physics are modified to snap to page boundaries using
  /// [PageScrollPhysics] prior to being used.
  ///
  /// Defaults to matching platform conventions.
  final ScrollPhysics? scrollPhysics;

  /// Set to false to disable page snapping, useful for custom scroll behavior.
  ///
  /// Default to `true`.
  final bool pageSnapping;

  /// If `true`, the auto play function will be paused when user is interacting with
  /// the carousel, and will be resumed when user finish interacting.
  /// Default to `true`.
  final bool pauseAutoPlayOnTouch;

  /// If `true`, the auto play function will be paused when user is calling
  /// pageController's `nextPage` or `previousPage` or `animateToPage` method.
  /// And after the animation complete, the auto play will be resumed.
  /// Default to `true`.
  final bool pauseAutoPlayOnManualNavigate;

  /// If `enableInfiniteScroll` is `false`, and `autoPlay` is `true`, this option
  /// decide the carousel should go to the first item when it reach the last item or not.
  /// If set to `true`, the auto play will be paused when it reach the last item.
  /// If set to `false`, the auto play function will animate to the first item when it was
  /// in the last item.
  final bool pauseAutoPlayInFiniteScroll;

  /// Pass a `PageStoragekey` if you want to keep the pageview's position when it was recreated.
  final PageStorageKey? pageViewKey;

  /// Use `enlargeStrategy` to determine which method to enlarge the center page.
  final CenterPageEnlargeStrategy enlargeStrategy;

  /// Whether or not to disable the `Center` widget for each slide.
  final bool disableCenter;

  @override
  State<StatefulWidget> createState() => _UICarouselState();
}

class _UICarouselState extends State<UICarousel> {
  int _current = 0;
  CarouselController? _controller;
  CarouselController? get effectiveController =>
      widget.controller ?? _controller;

  @override
  void initState() {
    super.initState();
    if (widget.controller == null) {
      _controller = CarouselController();
    }
  }

  @override
  Widget build(BuildContext context) {
    final indicatorColor =
        widget.indicatorColor ?? context.theme.backgroundColor;
    final activeIndicatorColor =
        widget.activeIndicatorColor ?? context.theme.primaryColor;
    return Stack(
      children: [
        CarouselSlider(
          items: widget.items,
          options: CarouselOptions(
            height: widget.height,
            aspectRatio: widget.aspectRatio,
            viewportFraction: widget.viewportFraction,
            initialPage: widget.initialPage,
            enableInfiniteScroll: widget.enableInfiniteScroll,
            reverse: widget.reverse,
            autoPlay: widget.autoPlay,
            autoPlayInterval: widget.autoPlayInterval,
            autoPlayAnimationDuration: widget.autoPlayAnimationDuration,
            autoPlayCurve: widget.autoPlayCurve,
            enlargeCenterPage: widget.enlargeCenterPage,
            onPageChanged: (index, reason) {
              widget.onPageChanged?.call(index, reason);
              setState(() {
                _current = index;
              });
            },
            onScrolled: widget.onScrolled,
            scrollPhysics: widget.scrollPhysics,
            pageSnapping: widget.pageSnapping,
            scrollDirection: widget.scrollDirection,
            pauseAutoPlayOnTouch: widget.pauseAutoPlayOnTouch,
            pauseAutoPlayOnManualNavigate: widget.pauseAutoPlayOnManualNavigate,
            pauseAutoPlayInFiniteScroll: widget.pauseAutoPlayInFiniteScroll,
            pageViewKey: widget.pageViewKey,
            enlargeStrategy: widget.enlargeStrategy,
            disableCenter: widget.disableCenter,
          ),
          carouselController: effectiveController,
        ),
        if (widget.showIndicator && widget.items.isNotEmpty)
          Positioned.fill(
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: widget.indicatorPadding,
                child: DotsIndicator(
                  onTap: (pos) {
                    effectiveController?.animateToPage(pos.toInt());
                  },
                  dotsCount: widget.items.length,
                  position: _current.toDouble(),
                  decorator: DotsDecorator(
                    color: indicatorColor.withOpacity(0.8),
                    activeColor: activeIndicatorColor,
                  ),
                ),
              ),
            ),
          ),
      ],
    );
  }
}
