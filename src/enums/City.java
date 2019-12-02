package enums;

public enum City {

	Agra("Agra"), Akbarpur("Akbarpur"), Aligarh("Aligarh"), Allahabad("Allahabad"), Amroha("Amroha"),
	Ayodhya("Ayodhya"), Ayodhya_Cantt("Ayodhya_Cantt"), Azamgarh("Azamgarh"), Bahraich("Bahraich"), Ballia("Ballia"),
	Banda("Banda"), Barabanki("Barabanki"), Bareilly("Bareilly"), Basti("Basti"), Bijnor("Bijnor"), Budaun("Budaun"),
	Bulandshahr("Bulandshahr"), Chandausi("Chandausi"), Deoria("Deoria"), Etah("Etah"), Etawah("Etawah"),
	Farrukhabad("Farrukhabad"), Fatehpur("Fatehpur"), Firozabad("Firozabad"), Ghaziabad("Ghaziabad"),
	Ghazipur("Ghazipur"), Gonda("Gonda"), Gorakhpur("Gorakhpur"), Greater_Noida("Greater_Noida"), Hapur("Hapur"),
	Hardoi("Hardoi"), Hathras("Hathras"), Jaunpur("Jaunpur"), Jhansi("Jhansi"), Kanpur("Kanpur"), Kasganj("Kasganj"),
	Khair("Khair"), Khurja("Khurja"), Lakhimpur("Lakhimpur"), Lalitpur("Lalitpur"), Lucknow("Lucknow"),
	Mainpuri("Mainpuri"), Mathura("Mathura"), Maunath_Bhanjan("Maunath_Bhanjan"), Meerut("Meerut"),
	Mirzapur("Mirzapur"), Modinagar("Modinagar"), Moradabad("Moradabad"), Mughalsarai("Mughalsarai"),
	Muzaffarnagar("Muzaffarnagar"), Noida("Noida"), Orai("Orai"), Pilibhit("Pilibhit"), Raebareli("Raebareli"),
	Rampur("Rampur"), Saharanpur("Saharanpur"), Sahaswan("Sahaswan"), Sambhal("Sambhal"), Shahjahanpur("Shahjahanpur"),
	Shamli("Shamli"), Shikohabad("Shikohabad"), Sitapur("Sitapur"), Sultanpur("Sultanpur"), Tanda("Tanda"),
	Ujhani("Ujhani"), Unnao("Unnao"), Varanasi("Varanasi");

	private String name;

	private City(String name) {
		this.name = name;
	}

	@Override
	public String toString() {
		return name;
	}
}