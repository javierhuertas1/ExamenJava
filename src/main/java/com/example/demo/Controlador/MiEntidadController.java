package com.example.demo.Controlador;

import java.sql.Date;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;

import com.example.demo.DTO.empleadoDTO;
import com.example.demo.DTO.empleadoDTOresponse;
import com.example.demo.Servicio.MiServicio;
import com.example.demo.entidad.Empleado;

import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;

@RestController
public class MiEntidadController {
    @Autowired
    private MiServicio miServicio;
    @PostMapping("/createEmploye")
    public empleadoDTOresponse createEmployee(@RequestBody empleadoDTO empleadoRequestDTO) {
        Date fechDate_ = convertirStringAfecha(empleadoRequestDTO.getBirthdate());
        Empleado empl;
        empl = miServicio.insertarPersona(
                empleadoRequestDTO.getName(),
                empleadoRequestDTO.getLast_name(),
                fechDate_,
                empleadoRequestDTO.getGender_id(),
                empleadoRequestDTO.getJob_id());

        empleadoDTOresponse responseDTO = new empleadoDTOresponse();
        responseDTO.setId(empl.getID());
        if (responseDTO.getId() == null) {
            responseDTO.setSuccess(empl.getNAME());
        }else{
        responseDTO.setSuccess("True");
        }
        

        return responseDTO;
    }

    public Date convertirStringAfecha(String FechaValidar) {
        try {
            SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
            long timestamp = dateFormat.parse(FechaValidar).getTime();
            Date fechDate = new Date(timestamp);
            return fechDate;
        } catch (ParseException e) {
            e.printStackTrace();
        }
        return null;
    }
}
