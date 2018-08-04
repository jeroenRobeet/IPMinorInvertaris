package controller;

import model.Plant;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.PathVariable;
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

        ModelAndView overviewpagina=  new ModelAndView("overview","planten", service.getAllPlanten());
        overviewpagina.addObject("totaal",service.getTotaalAantal());
        return overviewpagina;
    }
    @RequestMapping(value = "/addPlant", method = RequestMethod.GET)
    public ModelAndView getNieuwePlant(){
        return new ModelAndView("addPlant","plant",new Plant());
    }
    @RequestMapping(method = RequestMethod.POST)
    public String save(Plant plant, BindingResult result){
        if (result.hasErrors()){
            return "addPlant";
        }
        service.addPlant(plant);
        return "redirect:/overview.htm";
    }
    @RequestMapping(value = "/{id}", method = RequestMethod.GET)
    public ModelAndView update(@PathVariable long id){
        return new ModelAndView("addPlant","plant",service.getPlant(id));
    }
}
