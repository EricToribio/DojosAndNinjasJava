package com.dojoandninja.dojoandninjas.services;

import java.util.List;

import com.dojoandninja.dojoandninjas.models.Dojo;
import com.dojoandninja.dojoandninjas.repositories.DojoRepository;

import org.springframework.stereotype.Service;
@Service
public class DojoService {
    private final DojoRepository dojoRepo;

    public DojoService(DojoRepository dojoRepo) {
        this.dojoRepo = dojoRepo;
    }

    public List<Dojo> allDojos(){
        return dojoRepo.findAll();
    }

    public Dojo createDojo(Dojo dojo){
        return dojoRepo.save(dojo);
    }
}