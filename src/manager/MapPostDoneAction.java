package manager;

import java.io.File;
import java.nio.file.Paths;

import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import DAO.MapDAO;
import bean.Map;
import tool.Action;

@MultipartConfig
public class MapPostDoneAction extends Action {

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse res) throws Exception {
		HttpSession session = req.getSession();
		// Map mapinfo = (Map)session.getAttribute("map");

//		String filePath = (req.getParameter("pdfUpload"));

        // ファイル名を取得		//name属性がpictのファイルをPartオブジェクトとして取得
		Part part=req.getPart("pdfUpload");

//        File file = new File(filePath);
//        String fileName = file.getName();

        // 新しい保存先のパスを設定
//        String copyPath = "/" + fileName;

        // ファイルコピー
//        Files.copy(Paths.get(filePath), Paths.get(copyPath));

		//ファイル名を取得
		//String filename=part.getSubmittedFileName();//ie対応が不要な場合
		String filename=Paths.get(part.getSubmittedFileName()).getFileName().toString();
		//アップロードするフォルダ
//		String path=getServletContext().getRealPath("/upload");
		String path=req.getServletContext().getRealPath("/upload");
		//実際にファイルが保存されるパス確認
		System.out.println(path);

		//書き込み
		part.write(path+File.separator+filename);

		// 階数を文字として取得し
		String floor = req.getParameter("textInput");
//		System.out.println(image);
//		String copyPath = "../map.pdf";

        // Mapオブジェクトを作成して、取得した階数と画像パスをセット
		Map map=new Map();
		map.setFloorInfo(floor);
		map.setMapImage(path);

		// MapDAOを使用してデータベースに保存
		MapDAO mapDao= new MapDAO();
		// mapDao.save(map);
        boolean Saved = mapDao.save(map);

        // リクエストスコープに保存
        session.setAttribute("map", map);

        if (Saved) {
            // 保存が成功した場合、成功ページにリダイレクト
        	req.getRequestDispatcher("../staff/Map/map_submission_done.jsp").forward(req, res);
        } else {
            // 保存が失敗した場合、エラーメッセージを設定
            req.setAttribute("error", "マップ情報の保存に失敗しました。");
            req.getRequestDispatcher("/common/error.jsp").forward(req, res);
        }
	}
}
