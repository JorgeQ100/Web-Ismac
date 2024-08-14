package com.distribuida.controller;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.lang.Nullable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.distribuida.dao.AutorDAO;
import com.distribuida.dao.CategoriaDAO;
import com.distribuida.dao.LibroDAO;
import com.distribuida.entities.Libro;

@Controller
@RequestMapping("/libros")
public class LibroController {
	
	@Autowired
	private LibroDAO libroDAO;
	
	@Autowired
	private CategoriaDAO categoriaDAO;
	
	@Autowired
	private AutorDAO autorDAO;
	
	
	
	
	@GetMapping("/findAll")
	private String findAll(ModelMap modelMap) {
		
		List<Libro> libro = libroDAO.finALL();
		modelMap.addAttribute("libro", libro);
		return "libros-listar";
		
	}
	
	
	@GetMapping("findOne")
	private String finOne(@RequestParam("idLibro")@Nullable Integer idLibro
			            , @RequestParam("opcion")@Nullable Integer opcion
			            , ModelMap modelMap) {
		
		if(idLibro != null) {
			Libro libro = libroDAO.findOne(idLibro);
			modelMap.addAttribute("libro", libro);
		}
		
		modelMap.addAttribute("autor", autorDAO.finALL());
		modelMap.addAttribute("categorias", categoriaDAO.finALL());
		
		
		if (opcion == 1 )return "libros-add";
		else return "del-libros";
			
	}
	
	
	@PostMapping("/add")
	private String add(@RequestParam("idLibro") @Nullable Integer idLibro,
	                   @RequestParam("titulo") @Nullable String titulo,
	                   @RequestParam("editorial") @Nullable String editorial,
	                   @RequestParam("numPaginas") @Nullable Integer numPaginas,
	                   @RequestParam("edicion") @Nullable String edicion,
	                   @RequestParam("idioma") @Nullable String idioma,
	                   @RequestParam("fechaPublicacion") @Nullable @DateTimeFormat(pattern = "yyyy-MM-dd") Date fechaPublicacion,
	                   @RequestParam("descripcion") @Nullable String descripcion,
	                   @RequestParam("tipoPasta") @Nullable String tipoPasta,
	                   @RequestParam("ISBN") @Nullable String ISBN,
	                   @RequestParam("numEjemplares") @Nullable Integer numEjemplares,
	                   @RequestParam("portada") @Nullable String portada,
	                   @RequestParam("presentacion") @Nullable String presentacion,
	                   @RequestParam("precio") @Nullable float precio,
	                   @RequestParam("categoria") @Nullable Integer categoria,
	                   @RequestParam("autor") @Nullable Integer autor,
	                   ModelMap modelMap) {
		
		 if (categoria == null || autor == null) {
		        modelMap.addAttribute("error", "Debe seleccionar una categoría y un autor.");
		        return "redirect:/libros/listar-libros";  // Nombre de la vista donde se muestra el formulario de nuevo.
		    }
		

	    if (idLibro == null) {
	        Libro libro = new Libro(0, titulo, editorial, numPaginas, edicion, idioma, fechaPublicacion,
	                                descripcion, tipoPasta, ISBN, numEjemplares, portada, presentacion, precio);
	        libro.setCategoria(categoriaDAO.findOne(categoria));
	        libro.setAutor(autorDAO.findOne(autor));

	        libroDAO.add(libro);

	    } else {

	        Libro libro = new Libro(idLibro, titulo, editorial, numPaginas, edicion, idioma, fechaPublicacion,
	                                descripcion, tipoPasta, ISBN, numEjemplares, portada, presentacion, precio);
	        libro.setCategoria(categoriaDAO.findOne(categoria));
	        libro.setAutor(autorDAO.findOne(autor));

	        libroDAO.up(libro);
	    }

	    return "redirect:/libros/listar-libros";
	}

	
	@GetMapping("/del")
	private String del(@RequestParam("idLibro")@Nullable Integer idLibro ) {
		libroDAO.dell(idLibro);
		return "redirect:/libros/listar-libros";
	}
	
	
	
	
	
	
	


	
	
}
