package uk.ac.shu.webarch.eregister

class RegistrationSheet {

	String studentNumber
	String studentID
	String date
	String courseID
	RegClass class_regclass

	static mappedBy = [registrationSheets_have_registerEntry: 'class_registrationSheet']

  	static hasMany = [registrationSheets_have_registerEntry: RegisterEntry]

    static constraints = {
    }
} 
