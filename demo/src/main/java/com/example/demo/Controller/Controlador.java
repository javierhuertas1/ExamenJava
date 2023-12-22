package com.example.demo.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.example.demo.Entidad.employees;
import com.example.demo.Servicio.EmployeeService;

@RestController
@RequestMapping("api")
public class Controlador {

    @Autowired
    private EmployeeService employeeService;

    @PostMapping("/agregar")
    public ResponseEntity<String> agregarNuevoEmpleado(@RequestBody employees empleado) {
        String resultadoValidacion = employeeService.agregarNuevoEmpleado(empleado);
        return ResponseEntity.ok(resultadoValidacion);
    }
}
