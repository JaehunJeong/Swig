package swig.common.util;

import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

@Repository("fileUtils") 
public class FileUtils {
	
	private static final String filePath="C:\\java\\files\\upload\\"; //파일 경로
	/*private static final String filePath = "D:\\jaehun\\swig\\csstest\\src\\main\\webapp\\resources\\image\\";*/
	public List<Map<String, Object>> parseInsertFileInfo(Map<String,Object> map, HttpServletRequest request) throws Exception{
		MultipartHttpServletRequest multipartHttpServletRequest = (MultipartHttpServletRequest)request;
		Iterator<String> iterator = multipartHttpServletRequest.getFileNames();
		
		MultipartFile multipartFile = null;
		String originalFileName=null;
		String storedFileName=null;
		String originalFileExtension=null;
		
		List<Map<String, Object>> list=new ArrayList<Map<String, Object>>();
		Map<String, Object> listMap=null;
		
		String l_no=(String)map.get("L_NO");
		
		File file=new File(filePath);
		
		if(file.exists()== false) {
			file.mkdirs();
		}
		
		while(iterator.hasNext()) {
			multipartFile = multipartHttpServletRequest.getFile(iterator.next());
			if(multipartFile.isEmpty() == false) {
				originalFileName=multipartFile.getOriginalFilename();
				originalFileExtension=originalFileName.substring(originalFileName.lastIndexOf("."));
				storedFileName=CommonUtils.getRandomString()+originalFileExtension;
				
				file=new File(filePath+storedFileName);
				multipartFile.transferTo(file);
				
				listMap=new HashMap<String, Object>();
				listMap.put("L_NO", l_no);
				listMap.put("LF_COVER_ORIGINFILE", originalFileName);
				listMap.put("STORED_FILE_NAME", storedFileName);
				listMap.put("FILE_SIZE",multipartFile.getSize());
				list.add(listMap);
			}
	
		}
		return list;
	}
	
	
	public List<Map<String, Object>> parseInsertCoverPro(Map<String, Object> map, MultipartFile[] coverfiles) throws Exception {
	      
		int size = coverfiles.length;
	      
	    /*Iterator<String> iterator = multipartHttpServletRequest.getFileNames();*/
	    
		String l_no=(String)map.get("L_NO");
		String originalFileName = null;
		String originalFileExtension = null;
		String storedFileName = null;

	    List<Map<String, Object>> list = new ArrayList<Map<String, Object>>();
	    Map<String, Object> listMap = null;
	      

	    /*String boardIdx = (String) map.get("T_NO");*/
	      
	      
	    System.out.println(coverfiles.length);
	    for(int i=0;i<size;i++) {
		    System.out.println(coverfiles[i].getOriginalFilename());
		}
	      
	    if(coverfiles != null && size > 0) {
	    	for(int i=0; i<size; i++ ) {
	    		originalFileName = coverfiles[i].getOriginalFilename();
	            
	            if(!originalFileName.equals("")) {
	            	listMap = new HashMap<String, Object>();
	               
	            	originalFileExtension = originalFileName.substring(originalFileName.lastIndexOf("."));
	            	storedFileName = CommonUtils.getRandomString() + originalFileExtension;
	            	System.out.println(originalFileName);
	            	File file = new File(filePath + storedFileName);
	                  
	            	/*listMap.put("T_NO", boardIdx);*/
	            	listMap.put("LF_CURRI_ORIGINPROFILE", originalFileName);
	            	listMap.put("LF_CURRI_STOREDPROFILE", storedFileName);
	            	list.add(listMap);
	            }
	            
	        }
	       
	    }
	    return list;
	}
	
