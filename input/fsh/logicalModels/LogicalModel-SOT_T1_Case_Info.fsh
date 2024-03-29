Logical: SOTT1CaseInfo
Title: "Surveillance & Outbreak Toolkit T1  Case Information"
Parent: BackboneElement

* ^url = "http://ritikarawlani.github.io/smart-outbreak-measles/StructureDefinition/SOTT1CaseInfo"
* ^version = "0.1"
* ^abstract = true
* ^status = #draft

* identification 1..1 BackboneElement "Identification" "Identification"
  * name	1..1	HumanName	"Full name of the patient*:"	"full name of the case (sick person)"
  * telephone	0..1	ContactPoint	"Telephone number:"	"telephone number of the patient or of the close parent"
* demographic 1..1 BackboneElement "Demographics" "Demographics"
  * guardian	0..1	HumanName	"If a child, first and last name of father/mother/guardian:"	"If a child, first and last name of father/mother/guardian"
  * DoB	1..1	date	"Date of birth*:_____/______/________"	"Date that the case was born on."
  * ageOnset	1..1	Age	"or Age*:_______ with units"	"Age in years on the date of illness onset with units"
  * sex	1..1	code	"Sex at birth*: Male Female"	"Biological sex. That is the biological differential characteristics (chromosomes, hormonal profiles, internal and external sex organs) that best describes the case."
  * sex from http://ritikarawlani.github.io/smart-outbreak-measles/ValueSet/BiologicalSex (required)
  * nationality	0..1	string	"Nationality:"	"The nation/country the case identifies as belonging to, whether by birth or naturalization."
* geographic 1..1 BackboneElement "Geographic" "Geographic"
  * locationResStatus	0..1	Coding	"Residential status: Resident/Refugee/Displaced person"	"Is the case residing in this area or is he/she a refugee or a displaced person"
  * locationLivingIn	0..1	Coding	"Living in: camp/settlement/rural/urban"	"Neighbourhood/camp/settlement/suburb where the case currently/usually resides."
  * address	1..1	string	"Residential/street address*:"	"Address (household number/identifiers, street name, block, etc.) where the case currently/usually resides."
  * landmark	0..1	string	"Landmarks to locate the house:"	"Landmarks, easy to recognize object or feature of a landscape or town that enables one establish a location of the case's current/usual place of residence."
  * city	1..1	string	"Village/Town/City:"	"Town/city where the case currently/usually resides."
  * admin1	1..1	string	"Admin Level 1* (province):"	"Administrative level 1: First sub-national boundary (e.g. province, state, territory prefecture, region, etc.) within which the case's currently/usually resides."
  * admin2	1..1	string	"Admin Level 2*(district):"	"Administrative level 2: Second sub-national level boundary (e.g. district, county, local government area, department, province, municipality, etc.) within which the case's currently/usually resides."
  * admin3	1..1	string	"Admin Level 3*(commune):"	"Administrative level 3: Third sub-national level boundary (e.g. sub-district, commune, zone, municipality, etc.) within which the case's currently/usually resides."
  * admin4	1..1	string	"Admin Level 4*(ward, parish):"	"Administrative level 4: Forth sub-national level boundary (e.g. community, ward, parish, commune, etc.) within which the case currently/usually resides."
  * latitude	0..1	decimal	"GPS residence latitude:"	"Latitude where the case currently/usually resides, preferably expressed as decimal degrees. Latitude is the geographic coordinates that specifies the north-south position of a point on the Earth's surface, usually obtained using a global position system (GPS) enabled device (e.g. smart phone) or a web mapping application (e.g. Open Street Map, Google Maps, etc.)."
  * longitude	0..1	decimal	"GPS residence longitude:"	"Longitude where the case currently/usually resides, preferably expressed as decimal degrees. Longitude is the geographic coordinates that specifies the east-west position of a point on the Earth's surface, usually obtained using a global position system (GPS) enabled device (e.g. smart phone) or a web mapping application (e.g. Open Street Map, Google Maps, etc.)."
* occupation 0..1 BackboneElement "Occupation" "Occupation"
  * occupation	0..1	string	"Occupation"	"Primary occupation, profession, type of employment, vocation include voluntary/unpaid work and studies. Categories to be pre-defined based on known risk factors for disease."
  * HCWFacilityName	0..1	string	"If working in a health facility, specify name:"	"Name(s) of health facility(ies) where the case works/volunteers."
  * HCWFunction	0..1	string	"If working in a health facility, specify function/position:"	"Describe the function or position of the case working in this health facility (for instance; nurse, doctor, cleaner, guard, etc)"
  * HCWActivities	0..1	string	"List routine activities (outside working hours):"	"What does the case normally do routinely outside working hours"