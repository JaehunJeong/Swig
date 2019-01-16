package swig.utils;
 
import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
 
import javax.servlet.http.HttpServletRequest;
 
import org.springframework.stereotype.Component;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
 
//어노테이션을 이용하여 스프링이 객체를 관리할 수 있도록 함
@Component("fileUtils")
public class FileUpload { //파일저장될 위치 선언
    private static final String filePath = "C:\\java\\github\\upload\\";
     
    public Map<String,Object> parseInsertFileInfo(HttpServletRequest request) throws Exception{
        MultipartHttpServletRequest multipartHttpServletRequest = (MultipartHttpServletRequest)request;
        Iterator<String> iterator = multipartHttpServletRequest.getFileNames();
         
        MultipartFile multipartFile = null;
        String originalFileName = null;
        String originalFileExtension = null;
        String storedFileName = null;
        
        /*//클라이언트에서 전송된 파일 정보를 담아서 반환을 해줄 List이다(다중파일전송을 위함)
        List<Map<String,Object>> list = new ArrayList<Map<String,Object>>();*/
        
        Map<String, Object> fileMap = null;
        
        /*//ServiceImpl영역에서 전달해준 map에서 신규 생성되는 게시글의 번호 받아옴
        String boardIdx = (String)map.get("IDX");*/
        
        File file = new File(filePath);
        /*//파일을 저장할 경로에 해당 폴더가 없으면 폴더생성
        if(file.exists() == false){
            file.mkdirs();
        }*/
         
        while(iterator.hasNext()){
            multipartFile = multipartHttpServletRequest.getFile(iterator.next());
            if(multipartFile.isEmpty() == false){
                //파일의 정보를 받아서 새로운 이름으로 변경 CommonUtils.java에 있는 메서드 이용
            	originalFileName = multipartFile.getOriginalFilename();
                originalFileExtension = originalFileName.substring(originalFileName.lastIndexOf("."));
                storedFileName = CommonUtils.getRandomString() + originalFileExtension;
                 
                //서버에 실제 파일을 저장하는 부분
                file = new File(filePath + storedFileName);
                multipartFile.transferTo(file);//지정된 경로에 파일 생성
                
                //위에서 만든 정보를 list에 추가
                fileMap = new HashMap<String,Object>();
                /*listMap.put("BOARD_IDX", boardIdx);*/
                fileMap.put("ORIGINAL_FILE_NAME", originalFileName);
                fileMap.put("STORED_FILE_NAME", storedFileName);
                /*listMap.put("FILE_SIZE", multipartFile.getSize());*/
				/*list.add(listMap);*/
            }
        }
        return fileMap;
    }
}