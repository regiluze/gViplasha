package org.egi.pet.gviplasha

class Tag {
	
	String name
	
	static hasMany = [ users : User]
	static belongsTo = User

    static constraints = {
		name blank: false, unique: true
    }
	
	String toString(){ return name }
}
