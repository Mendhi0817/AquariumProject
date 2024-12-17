package manager;

import java.nio.file.Paths;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import DAO.FishCardDAO;
import bean.FishCard;
import tool.Action;


public class FishCardEditDoneAction extends Action {

	public void execute(HttpServletRequest req, HttpServletResponse res) throws Exception {
        HttpSession session = req.getSession();

        // 削除対象のカードIDを取得
    	int cardId = Integer.parseInt(req.getParameter("cardId"));

        // FishCardDAO を使用してデータベースから削除
        FishCardDAO fishcardDAO = new FishCardDAO();
        fishcardDAO.delete(cardId);

        // name属性がpictのファイルをPartオブジェクトとして取得
        Part part = req.getPart("imageUpload");
        String path = "";

        // imageUpload

        	// Content-Disposition ヘッダーを取得してファイル名を抽出
            String contentDisposition = part.getHeader("content-disposition");
            String fileName = null;
            for (String content : contentDisposition.split(";")) {
                if (content.trim().startsWith("filename")) {
                    fileName = content.substring(content.indexOf("=") + 1).trim().replace("\"", "");
                    fileName = Paths.get(fileName).getFileName().toString(); // フルパスの場合の対応
                    break;
                }
            }
          // fileName = null || (fileName.isEmpty()
          if(fileName != null && !(fileName.isEmpty())){

            // JPG形式のみ許可するバリデーション
            if (!fileName.toLowerCase().endsWith(".jpg") && !fileName.toLowerCase().endsWith(".jpeg")) {
                req.setAttribute("error", "JPGまたはJPEG形式の画像をアップロードしてください。");
                req.getRequestDispatcher("/common/error.jsp").forward(req, res);
                return;
            }

            System.out.println("ファイル名: " + fileName);

            // 取得したファイルを指定のフォルダに保存
            path = "C:/FishCard/" + fileName;
            part.write(path);

        // cardImage
        }else{
        	path = req.getParameter("cardImage");
        }



        // text、titleを取得
        String title = req.getParameter("title");
        String text = req.getParameter("text");

        // FishCardオブジェクトを作成して、取得したtitle、textと画像パスをセット
        FishCard fish = new FishCard();
        fish.setCardTitle(title);
        fish.setCardText(text);
        fish.setCardImage(path);

        // FishCardDAOを使用してデータベースに保存
        FishCardDAO fishcardDao = new FishCardDAO();
        boolean saved = fishcardDao.save(fish);

        // リクエストスコープに保存
        session.setAttribute("fish", fish);

        if (saved) {
            // 保存が成功した場合、成功ページにリダイレクト
		req.getRequestDispatcher("../staff/Card/fish_card_edit_done.jsp").forward(req, res);
        } else {
            // 保存が失敗した場合、エラーメッセージを設定
            req.setAttribute("error", "カード情報の保存に失敗しました。");
            req.getRequestDispatcher("/common/error.jsp").forward(req, res);
        }
	}
}