package action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import dao.LoginDAO;
import form.LoginForm;

public class LoginAction extends Action {
	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		
		LoginForm loginForm = (LoginForm) form;		
		LoginDAO loginDAO = new LoginDAO();
		
		String uId = loginForm.getUserName();
		String admin = "admin";
		
		boolean result = loginDAO.validateUser(loginForm);
		
		//////// same page for admin //////////////////////////////////
		/*
		 if(result==true)
		{
			request.getSession().setAttribute("message", "SL");
			request.getSession().setAttribute("usrID", uId);
			//return mapping.findForward("success");
			
			
			if (uId.equals(admin))
			{
				return mapping.findForward("adminsuccess");	
			}
			else
			{
				return mapping.findForward("success");	
			}	
				
		}
		
		else
		{
			request.getSession().setAttribute("message", "FL");
			return mapping.findForward("failure");
		}
		
		*/
		
		//////////////////// seperate page for admin /////////////////////////////
		 if(result != true)
			{
			 request.getSession().setAttribute("message", "FL");
				return mapping.findForward("failure");
				
				
			 
			}
			
			else
			{
				//request.getSession().setAttribute("message", "SL");
				//request.getSession().setAttribute("usrID", uId);
				//return mapping.findForward("success");
				
				//////// for new admin page //////////////////////////////
				if (uId.equals(admin))
				{
					request.getSession().setAttribute("message", "AFL");
					return mapping.findForward("failure");
				}
				else
				{
					request.getSession().setAttribute("message", "SL");
					request.getSession().setAttribute("usrID", uId);
					return mapping.findForward("success");	
				}	
					
			}
		
		
		
		
		
		
}
}