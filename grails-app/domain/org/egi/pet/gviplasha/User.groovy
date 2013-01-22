package org.egi.pet.gviplasha

class User {
	
	String nick
	String name
	String surname
	Date   createDate
	String details
	
	static hasMany = [ tags : Tag]

    static constraints = {
		nick blank: false, unique: true
		name blank: false
		surname blank: false
		details maxSize: 100, nullable: true
    }
}
