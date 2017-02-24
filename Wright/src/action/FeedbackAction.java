package action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import dao.FeedbackDAO;
import form.FeedbackForm;


public class FeedbackAction extends Action {
	
	public ActionForward execute(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		
		FeedbackForm feedbackForm = (FeedbackForm) form;		
		FeedbackDAO feedbackDAO = new FeedbackDAO();
		
		boolean result = feedbackDAO.insertfeedbackDetails(feedbackForm,request);
		
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
