package uk.ac.shu.webarch.eregister

class Course {

	String courseName
	String courseID
	String class_course
    Set classes_on_course


	static mappedBy = [classes_on_course: 'class_course']

  	static hasMany = [classes_on_course: RegClass]

    static constraints = {
    }
}

