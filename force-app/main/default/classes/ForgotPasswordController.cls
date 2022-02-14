/**
 * An apex page controller that exposes the site forgot password functionality
 */
public with sharing class ForgotPasswordController {
    public String username {get; set;}   
       
    public ForgotPasswordController() {}
	
  	public PageReference forgotPassword() {
  		boolean success = Site.forgotPassword(username);
  		PageReference pageReference = Page.ForgotPasswordConfirm;
  		pageReference.setRedirect(true);
  		
  		if (success) {			
  			return pageReference;
  		}
  		return null;
  	}
}