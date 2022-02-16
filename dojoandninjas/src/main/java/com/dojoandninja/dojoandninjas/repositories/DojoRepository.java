package com.dojoandninja.dojoandninjas.repositories;



import java.util.List;

import com.dojoandninja.dojoandninjas.models.Dojo;

import org.springframework.data.repository.CrudRepository;


public interface DojoRepository extends CrudRepository<Dojo, Long>{
    List<Dojo> findAll();

    
}
