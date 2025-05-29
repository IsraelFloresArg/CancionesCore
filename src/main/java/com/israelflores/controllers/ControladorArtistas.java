package com.israelflores.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import com.israelflores.models.Artista;
import com.israelflores.models.Cancion;
import com.israelflores.services.ServicioArtistas;

import jakarta.validation.Valid;

@Controller
public class ControladorArtistas {

	@Autowired
	private final ServicioArtistas servicioArtistas;

	
	public ControladorArtistas (ServicioArtistas servicioArtistas) {
		
		this.servicioArtistas = servicioArtistas;
		
	}

	@GetMapping("/artistas")
	public String desplegarArtistas(Model artistas) {
		
		List <Artista> listaArtistas = this.servicioArtistas.obtenerTodosLosArtistas();
		artistas.addAttribute("Artistas", listaArtistas);
		
		return "artistas.jsp";
		
	}
	
	@GetMapping("/artistas/detalle/{idArtista}")
	public String desplegardetalleArtista(@PathVariable("idArtista") Long artistaId, Model artista) {
		
		Artista artistaDetalle = this.servicioArtistas.obtenerArtistaPorId(artistaId);
		
		if(artistaDetalle == null) {
			
			return "redirect:/artistas";
			
		}
		
		artista.addAttribute(artistaDetalle);
		return "detalleArtista.jsp";
		
	}

	@GetMapping("/artista/formulario/agregar")
	public String formularioAgregarArtista(@ModelAttribute("artista") Cancion artista) {
		
		return "agregarArtista.jsp";
	}
		
	
	
	@PostMapping("/artista/procesa/agregar")
	public String procesaAgregarArtista(@Valid @ModelAttribute("artista") Artista artista,
										BindingResult validator) {
		
		if (validator.hasErrors()) {
			return"agregarArtista.jsp";
		}
		this.servicioArtistas.agregarArtista(artista);
		return "/artista.jsp";
		
		
		//return "redirect:/agregarArtista.jsp";
	}




}
