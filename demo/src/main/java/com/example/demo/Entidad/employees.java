package com.example.demo.Entidad;

import java.sql.Date;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;

@Entity
public class employees {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer ID;
    private String JOB_ID;
    private String NAME;
    private String LAST_NAME;
    private Date BIRTHDATE;
    public Integer getID() {
        return ID;
    }
    public void setID(Integer iD) {
        ID = iD;
    }
    public String getJOB_ID() {
        return JOB_ID;
    }
    public void setJOB_ID(String jOB_ID) {
        JOB_ID = jOB_ID;
    }
    public String getNAME() {
        return NAME;
    }
    public void setNAME(String nAME) {
        NAME = nAME;
    }
    public String getLAST_NAME() {
        return LAST_NAME;
    }
    public void setLAST_NAME(String lAST_NAME) {
        LAST_NAME = lAST_NAME;
    }
    public Date getBIRTHDATE() {
        return BIRTHDATE;
    }
    public void setBIRTHDATE(Date bIRTHDATE) {
        BIRTHDATE = bIRTHDATE;
    }
    


    
}
