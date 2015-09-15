<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<form:label path="naam">Naam:<form:errors path="naam" />
</form:label>
<form:input path="naam" autofocus="autofocus" required='required' />
<form:label path="adres.straat">Straat:
<form:errors path="adres.straat" />
</form:label>
<form:input path="adres.straat" required='required' />
<form:label path="adres.huisNr">Huisnr.:
<form:errors path="adres.huisNr" />
</form:label>
<form:input path="adres.huisNr" required='required' />
<form:label path="adres.postcode">Postcode:
<form:errors path="adres.postcode" />
</form:label>
<form:input path='adres.postcode' required='required' type='number'
	min='1000' max='9999' />
<form:label path="adres.gemeente">Gemeente:
<form:errors path="adres.gemeente" />
</form:label>
<form:input path="adres.gemeente" required='required' />
<form:label path="omzet">Omzet:<form:errors path="omzet" />
</form:label>
<form:input path="omzet" required='required' />