	public List<Map<String, Object>> parseInsertStudyPro(Map<String, Object> map, MultipartFile[] studyfiles) throws Exception {
	      
		int size = studyfiles.length;
	      
	    /*Iterator<String> iterator = multipartHttpServletRequest.getFileNames();*/
		String l_no=(String)map.get("L_NO");
		String lf_no=(String)map.get("LF_NO");
		
		String originalFileName = null;
		String originalFileExtension = null;
		String storedFileName = null;

	    List<Map<String, Object>> list = new ArrayList<Map<String, Object>>();
	    Map<String, Object> listMap = null;
	      

	    /*String boardIdx = (String) map.get("T_NO");*/
	      
	      
	    System.out.println(studyfiles.length);
	    for(int i=0;i<size;i++) {
		    System.out.println(studyfiles[i].getOriginalFilename());
		}
	      
	    if(studyfiles != null && size > 0) {
	    	for(int i=0; i<size; i++ ) {
	    		originalFileName = studyfiles[i].getOriginalFilename();
	            
	            if(!originalFileName.equals("")) {
	            	listMap = new HashMap<String, Object>();
	               
	            	originalFileExtension = originalFileName.substring(originalFileName.lastIndexOf("."));
	            	storedFileName = CommonUtils.getRandomString() + originalFileExtension;
	            	System.out.println(originalFileName);
	            	File file = new File(filePath + storedFileName);
	                  
	            	/*listMap.put("T_NO", boardIdx);*/
	            	listMap.put("L_NO", l_no);
	            	listMap.put("LF_NO", lf_no);
	            	listMap.put("LF_STUDY_ORIGINPROFILE", originalFileName);
	            	listMap.put("LF_STUDY_STOREDPROFILE", storedFileName);
	            	list.add(listMap);
	            }
	            
	        }
	       
	    }
	    return list;
	}
	
	
	public List<Map<String, Object>> parseInsertCurriPro(Map<String, Object> map, MultipartFile[] currifiles) throws Exception {
	      
		int size = currifiles.length;
	      
	    /*Iterator<String> iterator = multipartHttpServletRequest.getFileNames();*/
		String l_no=(String)map.get("L_NO");
		String lf_no=(String)map.get("LF_NO");
		
		String originalFileName = null;
		String originalFileExtension = null;
		String storedFileName = null;

	    List<Map<String, Object>> list = new ArrayList<Map<String, Object>>();
	    Map<String, Object> listMap = null;
	      

	    /*String boardIdx = (String) map.get("T_NO");*/
	      
	      
	    System.out.println(currifiles.length);
	    for(int i=0;i<size;i++) {
		    System.out.println(currifiles[i].getOriginalFilename());
		}
	      
	    if(currifiles != null && size > 0) {
	    	for(int i=0; i<size; i++ ) {
	    		originalFileName = currifiles[i].getOriginalFilename();
	            
	            if(!originalFileName.equals("")) {
	            	listMap = new HashMap<String, Object>();
	               
	            	originalFileExtension = originalFileName.substring(originalFileName.lastIndexOf("."));
	            	storedFileName = CommonUtils.getRandomString() + originalFileExtension;
	            	System.out.println(originalFileName);
	            	File file = new File(filePath + storedFileName);
	                  
	            	/*listMap.put("T_NO", boardIdx);*/
	            	listMap.put("L_NO", l_no);
	            	listMap.put("LF_NO", lf_no);
	            	listMap.put("LF_CURRI_ORIGINPROFILE", originalFileName);
	            	listMap.put("LF_CURRI_STOREDPROFILE", storedFileName);
	            	list.add(listMap);
	            }
	            
	        }
	       
	    }
	    return list;
	}
	public List<Map<String, Object>> parseUpdateFileInfo(Map<String, Object> map, HttpServletRequest request) throws Exception{
		
		MultipartHttpServletRequest multipartHttpServletRequest = (MultipartHttpServletRequest)request;
		Iterator<String> iterator = multipartHttpServletRequest.getFileNames();
	     
	    MultipartFile multipartFile = null;
	    String originalFileName = null;
	    String originalFileExtension = null;
	    String storedFileName = null;
	     
	    List<Map<String,Object>> list = new ArrayList<Map<String,Object>>();
	    Map<String, Object> listMap = null;
	     
	    String boardIdx = (String)map.get("IDX");
	    String requestName = null;
	    String idx = null;
	     
	     
	    while(iterator.hasNext()){
	        multipartFile = multipartHttpServletRequest.getFile(iterator.next());
	        if(multipartFile.isEmpty() == false){
	            originalFileName = multipartFile.getOriginalFilename();
	            originalFileExtension = originalFileName.substring(originalFileName.lastIndexOf("."));
	            storedFileName = CommonUtils.getRandomString() + originalFileExtension;
	             
	            multipartFile.transferTo(new File(filePath + storedFileName));
	             
	            listMap = new HashMap<String,Object>();
	            listMap.put("IS_NEW", "Y");
	            listMap.put("BOARD_IDX", boardIdx);
	            listMap.put("ORIGINAL_FILE_NAME", originalFileName);
	            listMap.put("STORED_FILE_NAME", storedFileName);
	            listMap.put("FILE_SIZE", multipartFile.getSize());
	            list.add(listMap);
	        }
	        else{
	            requestName = multipartFile.getName();
	            idx = "IDX_"+requestName.substring(requestName.indexOf("_")+1);
	            if(map.containsKey(idx) == true && map.get(idx) != null){
	                listMap = new HashMap<String,Object>();
	                listMap.put("IS_NEW", "N");
	                listMap.put("FILE_IDX", map.get(idx));
	                list.add(listMap);
	            }
	        }
	    }
	    return list;
	}

}
