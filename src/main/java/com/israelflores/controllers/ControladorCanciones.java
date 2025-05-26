package com.israelflores.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import com.israelflores.models.Cancion;
import com.israelflores.services.ServicioCanciones;

@Controller
public class ControladorCanciones {

	@Autowired
	private final ServicioCanciones servicioCanciones;
	
	public ControladorCanciones (ServicioCanciones servicioCanciones) {

		 this.servicioCanciones = servicioCanciones;
		
	}

	@GetMapping("/canciones")
	public String desplegarCanciones(Model modelo) {
		List <Cancion> listaCanciones = this.servicioCanciones.obtenerTodasLasCanciones();
		modelo.addAttribute("listaDeCanciones", listaCanciones);
		return "canciones.jsp";
	}

	@GetMapping("/canciones/detalle/{idCancion}")
	public String desplegarDetalleCancion(@PathVariable("idCancion") Long CancionId, Model cancion ) {
		
		Cancion cancionDetalle = this.servicioCanciones.obtenerCancionPorId(CancionId);
		
		if (cancionDetalle == null) {
			return "redirect:/canciones";
		}
		
		cancion.addAttribute("cancion", cancionDetalle);
		//cancion.addAttribute("nombre", cancionDetalle.getTitulo());
		//cancion.addAttribute("artista", cancionDetalle.getTitulo());
		//cancion.addAttribute("album", cancionDetalle.getTitulo());
		//cancion.addAttribute("genero", cancionDetalle.getTitulo());
		//cancion.addAttribute("idioma", cancionDetalle.getTitulo());
		return "detalleCancion.jsp";
	}


}

