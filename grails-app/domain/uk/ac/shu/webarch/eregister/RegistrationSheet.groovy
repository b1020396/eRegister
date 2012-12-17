package uk.ac.shu.webarch.eregister

class RegistrationSheet {

	String studentNumber
	String studentID
	String date
	String courseID
	RegClass class_regClass

	static mappedBy = [registrationSheets_have_registerEntry: 'registrationSheet']

  	static hasMany = [registrationSheets_have_registerEntry: RegisterEntry]

    static constraints = {
    }
} 
