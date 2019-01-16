package swig.lecture.review;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Service;

import swig.lecture.review.ReviewDAO;

@Service("reviewService")
public class ReviewServiceImpl implements ReviewService {
	Logger log = Logger.getLogger(this.getClass());
	
	@Resource(name="reviewDAO")
	private ReviewDAO reviewDAO;

	@Override	// 리뷰 리스트 보기
	public List<Map<String, Object>> checkReview(Map<String, Object> map) throws Exception {
		return reviewDAO.checkReview(map);
	}
	
	@Override	// 리뷰 작성
	public void insertReview(Map<String, Object> map) throws Exception{
		reviewDAO.insertReview(map);
	}
	
	@Override	// 리뷰 수정
	public void updateReview(Map<String, Object> map) throws Exception{
		reviewDAO.updateReview(map);
	}
	
	@Override	// 리뷰 한줄 가져오기
	public List<Map<String, Object>> selectReview(Map<String, Object> map) throws Exception{
		return reviewDAO.selectReview(map);
	}
	
	@Override	// 리뷰 삭제
	public void deleteReview(Map<String, Object> map) throws Exception{
		reviewDAO.deleteReview(map);
	}
	
}
