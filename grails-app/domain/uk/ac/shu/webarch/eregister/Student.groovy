package uk.ac.shu.webarch.eregister

class Student {


	String name
	String studentNumber

	static mappedBy = [student_has_many_registerEntry: 'class_student']

  	static hasMany = [student_has_many_registerEntry: RegisterEntry]
    static constraints = {
    }
}
