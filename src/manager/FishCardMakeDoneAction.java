package manager;

import java.nio.file.Paths;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import DAO.FishCardDAO;
import bean.FishCard;
import tool.Action;


public class FishCardMakeDoneAction extends Action {

	public void execute(HttpServletRequest req, HttpServletResponse res) throws Exception {
		HttpSession session = req.getSession();

        // ファイル名を取得		//name属性がpictのファイルをPartオブジェクトとして取得
		Part part=req.getPart("f2");

		// Content-Disposition ヘッダーを取得
		String contentDisposition = part.getHeader("content-disposition");

		//ファイル名取得
		String fileName = null;
		for (String content : contentDisposition.split(";")) {
		    if (content.trim().startsWith("filename")) {
		        fileName = content.substring(content.indexOf("=") + 1).trim().replace("\"", "");
		        fileName = Paths.get(fileName).getFileName().toString(); // フルパスの場合の対応
		        break;
		    }
		}
		System.out.println("ファイル名: " + fileName);

		//取得したファイルを指定のフォルダに保存
		String path = "C:/FishCard/"+fileName;
		part.write(path);

		// text、title、imageを取得
//		int id = Integer.parseInt(req.getParameter("f1"));
		String title = req.getParameter("f1");
		String text = req.getParameter("f2");
//		String image = req.getParameter("pdfUpload");

        // FishCardオブジェクトを作成して、取得したtitle、textと画像パスをセット
		FishCard fish = new FishCard();
		fish.setCardTitle(title);
		fish.setCardText(text);
		fish.setCardImage(path);

		// FishCardDAOを使用してデータベースに保存
		FishCardDAO fishcardDao= new FishCardDAO();
		// mapDao.save(map);
        boolean Saved = fishcardDao.save(fish);

        // リクエストスコープに保存
        session.setAttribute("fish", fish);

        if (Saved) {
            // 保存が成功した場合、成功ページにリダイレクト
        	req.getRequestDispatcher("../staff/Card/fish_card_make_done.jsp").forward(req, res);
        } else {
            // 保存が失敗した場合、エラーメッセージを設定
            req.setAttribute("error", "カード情報の保存に失敗しました。");
            req.getRequestDispatcher("/common/error.jsp").forward(req, res);
        }

	}

	}