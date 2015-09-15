package be.vdab.web;

import org.hibernate.validator.constraints.NotBlank;

class BeginNaamForm {
	@NotBlank
	private String beginnaam;

	public String getBeginnaam() {
		return beginnaam;
	}

	public void setBeginnaam(String beginnaam) {
		this.beginnaam = beginnaam;
	} 
	
	
}