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
              color: Colors.white, // Cor de fundo branca
              borderRadius: BorderRadius.circular(8.0), // Border Radius
            ),
            padding: EdgeInsets.all(8.0),
            child: TextField(
              controller: _searchController,
              decoration: InputDecoration(
                hintText: 'Pesquise sua receita',
                border: InputBorder.none, // Remova a borda padrão
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
    // Obtenha a consulta de pesquisa do controlador
    String query = _searchController.text;
    //consulta sql aqui.

    setState(() {
      _searchQuery = query;
    });
  }
}
