import uk.ac.shu.webarch.eregister.*;
class BootStrap {

    def init = { servletContext ->


println("BootStrap::init");

def ian_instructor = Instructor.findByStaffNumber('646345d') ?: new Instructor(staffNumber:'646345d', name:'Ian Ibbotson' ).save();
def matt_instructor = Instructor.findByStaffNumber('23456a') ?: new Instructor(staffNumber:'23456a', name:'Matthew Love' ).save();

def web_arch_course = Course.findByCourseID('123987d') ?: new Course(courseID:'123987d',
                                                                     courseName:'Web Architecture',
                                                                     ).save();


def sophie_instructor = Student.findByStudentNumber('21020396') ?: new Student(studentNumber:'21020396', name:'Sophie Leesley' ).save();
    }
    def destroy = { }
}

