import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:math';
import 'dart:async';
import 'package:spinners_driver/src/presentation/views/home/widgets/notifications/notification_card.dart';

class StackedCardList extends StatefulWidget {
  const StackedCardList({super.key, required this.notifications, required this.notificationsNotifier});

  final List<String> notifications;
  final ValueNotifier notificationsNotifier;

  @override
  State<StackedCardList> createState() => _StackedCardListState();
}

class _StackedCardListState extends State<StackedCardList> with TickerProviderStateMixin {
  late AnimationController _controller, _downDragController;
  late Animation<double> _yOffsetAnimation, _rotationAnimation, _animation, _downDragAnimation;
  late List<String> _notifications;

  double _startAnimationValue = 0.0, _dragStartPosition = 0.0, _dragOffset = 0.0;
  bool _isCardSwitched = false, _hasReachedHalf = false, _isAnimationBlocked = false, _shouldPlayVibration = true;
  Timer? _debounceTimer;

  // Card cache
  final Map<int, Widget> _cardCache = {};
  Widget? _poppedCardWidget;
  int? poppedCardIndex;

  // Constants
  static const double maxDragDistance = 220.0, dragDownLimit = -40.0, thresholdValue = 0.3;
  static const Duration animationDuration = Duration(milliseconds: 600), downDragDuration = Duration(milliseconds: 200);
  static const List<double> cardOffsets = [-12.0, -6.0, 0.0];
  static const List<double> cardScales = [0.96, 0.98, 1.0];

  @override
  void initState() {
    super.initState();
    _notifications = List.from(widget.notifications);
    _initializeAnimations();
    _setupAnimationListeners();
    _updateCardCache();
  }

  void _initializeAnimations() {
    _controller = AnimationController(duration: animationDuration, vsync: this);
    _animation = CurvedAnimation(parent: _controller, curve: Curves.easeInOut);

    _yOffsetAnimation = TweenSequence<double>([
      TweenSequenceItem(tween: Tween(begin: 0.0, end: 0.5), weight: 45.0),
      TweenSequenceItem(tween: Tween(begin: 0.5, end: 0.0), weight: 55.0),
    ]).animate(_animation);

    _rotationAnimation = Tween(begin: 0.0, end: -180.0).animate(_animation);

    _downDragController = AnimationController(duration: downDragDuration, vsync: this);
    _downDragAnimation = Tween(begin: 0.0, end: 0.0).animate(_downDragController)..addListener(() => _dragOffset = _downDragAnimation.value);
  }

  void _setupAnimationListeners() {
    _controller.addListener(() {
      if (_notifications.length <= 1) return _controller.reset();

      if (!_isCardSwitched && _controller.value >= 0.5 && !(_debounceTimer?.isActive ?? false)) {
        _switchCard();
      }

      if (_controller.value == 1.0) {
        _isCardSwitched = false;
        _controller.reset();
        _hasReachedHalf = false;
      }
    });
  }

  void _switchCard() {
    final firstNotification = _notifications.removeAt(0);
    poppedCardIndex = widget.notifications.indexOf(firstNotification);
    _poppedCardWidget = NotificationCard(notification: firstNotification, isTopCard: true, isLastCard: false,);
    _notifications.add(firstNotification);

    _playHapticFeedback([HapticFeedback.lightImpact], [250], [HapticFeedback.selectionClick]);
    _isCardSwitched = true;
    _updateCardCache();
    _debounceTimer = Timer(const Duration(milliseconds: 300), () {});
  }

  void _updateCardCache() {
    _cardCache.clear();
    for (int i = 0; i < min(_notifications.length, 3); i++) {
      final notification = _notifications[i];
      // final index = widget.notifications.indexOf(notification);
      _cardCache[i] = NotificationCard(
        notification: notification,
        isTopCard: i == 0,
        isLastCard: i == _notifications.length - 1,
      );
    }
  }

  void _playHapticFeedback(List<Function> feedbacks, List<int> delays, List<Function> delayedFeedbacks) {
    for (int i = 0; i < feedbacks.length; i++) {
      if (i == 0) {
        feedbacks[i]();
      } else {
        Future.delayed(Duration(milliseconds: delays[i - 1]), () => delayedFeedbacks[i - 1]());
      }
    }
  }

