package bean;

import org.opencv.core.Core;
import org.opencv.core.Mat;
import org.opencv.highgui.HighGui;
import org.opencv.videoio.VideoCapture;

public class Camera {
    public static void main(String[] args) {
        // 1. OpenCVのネイティブライブラリをロード
        System.loadLibrary(Core.NATIVE_LIBRARY_NAME);

        // 2. カメラデバイスを初期化
        VideoCapture camera = new VideoCapture(0); // カメラID (0: デフォルトカメラ)

        if (!camera.isOpened()) {
            System.out.println("カメラが見つかりません。");
            return;
        }

        // 3. 映像データを格納するMatオブジェクトを作成
        Mat frame = new Mat();

        // 4. ループで映像を取得して表示
        while (true) {
            if (camera.read(frame)) { // カメラ映像をフレームに読み込む
                HighGui.imshow("カメラ映像", frame); // ウィンドウに表示
                if (HighGui.waitKey(30) >= 0) { // キー入力があればループを終了
                    break;
                }
            } else {
                System.out.println("フレームの取得に失敗しました。");
                break;
            }
        }

        // 5. リソースを解放
        camera.release();
        HighGui.destroyAllWindows();
    }
}
