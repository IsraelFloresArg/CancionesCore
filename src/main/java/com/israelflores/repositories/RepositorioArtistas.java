package com.israelflores.repositories;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.israelflores.models.Artista;



@Repository
public interface RepositorioArtistas extends CrudRepository <Artista, Long> {

	//------- selecciona todo de la tabla artistas
	List<Artista> findAll();
	
}
