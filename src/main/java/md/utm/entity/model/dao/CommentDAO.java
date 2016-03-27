package md.utm.entity.model.dao;

import java.util.List;
import md.utm.entity.model.entity.Comment;

public interface CommentDAO extends GenericDao {

	
	List<Comment> getAllComments();
	
	void writeCommet(Comment comment);
}
