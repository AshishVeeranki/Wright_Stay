package action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import dao.SignupDAO;
import form.SignupForm;

public class SignupAction extends Action {
	
	public ActionForward execute(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		
		SignupForm signupForm = (SignupForm) form;		
		SignupDAO signupDAO = new SignupDAO();
		
		boolean result = signupDAO.insertUserDetails(signupForm);
		
		if(result==true)
		{
			request.getSession().setAttribute("message", "S");
			return mapping.findForward("success");	
		}
		
		else
		{
			request.getSession().setAttribute("message", "F");
			return mapping.findForward("failure");
		}
	}
}
