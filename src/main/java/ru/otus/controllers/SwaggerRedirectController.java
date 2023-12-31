package ru.otus.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

/**
 * Контроллер для перенаправления на документацию.
 */
@Controller
public class SwaggerRedirectController {

    /**
     * Перенаправляет на документацию.
     *
     * @return Редирект.
     */
    @GetMapping("/swagger")
    public String index() {
        return "redirect:/swagger-ui/index.html";
    }

}
