import 'package:flutter/material.dart';
import 'constants.dart';

const OutlineInputBorder outlineInputBorder = OutlineInputBorder(
  borderRadius: BorderRadius.all(Radius.circular(12)),
  borderSide: BorderSide.none,
);

class SearchForm extends StatelessWidget {
  const SearchForm({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
      child: TextFormField(
        onSaved: (value) {},
        decoration: const InputDecoration(
          filled: true,
          fillColor: mycolor,
          hintText: "Search items...",
          hintStyle: TextStyle(color: Colors.white),
          border: outlineInputBorder,
          //enabledBorder: outlineInputBorder,
          // focusedBorder: outlineInputBorder,
          // errorBorder: outlineInputBorder,
          prefixIcon: Padding(
            padding: EdgeInsets.all(14),
            child: Icon(
              Icons.search,
              size: 35,
              color: Colors.white,
            ),
          ),
          suffixIcon: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            child: SizedBox(
              width: 48,
              height: 48,
              child: Icon(
                Icons.filter_list,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
