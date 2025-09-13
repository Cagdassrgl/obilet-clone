import 'package:flutter/material.dart';
import 'package:obilet_clone/core/extentions/context_extention.dart';
import 'package:obilet_clone/core/extentions/widget_extensions.dart';

class BaseScaffold extends StatefulWidget {
  final Widget body;
  final String? title;
  final List<Widget>? actions;
  final Widget? floatingActionButton;
  final bool showAppBar;
  final PreferredSizeWidget? customAppBar;
  final bool showBottomNavigationBar;
  final Widget? customBottomNavigationBar;

  const BaseScaffold({
    super.key,
    required this.body,
    this.title,
    this.actions,
    this.floatingActionButton,
    this.showAppBar = true,
    this.showBottomNavigationBar = true,
    this.customBottomNavigationBar,
    this.customAppBar,
  });

  @override
  State<BaseScaffold> createState() => _BaseScaffoldState();
}

class _BaseScaffoldState extends State<BaseScaffold> {
  var _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(context),
      body: widget.body,
      floatingActionButton: widget.floatingActionButton,
      bottomNavigationBar: _buildBottomNavigationBar(),
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
