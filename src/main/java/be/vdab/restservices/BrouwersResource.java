package be.vdab.restservices;

import be.vdab.entities.Brouwer;
import com.fasterxml.jackson.annotation.JsonAutoDetect;
import com.fasterxml.jackson.annotation.JsonProperty;
import org.springframework.hateoas.EntityLinks;
import org.springframework.hateoas.ResourceSupport;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;
import java.util.ArrayList;
import java.util.List;

@XmlRootElement
@XmlAccessorType(XmlAccessType.FIELD)
@JsonAutoDetect (fieldVisibility = JsonAutoDetect.Visibility.ANY )
class BrouwersResource extends ResourceSupport  {
    @XmlElement(name="brouwer")
    @JsonProperty("brouwers")
    private List<BrouwerIdNaam > brouwersIdNaam = new ArrayList<>();
    BrouwersResource(){}
    BrouwersResource(Iterable<Brouwer> brouwers, EntityLinks entityLinks ) {
        for (Brouwer brouwer : brouwers) {
            this.brouwersIdNaam.add(new BrouwerIdNaam(brouwer ));
            this.add(entityLinks.linkToSingleResource(Brouwer.class, brouwer.getId())
                    .withRel("Brouwer:" + brouwer.getId()));
        }
        this.add(entityLinks.linkToCollectionResource(Brouwer.class ));
    }
}
