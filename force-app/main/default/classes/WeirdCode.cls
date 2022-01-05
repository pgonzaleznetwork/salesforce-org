public with sharing class WeirdCode {
    public WeirdCode() {
        for (Integer i = 0; i < 12; i++) {
            Account myAccount = [SELECT Id FROM Account];
        }
    }
}
