package uk.ac.shu.webarch.eregister

class Student {


	String name
	String studentNumber

	static mappedBy = [student_has_many_registerEntry: 'student']

  	static hasMany = [student_has_many_registerEntry: registerEntry]
    static constraints = {
    }
}
