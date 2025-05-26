package com.israelflores.repositories;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.israelflores.models.Cancion;

//--------------- esto SOLO se comunica con la BASE DE DATOS --------------
@Repository
public interface RepositorioCanciones extends CrudRepository <Cancion, Long> {

	//------- selecciona todo de la tabla peliculas
	List <Cancion> findAll();
	
	
	//------- selecciona el ID de la tabla peliculas
	// Cancion findById(Long id);

}