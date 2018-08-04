package controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import service.PlantService;

@Controller
@RequestMapping(value = "/overview")
public class PlantController {
    private final PlantService service;
    public PlantController (@Autowired PlantService service){
        this.service = service;
    }
    @RequestMapping(method = RequestMethod.GET)
    public ModelAndView getPlanten(){
        return new ModelAndView("overview","planten", service.getAllPlanten());
    }
}
