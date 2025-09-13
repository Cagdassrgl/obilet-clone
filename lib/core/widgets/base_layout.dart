import 'package:flutter/material.dart';
import 'package:obilet_clone/core/extentions/context_extention.dart';
import 'package:obilet_clone/core/extentions/widget_extensions.dart';

class BaseLayout extends StatefulWidget {
  final Widget body;
  final String? title;
  final List<Widget>? actions;
  final Widget? floatingActionButton;
  final bool showAppBar;
  final PreferredSizeWidget? customAppBar;
  final int? bottomBarCurrentIndex;
  final bool showBottomNavigationBar;
  final Widget? customBottomNavigationBar;
  final void Function(int index)? onBottomBarTap;
  final Widget? drawer;
  final Widget? endDrawer;
  final Color? backgroundColor;

  const BaseLayout({
    super.key,
    required this.body,
    this.title,
    this.actions,
    this.floatingActionButton,
    this.showAppBar = true,
    this.customAppBar,
    this.bottomBarCurrentIndex,
    this.showBottomNavigationBar = true,
    this.customBottomNavigationBar,
    this.onBottomBarTap,
    this.drawer,
    this.endDrawer,
    this.backgroundColor,
  });

  @override
  State<BaseLayout> createState() => _BaseLayoutState();
}

class _BaseLayoutState extends State<BaseLayout> {
  var _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(context),
      body: widget.body,
      floatingActionButton: widget.floatingActionButton,
      bottomNavigationBar: _buildBottomNavigationBar(),
      drawer: widget.drawer,
      endDrawer: widget.endDrawer,
      backgroundColor: widget.backgroundColor,
    );
  }

  PreferredSizeWidget? _buildAppBar(BuildContext context) {
    if (!widget.showAppBar) return null;

    if (widget.customAppBar != null) return widget.customAppBar;

    return AppBar(
      title: Text(
        widget.title ?? 'TicketUp',
      ).headlineMedium(context, overrideStyle: TextStyle(color: context.colorScheme.onPrimary)),
      actions: widget.actions,
    );
  }

  Widget? _buildBottomNavigationBar() {
    if (!widget.showBottomNavigationBar) return null;

    if (widget.customBottomNavigationBar != null) return widget.customBottomNavigationBar;

    return BottomNavigationBar(
      currentIndex: _currentIndex,
      onTap: (value) {
        setState(() {
          _currentIndex = value;
        });
      },
      items: [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Anasayfa'),
        BottomNavigationBarItem(icon: Icon(Icons.airplane_ticket), label: 'Biletlerim'),
      ],
    );
  }
}
