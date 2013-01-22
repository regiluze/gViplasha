import org.egi.pet.gviplasha.User;

class BootStrap {

    def init = { servletContext ->
		
		def ruben = new User(nick:"barri",name:"Ruben",surname:"Egiluz",createDate: new Date()).save(failOnError: true)
		
    }
    def destroy = {
    }
}