  // Gesture handlers - consolidated logic
  void _onVerticalDragStart(DragStartDetails details) {
    if (_controller.isAnimating || _downDragController.isAnimating || _notifications.length == 1) return;

    _isAnimationBlocked = false;
    _startAnimationValue = _controller.value;
    _dragStartPosition = details.globalPosition.dy;
    _controller.stop(canceled: false);
    _downDragController.stop();
    _hasReachedHalf = false;
  }

  void _onVerticalDragUpdate(DragUpdateDetails details) {
    if (_controller.isAnimating || _downDragController.isAnimating || _hasReachedHalf || _isAnimationBlocked || _notifications.length == 1) {
      return;
    }

    final dragDistance = _dragStartPosition - details.globalPosition.dy;

    if (dragDistance >= 0) {
      _handleUpwardDrag(dragDistance);
    } else {
      _handleDownwardDrag(dragDistance);
    }
  }

  void _handleUpwardDrag(double dragDistance) {
    final dragFraction = dragDistance / maxDragDistance;
    final newValue = (_startAnimationValue + dragFraction).clamp(0.0, 1.0);
    _controller.value = newValue;
    _dragOffset = 0.0;

    if (_controller.value >= 0.5 && !_hasReachedHalf) {
      _hasReachedHalf = true;
      _animateToCompletion();
    }
  }

  void _handleDownwardDrag(double dragDistance) {
    _controller.value = _startAnimationValue;
    final downDragOffset = dragDistance.clamp(dragDownLimit, 0.0);
    _dragOffset = -downDragOffset;

    if (downDragOffset == dragDownLimit && _shouldPlayVibration) {
      _playHapticFeedback([HapticFeedback.lightImpact], [100, 300], [HapticFeedback.lightImpact, HapticFeedback.mediumImpact]);
      _shouldPlayVibration = false;
    }
  }

  void _onVerticalDragEnd(DragEndDetails details) {
    if (_controller.isAnimating || _downDragController.isAnimating || _isAnimationBlocked || _notifications.length == 1) {
      return;
    }

    if (_dragOffset != 0.0) {
      _animateDownDragReturn();
    } else if (!_hasReachedHalf) {
      _controller.value >= thresholdValue ? _animateToCompletion() : _animateToStart();
    }
    _shouldPlayVibration = true;
  }

  void _animateToCompletion() {
    final remaining = 1.0 - _controller.value;
    final duration = (animationDuration.inMilliseconds * remaining).round();
    if (duration > 0) {
      _controller.animateTo(1.0, duration: Duration(milliseconds: duration), curve: Curves.easeOut);
      _isAnimationBlocked = true;
    } else {
      _controller.value = 1.0;
    }
  }

  void _animateToStart() {
    final duration = (animationDuration.inMilliseconds * _controller.value).round();
    if (duration > 0) {
      _controller.animateBack(0.0, duration: Duration(milliseconds: duration), curve: Curves.easeOut);
    } else {
      _controller.value = 0.0;
    }
  }

  void _animateDownDragReturn() {
    _downDragAnimation = Tween(begin: _dragOffset, end: 0.0).animate(CurvedAnimation(parent: _downDragController, curve: Curves.easeOutCubic));
    _downDragController.forward(from: 0.0);
  }

  @override
  Widget build(BuildContext context) {
    return RepaintBoundary(
      child: GestureDetector(
        behavior: HitTestBehavior.translucent,
        onVerticalDragStart: _onVerticalDragStart,
        onVerticalDragUpdate: _onVerticalDragUpdate,
        onVerticalDragEnd: _onVerticalDragEnd,
        child: AnimatedBuilder(
          animation: Listenable.merge([_controller, _downDragController]),
          builder: (context, child) => _buildCardStack(),
        ),
      ),
    );
  }

  Widget _buildCardStack() {
    final yOffset = _calculateTotalYOffset();
    final rotation = _rotationAnimation.value;
    final cardCount = min(_notifications.length, 3);

    if (_notifications.length == 1) {
      return Stack(alignment: Alignment.center, children: [_cardCache[0] ?? const SizedBox.shrink()]);
    }

    final stackChildren = <Widget>[];
    final range = _isCardSwitched ? List.generate(cardCount, (i) => i) : List.generate(cardCount, (i) => cardCount - 1 - i);

    for (final i in range) {
      stackChildren.add(i == 0 ? _buildTopCard(yOffset, rotation) : _buildCard(i));
    }

    return Stack(alignment: Alignment.center, children: stackChildren);
  }

