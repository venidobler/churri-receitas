import 'package:flutter/material.dart';

class Search extends StatefulWidget {
  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
  TextEditingController _searchController = TextEditingController();
  String _searchQuery = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(30.0),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white, 
              borderRadius: BorderRadius.circular(8.0), 
            ),
            padding: EdgeInsets.all(8.0),
            child: TextField(
              controller: _searchController,
              decoration: InputDecoration(
                hintText: 'Pesquise sua receita',
                border: InputBorder.none, 
                suffixIcon: IconButton(
                  icon: Icon(Icons.search),
                  onPressed: () {
                    _performSearch();
                    //_searchController.clear();
                  },
                ),
              ),
              onSubmitted: (query) {
                _performSearch();
              },
            ),
          ),
        ),
      ),
      body: Center(
        child: Text('Resultado da Pesquisa: $_searchQuery'),
      ),
    );
  }

  void _performSearch() { 

    String query = _searchController.text;
    setState(() {
      _searchQuery = query;
    });
  }
}
