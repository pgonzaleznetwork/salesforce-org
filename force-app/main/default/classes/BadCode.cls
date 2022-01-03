public with sharing class BadCode {
    public BadCode() {
        
        Account a = [SELECT Id FROM Account];
        System.debug(a);
        
    }
}