  double _calculateTotalYOffset() {
    var totalYOffset = -_yOffsetAnimation.value * maxDragDistance + (_downDragController.isAnimating ? _downDragAnimation.value : _dragOffset);

    if (_controller.value >= 0.3) {
      totalYOffset += _notifications.length == 2 ? cardOffsets[1] : cardOffsets[0];
    }
    return totalYOffset;
  }

  Widget _buildTopCard(double yOffset, double rotation) {
    final cardWidget = _isCardSwitched && _notifications.length > 1 ? (_poppedCardWidget ?? const SizedBox.shrink()) : (_cardCache[0] ?? const SizedBox.shrink());

    return AnimatedBuilder(
      animation: _controller,
      builder: (context, child) {
        final scale = _calculateTopCardScale();
        return Transform(
          alignment: Alignment.center,
          transform: Matrix4.identity()
            ..translate(0.0, yOffset)
            ..translate(0.0, _isCardSwitched ? (-cardOffsets[0]) * (((rotation) + 180) / 90) : 0)
            ..setEntry(3, 2, 0.001)
            ..rotateX(rotation * pi / 180)
            ..scale(scale, scale),
          child: child,
        );
      },
      child: cardWidget,
    );
  }

  double _calculateTopCardScale() {
    final controllerValue = _controller.value;
    final isTwo = _notifications.length == 2;
    final threshold = isTwo ? 0.45 : 0.4;
    final scaleReduction = isTwo ? 0.02 : 0.04;
    final range = isTwo ? 0.05 : 0.1;

    if (controllerValue <= 0.5 && _notifications.length > 1) {
      if (controllerValue >= threshold) {
        final progress = (controllerValue - threshold) / range;
        return 1.0 - scaleReduction * progress;
      }
      return 1.0;
    }
    return isTwo ? 0.98 : 0.96;
  }

  Widget _buildCard(int index) {
    if (_notifications.length <= 1 || index >= _notifications.length) return const SizedBox.shrink();

    Widget? cardWidget;
    if (_isCardSwitched) {
      cardWidget = index == 1 ? _cardCache[0] : (index == 2 ? _cardCache[1] : null);
    } else {
      cardWidget = _cardCache[index];
    }

    return cardWidget == null
        ? const SizedBox.shrink()
        : AnimatedBuilder(
            animation: _controller,
            builder: (context, child) {
              final transforms = _calculateCardTransforms(index);
              return Transform(
                alignment: Alignment.center,
                transform: Matrix4.identity()
                  ..translate(0.0, transforms['yOffset']!)
                  ..scale(transforms['scale'], transforms['scale']),
                child: child,
              );
            },
            child: cardWidget,
          );
  }

  Map<String, double> _calculateCardTransforms(int index) {
    final controllerValue = _controller.value;
    final isTwo = _notifications.length == 2;
    final initialOffset = index == 1 ? cardOffsets[1] : cardOffsets[0];
    final initialScale = index == 1 ? cardScales[1] : cardScales[0];
    final targetScale = index == 1 ? cardScales[2] : cardScales[1];

    double yOffset = initialOffset, scale = initialScale;

    if (controllerValue <= 0.5) {
      final progress = controllerValue / 0.5;
      yOffset = initialOffset - (isTwo ? cardOffsets[1] : cardOffsets[0]) * progress;
    } else {
      final progress = Curves.easeOut.transform((controllerValue - 0.5) / 0.5);
      yOffset = initialOffset - (isTwo ? cardOffsets[1] : cardOffsets[0]) + cardOffsets[2] * progress;
      scale = initialScale + (targetScale - initialScale) * progress;
    }

    return {'yOffset': yOffset, 'scale': scale};
  }

  @override
  void dispose() {
    _controller.dispose();
    _downDragController.dispose();
    _debounceTimer?.cancel();
    super.dispose();
  }
}
