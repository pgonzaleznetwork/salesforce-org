public with sharing class BadCode {
    public BadCode() {
        for (Integer i = 0; i < 100; i++) {
            Account a = [SELECT Id FROM Account];
        }
    }
}
