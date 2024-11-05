import 'package:flutter/material.dart';
import 'package:examen1/domain/models/lista.dart';
import 'package:examen1/domain/services/lista_service.dart';


Widget listaList(){
  return FutureBuilder(
      future: ListaService().getAllLista(), 
      builder: (context, snapshot){
        if(snapshot.connectionState == ConnectionState.waiting){
          return const Center(child: CircularProgressIndicator());
        }else if(snapshot.hasError){
          return const Center(child: Text('Error'));
        }else{
          final List<Lista>? listas = snapshot.data;
          return listar(listas);
        }
      }
    );
}

listar(List<Lista>? listas) => ListView.builder(
            itemCount: listas?.length,
            itemBuilder: (context, index){
              if(listas == null) {
                return const Center(child: Text('No hay productos'));
              }
              final lista = listas[index];
              return ListTile(
                title: Text(lista.titulo),
                subtitle: Text(lista.descripcion.toString()),
                trailing: Text(lista.fecha_objetivo),
              );
            }
          );