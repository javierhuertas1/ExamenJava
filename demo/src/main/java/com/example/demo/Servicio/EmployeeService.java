package com.example.demo.Servicio;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.Entidad.employees;
import com.example.demo.Repositorio.EmployeeRepository;

import jakarta.persistence.EntityManager;
import jakarta.persistence.PersistenceContext;
import jakarta.persistence.StoredProcedureQuery;
import jakarta.transaction.Transactional;

@Service
public class EmployeeService {

    @Autowired
    private EmployeeRepository empleadoRepository;

    @Autowired
    private EntityManager entityManager;
    

    @Transactional
    public String agregarNuevoEmpleado(employees empleado) {
       String edad = "18" ;
        StoredProcedureQuery query = entityManager.createNamedStoredProcedureQuery("validar_nuevo_empleado");
        query.setParameter("p_nombre", empleado.getNAME());
        query.setParameter("p_apellido", empleado.getLAST_NAME());
        query.setParameter("p_edad", edad);
        query.setParameter("p_genero_id", "1");
        query.setParameter("p_puesto_id","1");

        query.execute();

        String resultadoValidacion = (String) query.getOutputParameterValue("p_validacion");

        if ("OK".equals(resultadoValidacion)) {
            empleadoRepository.save(empleado);
        }

        return resultadoValidacion;
    }
}
