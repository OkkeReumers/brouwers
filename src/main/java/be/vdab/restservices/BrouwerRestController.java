package be.vdab.restservices;

import be.vdab.entities.Brouwer;
import be.vdab.exceptions.BrouwerNietGevondenException;
import be.vdab.services.BrouwerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.hateoas.EntityLinks;
import org.springframework.hateoas.ExposesResourceFor;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/brouwers")
@ExposesResourceFor(Brouwer.class)
class BrouwerRestController {
    private final BrouwerService brouwerService;
    private final EntityLinks entityLinks;

    @Autowired
    BrouwerRestController(BrouwerService brouwerService , EntityLinks entityLinks ) {
        this.brouwerService = brouwerService;
        this.entityLinks = entityLinks;
    }

    @RequestMapping(value = "{brouwer}", method = RequestMethod.GET)
        BrouwerResource read(@PathVariable Brouwer brouwer) {
        if (brouwer == null) {
            throw new BrouwerNietGevondenException();
        }
        return new BrouwerResource(brouwer, entityLinks );
    }

    @ExceptionHandler (BrouwerNietGevondenException.class)
    @ResponseStatus(HttpStatus.NOT_FOUND)
    void brouwerNietGevonden() {
    }

    @RequestMapping(method = RequestMethod.GET, params = "beginnaam")
    BrouwersResource findAll(String beginnaam) {
        return new BrouwersResource(brouwerService.findByNaam(beginnaam ), entityLinks );
    }
}
