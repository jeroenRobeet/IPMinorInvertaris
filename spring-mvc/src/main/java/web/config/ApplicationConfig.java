package web.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import service.PlantService;

@Configuration
public class ApplicationConfig {
    @Bean
    public PlantService service(){
        return new PlantService("memory");
    }
}
