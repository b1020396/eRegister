package uk.ac.shu.webarch.eregister

class ApplyController {

    def index() { }
    def processAttendance (){
        println (params)
        redirect (action:'index')
    }
}

