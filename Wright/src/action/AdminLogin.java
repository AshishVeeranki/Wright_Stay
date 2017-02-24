package action;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import dao.AdminDAO;
import form.AdminForm;

public class AdminLogin extends Action {
	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		
		AdminForm adminForm = (AdminForm) form;		
		AdminDAO adminDAO = new AdminDAO();
		
		String uId = adminForm.getadminid();
		String admin = "admin";
		
		boolean result = adminDAO.validateAdmin(adminForm);
		
		if(result==true)
		{
			request.getSession().setAttribute("message", "SL");
			request.getSession().setAttribute("adminid", uId);
			return mapping.findForward("success");	
			
			/*if (uId.equals(admin))
			{
				return mapping.findForward("adminsuccess");	
			}
			else
			{
				return mapping.findForward("success");	
			}*/	
				
		}
		
		else
		{
			request.getSession().setAttribute("message", "FL");
			return mapping.findForward("failure");
		}
		
}
}
