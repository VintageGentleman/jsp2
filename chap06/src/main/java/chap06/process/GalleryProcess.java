package chap06.process;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class GalleryProcess implements RequestProcess {

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) {
		
		String contextPath = request.getContextPath();
		
		// 이미지 경로들은 DB에서 꺼냈다고 가정한다
		List<String> paths = new ArrayList<>();
		
		paths.add("https://www.tastingtable.com/img/gallery/coffee-brands-ranked-from-worst-to-best/intro-1645231221.webp");
		paths.add("https://upload.wikimedia.org/wikipedia/commons/thumb/e/e4/Latte_and_dark_coffee.jpg/1024px-Latte_and_dark_coffee.jpg");
		paths.add("https://upload.wikimedia.org/wikipedia/commons/thumb/c/c5/Roasted_coffee_beans.jpg/1024px-Roasted_coffee_beans.jpg");
		
		paths.add(contextPath + "/resources/img/rabbit/rabbit.jpg");
		paths.add(contextPath + "/resources/img/rabbit/rabbit2.jpg");
		paths.add(contextPath + "/resources/img/rabbit/rabbit3.jpg");
		
		paths.add(contextPath + "/resources/img/meme/meme1.png");
		paths.add(contextPath + "/resources/img/meme/meme2.jpg");
		paths.add(contextPath + "/resources/img/meme/meme3.jpg");
		paths.add(contextPath + "/resources/img/meme/meme4.jpg");
		
		request.setAttribute("img_paths", paths);
		
		return "/gallery";
	}
	
}
