package swig.lecture;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Iterator;

import javax.servlet.http.HttpServletRequest;
import javax.annotation.Resource;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Service;

import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import swig.lecture.LectureDAO;
/*import swig.lecture.file.util.CoverFileUtils;
*/

@Service("lectureService")
public class LectureServiceImpl implements LectureService{
	Logger log = Logger.getLogger(this.getClass());
	
	@Resource(name="lectureDAO")
	private LectureDAO lectureDAO;
	
	
	/*@Override
	public List<Map<String, Object>> lectureList(Map<String, Object> map) throws Exception{
		return lectureDAO.lectureList(map);
	}
*/
	/*@Override
	public void insertLecture(Map<String, Object> map, HttpServletRequest request) throws Exception {
		lectureDAO.insertLectureP1(map);
		
		List<Map<String, Object>> list=coverFileUtils.parseInsertFileInfo(map, request);
		for(int i=0, size=list.size(); i<size; i++) {
			lectureDAO.insertLectureCoverFile(list.get(i));
		}
		MultipartHttpServletRequest multipartHttpServletRequest = (MultipartHttpServletRequest)request;
		Iterator<String> iterator = multipartHttpServletRequest.getFileNames();
		MultipartFile multipartFile = null;
		while(iterator.hasNext()) {
			multipartFile=multipartHttpServletRequest.getFile(iterator.next());
			if(multipartFile.isEmpty() == false) {
				log.debug("--------------file start-----------");
				log.debug("name : "+multipartFile.getName());
				log.debug("filename : "+multipartFile.getOriginalFilename());
				log.debug("size : "+multipartFile.getSize());
				log.debug("--------------file end-------------\n");
			}
		}
	}
*/
	@Override
	public List<Map<String, Object>> selectLectureList(Map<String,Object> map) throws Exception{
		return lectureDAO.selectLectureList(map);
	}
	
	@Override
	public List<Map<String, Object>> selectCA_IDXLectureList(Map<String,Object> map) throws Exception{
		return lectureDAO.selectCA_IDXLectureList(map);
	}
	
	@Override
	public Map<String, Object> selectLectureDetail(Map<String, Object> map) throws Exception {
		
		return lectureDAO.selectLectureDetail(map);
	}

	@Override
	public void updateLecture(Map<String, Object> map, HttpServletRequest request) throws Exception {
		lectureDAO.updatelectureHitCnt(map);
		
		lectureDAO.deleteLectureFile(map);
		/*List<Map<String,Object>> list = coverFileUtils.parseUpdateFileInfo(map, request);
	    Map<String,Object> tempMap = null;
	    for(int i=0, size=list.size(); i<size; i++){
	        tempMap = list.get(i);
	        if(tempMap.get("IS_NEW").equals("Y")){
	            lectureDAO.insertLectureCoverFile(tempMap);;
	        }
	        else{
	        	lectureDAO.updateLectureCoverFile(tempMap);
	        }
	    }*/
		
	}

	

	@Override
	public void deleteLecture(Map<String, Object> map) throws Exception {
		lectureDAO.deleteLecture(map);
	}

}
