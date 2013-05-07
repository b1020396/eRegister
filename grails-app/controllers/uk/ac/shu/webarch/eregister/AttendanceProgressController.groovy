package uk.ac.shu.webarch.eregister

import grails.converters.*

class AttendanceProgressController {

    def index() {

    def result=[:]

     result.name = []
          RegClass.findAll().each {cls ->
          result.name.add([instructorName:cls.class_instructor.name,
          courseName:cls.class_course.courseName,
          className:cls.name])
          }


        withFormat {
            html result
            xml { render result as XML }
            json { render result as JSON }
        }
    }
}

