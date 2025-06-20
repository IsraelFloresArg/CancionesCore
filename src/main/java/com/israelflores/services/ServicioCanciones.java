package com.israelflores.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.israelflores.models.Cancion;
import com.israelflores.repositories.RepositorioCanciones;

@Service
public class ServicioCanciones {
	
	@Autowired
	private final RepositorioCanciones repositorioCanciones;
	
	// inicializar el REPOSITORIO ------------------------------------------------------- 
	public ServicioCanciones(RepositorioCanciones repositorioCanciones) {
		
		this.repositorioCanciones = repositorioCanciones;
		
	}
	
	public List <Cancion> obtenerTodasLasCanciones() {
		
		return this.repositorioCanciones.findAll();
	}
	
	public Cancion obtenerCancionPorId(Long id) {
		return this.repositorioCanciones.findById(id).orElse(null);
	}
	
	public Cancion agregarCancion(Cancion cancionNueva) {
		return this.repositorioCanciones.save(cancionNueva);
	}
	
	public Cancion actualizaCancion(Cancion cancion) {
		return this.repositorioCanciones.save(cancion);
	}
	
	public void eliminaCancion(Long cancionId) {
		 this.repositorioCanciones.deleteById(cancionId);
	}
}
