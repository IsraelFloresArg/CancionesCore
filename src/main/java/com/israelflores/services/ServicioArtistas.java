package com.israelflores.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.israelflores.models.Artista;
import com.israelflores.repositories.RepositorioArtistas;

// ------------------- COMUNICA LA INFORMACION CON LA BASE DE DATOS ---------------------
@Service
public class ServicioArtistas {

	@Autowired
	private final RepositorioArtistas repositorioArtistas;
	
	// inicializar el REPOSITORIO ------------------------------------------------------- 
	public ServicioArtistas(RepositorioArtistas repositorioArtistas) {
			
		this.repositorioArtistas = repositorioArtistas;
			
	}

	public List <Artista> obtenerTodosLosArtistas() {
		
		return this.repositorioArtistas.findAll();
	}
	
	public Artista obtenerArtistaPorId(Long idArtista){
		
		return this.repositorioArtistas.findById(idArtista).orElse(null);
	}
	
	public Artista agregarArtista(Artista artista){
		
		return this.repositorioArtistas.save(artista);
	}
	
}
