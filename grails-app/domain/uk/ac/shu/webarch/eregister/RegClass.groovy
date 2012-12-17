package uk.ac.shu.webarch.eregister

class RegClass {

	String name
	Instructor class_instructor
	Course class_course

	static mappedBy = [classes_to_registration_sheets: 'regclass']

  	static hasMany = [classes_to_regristration_sheets: RegristrationSheet]

    static constraints = {
    }
}
