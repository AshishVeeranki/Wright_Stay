package action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import dao.EditUserDetailsDAO;
import form.EditUserDetailsForm;



public class EditUserDetailsAction extends Action{

	public ActionForward execute(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		
		EditUserDetailsForm edituserdetailsForm = (EditUserDetailsForm) form;		
		EditUserDetailsDAO edituserdetailsDAO = new EditUserDetailsDAO();
		
		boolean result = edituserdetailsDAO.insertEditUserDetails(edituserdetailsForm);
		
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
	

