package com.jqueryvsajax.services;

import com.jqueryvsajax.entity.Smartphone;

import java.util.List;

public interface SmartphoneService {
    List<Smartphone> findAll();
    Smartphone findById(Integer id);
    Smartphone save(Smartphone phone);
    Smartphone remove(Integer id);
}
