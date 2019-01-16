package swig.lecture;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import swig.common.AbstractDAO;
import swig.lecture.model.LectureModel;

@Repository("lectureDAO")
public class LectureDAO extends AbstractDAO{
	
	// 
	@SuppressWarnings("unchecked") //컴파일 경고 사용 x
	public List<Map<String, Object>> lectureLocation(List<Map<String, Object>> map) throws Exception{
		return (List<Map<String, Object>>)
				selectOne("LectureDetailSQL.LectureLocation", map);
	}
	@SuppressWarnings("unchecked")
	public List<Map<String, Object>> lectureBoardList(Map<String, Object> map) throws Exception{
		return (List<Map<String, Object>>)
				selectList("lecture.lectureBoardList", map);
	}
	
	@SuppressWarnings("unchecked")	// 컴파일러 오류 없애기 위해
	public List<Map<String, Object>> checkReview(Map<String, Object> map) {
		return (List<Map<String, Object>>)selectList("lecture.checkReview",map);
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
