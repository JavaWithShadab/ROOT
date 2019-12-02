package enums;

public enum Category {

	MOBILES("Mobiles", "fa fa-fw fa-mobile"), ELECTRONICS("Electronics & Appliances", "fa fa-fw fa-laptop"),
	CARS("Cars", "fa fa-fw fa-car"), BIKES("Bikes", "fa fa-fw fa-motorcycle"),
	FURNITURES("Furnitures", "fa fa-fw fa-wheelchair"), PETS("Pets", "fa fa-fw fa-mobile"),
	BOOKS_SPORTS_HOBBIES("Books, Sports & Hobbies", "fa fa-fw fa-mobile"), FASHION("Fashion", "fa fa-fw fa-mobile"),
	KIDS("Kids", "fa fa-fw fa-mobile"), SERVICES("Services", "fa fa-fw fa-mobile"), JOBS("Jobs", "fa fa-fw fa-mobile"),
	REAL_STATE("Real Estates", "fa fa-fw fa-mobile"),
	OTHERS("OTHERS", "fa fa-fw fa-circle-o");

	private String name;
	private String iconClass;

	private Category(String name, String iconClass) {
		this.name = name;
		this.iconClass = iconClass;
	}

	public String getIconClass() {
		return iconClass;
	}

	@Override
	public String toString() {
		return name;
	}
}