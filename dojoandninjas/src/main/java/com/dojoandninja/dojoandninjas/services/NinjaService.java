package com.dojoandninja.dojoandninjas.services;

import java.util.List;

import com.dojoandninja.dojoandninjas.models.Ninja;
import com.dojoandninja.dojoandninjas.repositories.NinjaRepository;

import org.springframework.stereotype.Service;
@Service
public class NinjaService {
    private final NinjaRepository ninjaRepo;

    public NinjaService(NinjaRepository ninjaRepo){
        this.ninjaRepo = ninjaRepo;
    }

    public List<Ninja> allNinjas(){
        return ninjaRepo.findAll();
    }

    public Ninja createNinja(Ninja ninja){
        return ninjaRepo.save(ninja);
    }
    public List<Ninja> ninjasAtDojo(Long id){
        return ninjaRepo.findByDojo_Id(id);
        
    }
    
}
