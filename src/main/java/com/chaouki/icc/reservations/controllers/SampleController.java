package com.chaouki.icc.reservations.controllers;

import org.springframework.beans.BeansException;
import org.springframework.context.ApplicationContext;
import org.springframework.context.ApplicationContextAware;

import javax.annotation.ManagedBean;
import javax.annotation.PostConstruct;
import javax.faces.view.ViewScoped;
import java.io.Serializable;
import java.util.List;

/**
 * Created by chaouki on 19/03/2018.
 */
@ManagedBean
@ViewScoped
public class SampleController implements ApplicationContextAware {

    private ApplicationContext ac;

    @PostConstruct
    public void init(){
    }

    @Override
    public void setApplicationContext(ApplicationContext applicationContext) throws BeansException {
        this.ac = applicationContext;
    }

}
