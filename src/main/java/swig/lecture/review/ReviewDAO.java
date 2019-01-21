package swig.lecture.review;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import swig.common.AbstractDAO;

@Repository("reviewDAO")
public class ReviewDAO extends AbstractDAO{
	@SuppressWarnings("unchecked")	// 컴파일러 오류 없애기 위해
	public List<Map<String, Object>> checkReview(Map<String, Object> map) {
		return (List<Map<String, Object>>)selectList("review.checkReview",map);
	}
	
	public void insertReview(Map<String, Object> map) {
		insert("review.insertReview",map);
	}
	
	public void updateReview(Map<String, Object> map) {
		update("review.updateReview",map);
	}
	
	@SuppressWarnings("unchecked")
	public List<Map<String, Object>> selectReview(Map<String, Object> map) {
		return (List<Map<String, Object>>) selectList("review.selectReview", map);
	}
	
	public void deleteReview(Map<String, Object> map) {
		delete("review.deleteReview",map);
	}

	@SuppressWarnings("unchecked")
	public void avgScore(Map<String, Object> map) throws Exception{
		update("review.avgScore",map);
		
	}
	
}
