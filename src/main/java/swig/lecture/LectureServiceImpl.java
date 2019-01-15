package swig.lecture;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.annotation.Resource;

import org.springframework.web.multipart.MultipartHttpServletRequest;

import swig.lecture.LectureDAO;
import swig.lecture.model.LectureModel;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Service;


@Service("LectureService")
public class LectureServiceImpl implements LectureService{
	Logger log = Logger.getLogger(this.getClass());
	
	@Resource(name="lectureDAO")
	private LectureDAO lectureDAO;
	
	@Override
	public List<Map<String, Object>> lectureBoardList(Map<String, Object> map) throws Exception{
		return lectureDAO.lectureBoardList(map);
	}

	@Override
	public Map<String, Object> selectLectureDetail(Map<String, Object> map) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void insertLectureOne(Map<String, Object> map, HttpServletRequest request) throws Exception {
		// TODO Auto-generated method stub
		
	}

	@Override
	public Map<String, Object> updateLecture(Map<String, Object> map, HttpServletRequest request) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void deleteLecture(Map<String, Object> map) throws Exception {
		// TODO Auto-generated method stub
		
	}

	@Override
	public Map<String, Object> LectureLocation(Map<String, Object> map) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Map<String, Object> LectureDate(Map<String, Object> map) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Map<String, Object> LectureTime(Map<String, Object> map) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Map<String, Object> LectureLocationFind(Map<String, Object> map) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Map<String, Object> LectureDateFind(Map<String, Object> map) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Map<String, Object> LectureTimeFind(Map<String, Object> map) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void insertLectureLocation(Map<String, Object> map, HttpServletRequest request) throws Exception {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void insertLectureDate(Map<String, Object> map, HttpServletRequest request) throws Exception {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void insertTimeLocation(Map<String, Object> map, HttpServletRequest request) throws Exception {
		// TODO Auto-generated method stub
		
	}

	@Override
	public Map<String, Object> upateLectureLocation(Map<String, Object> map, HttpServletRequest request)
			throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Map<String, Object> upateLectureDate(Map<String, Object> map, HttpServletRequest request) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Map<String, Object> upateLectureTime(Map<String, Object> map, HttpServletRequest request) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void deleteLectureLocation(Map<String, Object> map) throws Exception {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void deleteLectureDate(Map<String, Object> map) throws Exception {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void deleteLectureTime(Map<String, Object> map) throws Exception {
		// TODO Auto-generated method stub
		
	}
	
}
