package com.medapp.controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

/**
 * Created by Root on 08.05.2017.
 */
@RestController
public class TestController {
    @RequestMapping("loaderio-d1e8ff06a2ea089101e682bc79788b5f")
    public @ResponseBody String test(){
        String test = "loaderio-d1e8ff06a2ea089101e682bc79788b5f";
        return test;
    }
}
