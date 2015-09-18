package be.vdab.restservices;

import be.vdab.entities.Brouwer;
import com.fasterxml.jackson.annotation.JsonAutoDetect;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlAttribute;

@XmlAccessorType(XmlAccessType.FIELD)
@JsonAutoDetect (fieldVisibility = JsonAutoDetect.Visibility.ANY)
class BrouwerIdNaam {
    @XmlAttribute
    private long id;
    @XmlAttribute
    private String naam;
    BrouwerIdNaam() {}
    BrouwerIdNaam (Brouwer brouwer) {
        this.id = brouwer.getId();
        this.naam = brouwer.getNaam();
    }
}
