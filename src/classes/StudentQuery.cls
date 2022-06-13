public class StudentQuery {
    public StudentQuery(){
		List<Student__c> studentList = [select id, name, Roll_Number__c ,Mobile_Number__c,Father_Name__c,Father_Mobile_Number__c,HomePhone__c,Email__c,Address__c,Overall_Grade__c from Student__c order by createdDate DESC LIMIT 5];
		for(Student__c student : studentList){
			system.debug('Chcek Student Data ::: ' + student);
		}
	}

}