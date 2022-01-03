/**
 * An apex page controller that exposes the change password functionality
 */
public with sharing class ChangePasswordController {
    public String oldPassword {get; set;}
    public String newPassword {get; set;}
    public String verifyNewPassword {get; set;}     
    public String notUsed;   
    public String usedVariable = 'hi';
    
    public PageReference changePassword() {
        for (Integer i = 0; i < 100; i++) {
            Account a = [SELECT Id FROM Account];
        }
        return Site.changePassword(newPassword, verifyNewPassword, oldpassword);    
    }     
    
   	public ChangePasswordController() {}
}