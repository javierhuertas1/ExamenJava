package com.example.demo.Repo;

import java.sql.Date;


import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.example.demo.entidad.Empleado;
@Repository
public interface MiEntidadRepository extends CrudRepository<Empleado, Integer>{
        
    
  

    

}
