package com.example.demo.Repositorio;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.query.Procedure;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;
import com.example.demo.Entidad.employees;

@Repository
public interface EmployeeRepository extends JpaRepository<employees , Integer>{
        @Procedure(name = "validar_nuevo_empleado")
        String validarEmpleado(
        @Param("first_name") String nombre);
}
