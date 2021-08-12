import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sc_03/resources/icons.dart';

class FinderTextField extends StatefulWidget {
  final void Function(String)? onSubmitted;

  FinderTextField({required this.onSubmitted});

  @override
  _FinderTextFieldState createState() => _FinderTextFieldState();
}

class _FinderTextFieldState extends State<FinderTextField> {
  var _textController = TextEditingController();
  var _textFieldFocus = FocusNode();
  late Color _backColor;

  @override
  void initState() {
    _textFieldFocus.addListener(_getBackColorOnFocus);
    super.initState();
  }

  void _getBackColorOnFocus() {
    if (_textFieldFocus.hasFocus) {
      setState(() {
        _backColor = Theme.of(context).primaryColor;
      });
    } else {
      setState(() {
        _backColor = Theme.of(context).canvasColor;
      });
    }
  }

  @override
  void dispose() {
    _textController.dispose();
    _textFieldFocus.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    _getBackColorOnFocus();

    final underlineInputBorder = UnderlineInputBorder(
      borderSide: BorderSide(
        width: 2.0,
        color: Theme.of(context).canvasColor,
      ),
    );

    return TextField(
      controller: _textController,
      focusNode: _textFieldFocus,
      style: Theme.of(context).textTheme.bodyText1?.copyWith(
            fontSize: 16.0,
            letterSpacing: 0.44,
            height: 1.5,
          ),
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.symmetric(vertical: 12.0),
        // change this if response
        filled: true,
        fillColor: _backColor,
        hintText: "Поиск",
        hintStyle:
            Theme.of(context).textTheme.overline?.copyWith(letterSpacing: 0.44),
        enabledBorder: underlineInputBorder,
        focusedBorder: underlineInputBorder,
        border: underlineInputBorder,
        prefixIcon: IconButton(
          padding: EdgeInsets.fromLTRB(16.0, 12.0, 20.0, 12.0),
          icon: SvgPicture.asset(
            AppIcons.arrowBack,
            color: Theme.of(context).accentColor,
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        suffixIcon: IconButton(
          padding: EdgeInsets.fromLTRB(.0, 12.0, 12.0, 12.0),
          icon: SvgPicture.asset(
            AppIcons.delete,
            color: Theme.of(context).accentColor,
          ),
          onPressed: () {
            _textController.clear();
          },
        ),
      ),
      onSubmitted: widget.onSubmitted,
    );
  }
}
