package swig.lecture.review;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

public interface ReviewService {

	void insertReview(Map<String, Object> map) throws Exception;

	void updateReview(Map<String, Object> map) throws Exception;

	List<Map<String, Object>>reviewList(Map<String, Object> map) throws Exception;

	Map<String, Object> selectOneReview(Map<String,Object> map) throws Exception;
	
	void deleteReview(Map<String, Object> map) throws Exception;
	
	void avgScore(Map<String,Object> map) throws Exception;

}
