package swig.lecture.review;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import swig.common.AbstractDAO;

@Repository("ReviewDAO")
public class ReviewDAO extends AbstractDAO{
	@SuppressWarnings("unchecked")	// 컴파일러 오류 없애기 위해
	public List<Map<String, Object>> checkReview(Map<String, Object> map) {
		return (List<Map<String, Object>>)selectList("review.checkReview",map);
	}
	
	public void insertReview(Map<String, Object> map) {
		insert("lecture.insertReview",map);
		update("lendplace.RATE",map);
	}
	
	public void updateReview(Map<String, Object> map) {
		update("lecture.updateReview",map);
	}
	
	@SuppressWarnings("unchecked")
	public List<Map<String, Object>> selectReview(Map<String, Object> map) {
		return (List<Map<String, Object>>) selectList("lecture.selectReview", map);
	}
	
	public void deleteReview(Map<String, Object> map) {
		delete("lecture.deleteReview",map);
		update("lecture.RATE",map);
		
	}
}
