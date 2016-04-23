package md.utm.entity.model.dao.impl;

import java.util.List;
import java.util.Map;

import com.opensymphony.xwork2.ActionContext;

import md.utm.entity.model.dao.MessageDAO;
import md.utm.entity.model.dao.UserDAO;
import md.utm.entity.model.entity.Comment;
import md.utm.entity.model.entity.Message;

public class MessageDAOImpl extends GenericDAOImpl implements MessageDAO {

	public List<Message> getMessagesBySenderId() {
		Integer idProf; 
		Map session = ActionContext.getContext().getSession(); 
		idProf = (Integer)session.get("profile_id");
		// trebuie de adus din sesiune id-ul la sender !!!!!!!!!!!!!!!!!!!
		return getHibernateTemplate().find("from Message where idSender=1 AND idMessage in (Select idMessage from profile_messages where profile_id=1)");
				//getHibernateTemplate().find("from Message where idSender=?" +idSender+ "AND idMessage in (Select idMessage from profile_messages where profile_id=1)");
		/*?"+idProf+")"); */
	}
	
}