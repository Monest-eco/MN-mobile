import 'package:flutter/material.dart';

typedef GalleryWidgetBuilder = Widget Function();

/// Helper to build gallery.
class GalleryScaffold extends StatefulWidget {
  /// The widget used for leading in a [ListTile].
  final Widget listTileIcon;
  final String title;
  final String subtitle;
  final GalleryWidgetBuilder childBuilder;

  const GalleryScaffold({
    Key? key,
    required this.listTileIcon,
    required this.title,
    required this.subtitle,
    required this.childBuilder,
  }): super(key: key);

  /// Gets the gallery
  Widget buildGalleryListTile(BuildContext context) => ListTile(
      leading: listTileIcon,
      title: Text(title),
      subtitle: Text(subtitle),
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (_) => this));
      });

  @override
  _GalleryScaffoldState createState() => _GalleryScaffoldState();
}

class _GalleryScaffoldState extends State<GalleryScaffold> {
  void _handleButtonPress() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.title)),
      body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(children: <Widget>[
            SizedBox(height: 250.0, child: widget.childBuilder()),
          ])),
      floatingActionButton: FloatingActionButton(
          onPressed: _handleButtonPress, child: const Icon(Icons.refresh)),
    );
  }
}