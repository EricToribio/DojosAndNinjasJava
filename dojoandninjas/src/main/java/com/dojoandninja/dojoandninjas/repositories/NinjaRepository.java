package com.dojoandninja.dojoandninjas.repositories;

import java.util.List;

import com.dojoandninja.dojoandninjas.models.Ninja;

import org.springframework.data.repository.CrudRepository;

public interface NinjaRepository extends CrudRepository<Ninja, Long>{
    List<Ninja> findAll();
    List<Ninja> findByDojo_Id(Long id);

    
}
