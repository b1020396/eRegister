package uk.ac.shu.webarch.eregister

class Course {

	String courseName
	String courseID
	String instructorName
	String instructorID
	
	static mappedBy = [classes_on_course: 'class_course']

  	static hasMany = [classes_on_course: RegClass]

    static constraints = {
    }
}
