package com.cl.controladores;

import java.util.HashMap;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

@Controller 
public class ControladorRecetas {

    // Atributos solicitados
    private static String[] listaRecetas = {"Pizza", "Espagueti", "Lasaña"};
    private static HashMap<String, String[]> recetasConIngredientes = new HashMap<String, String[]>();

    // Constructor
    public ControladorRecetas() {
        String[] pizza = {"Masa", "Salsa de tomate", "Queso", "Pepperoni"};
        recetasConIngredientes.put("Pizza", pizza);
        
        String[] espagueti = {"Pasta", "Salsa de tomate", "Carne molida", "Queso parmesano"};
        recetasConIngredientes.put("Espagueti", espagueti);
        
        String[] lasaña = {"Pasta", "Salsa de tomate", "Queso", "Albahaca", "Espinaca", "Champiñones"};
        recetasConIngredientes.put("Lasaña", lasaña);
    }

    // Ruta /recetas
    @GetMapping("/recetas")
    public String obtenerTodasLasRecetas(Model modelo) {
        modelo.addAttribute("listaRecetas", listaRecetas);
        
        return "recetas";
    }

    // Ruta /recetas/{nombre} 
    @GetMapping("/recetas/{nombre}")
    public String obtenerRecetaPorNombre(@PathVariable("nombre") String nombreReceta, Model modelo) {
        String[] ingredientes = recetasConIngredientes.get(nombreReceta);

        modelo.addAttribute("nombreReceta", nombreReceta);
        modelo.addAttribute("ingredientes", ingredientes);

        return "detalleReceta";
    }
}