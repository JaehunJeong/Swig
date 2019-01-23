package swig.lecture.review;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import swig.common.AbstractDAO;

@Repository("reviewDAO")
public class ReviewDAO extends AbstractDAO{
	
	public void insertReview(Map<String, Object> map) {
		insert("lectureReview.insertReview",map);
	}
	
	public void updateReview(Map<String, Object> map) {
		update("lectureReview.updateReview",map);
	}
	
	@SuppressWarnings("unchecked")
	public List<Map<String, Object>> reviewList(Map<String, Object> map) {
		return (List<Map<String, Object>>) selectList("lectureReview.selectReviewList", map);
	}
	
	@SuppressWarnings("unchecked")
	public Map<String, Object> selectOneReview(Map<String, Object> map) {
		return (Map<String, Object>) selectOne("lectureReview.selectOneReview", map);
	}
	
	public void deleteReview(Map<String, Object> map) {
		delete("lectureReview.deleteReview",map);
	}

	@SuppressWarnings("unchecked")
	public void avgScore(Map<String, Object> map) throws Exception{
		update("lectureReview.avgScore",map);
		
	}
	
}
