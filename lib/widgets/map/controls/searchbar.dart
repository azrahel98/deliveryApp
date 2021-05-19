import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  final Function() onpress;
  final bool search;
  final Size size;
  SearchBar({required this.search, required this.onpress, required this.size});
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      curve: Curves.fastOutSlowIn,
      duration: Duration(milliseconds: 400),
      width: search ? size.width / 5 : size.width - size.width / 10,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(32),
        color: Colors.transparent,
      ),
      child: Row(
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(100),
              ),
              alignment: Alignment.center,
              padding: EdgeInsets.symmetric(horizontal: size.width / 25),
              child: !search
                  ? TextField(
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        hintText: "Buscar .... ",
                        border: InputBorder.none,
                      ),
                    )
                  : null,
            ),
          ),
          AnimatedContainer(
            margin: EdgeInsets.only(left: size.width / 25),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              color: Colors.white,
            ),
            duration: Duration(milliseconds: 400),
            child: Material(
              type: MaterialType.transparency,
              child: InkWell(
                  radius: 100,
                  child: Padding(
                    padding: EdgeInsets.all(15),
                    child: Icon(
                      search ? Icons.person_search_sharp : Icons.close_rounded,
                      color: Colors.black,
                      size: 24,
                    ),
                  ),
                  onTap: this.onpress),
            ),
          )
        ],
      ),
    );
  }
}
