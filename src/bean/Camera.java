package bean;

import java.awt.FlowLayout;
import java.awt.image.BufferedImage;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;

import javax.swing.JFrame;
import javax.swing.JTextArea;

import com.github.sarxos.webcam.Webcam;
import com.github.sarxos.webcam.WebcamPanel;
import com.github.sarxos.webcam.WebcamResolution;
import com.google.zxing.BinaryBitmap;
import com.google.zxing.LuminanceSource;
import com.google.zxing.MultiFormatReader;
import com.google.zxing.NotFoundException;
import com.google.zxing.Result;
import com.google.zxing.client.j2se.BufferedImageLuminanceSource;
import com.google.zxing.common.HybridBinarizer;


public class Camera extends JFrame implements Runnable, ThreadFactory{


	private Executor executor = Executors.newSingleThreadExecutor(this);

	private Webcam webcam = null;
	private WebcamPanel panel = null;
	private JTextArea textarea = null;

	public Camera() {
		super();

		setLayout(new FlowLayout());
		setTitle("Read QRCode"); //アプリのタイトル
		setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);

		java.awt.Dimension size = WebcamResolution.QVGA.getSize();

		//Webカメラ選択　index[0]のWebカメラ選択
		webcam = Webcam.getWebcams().get(0);
		webcam.setViewSize(size);

		panel = new WebcamPanel(webcam);
		panel.setPreferredSize(size);
		panel.setFPSDisplayed(true);

		//QRコード結果表示テキストエリア
		textarea = new JTextArea();
		textarea.setEditable(false);
		textarea.setPreferredSize(size);

		//コンテナ追加
		add(panel);
		add(textarea);

		//windowsサイズ変更
		pack();

		//画面表示
		setVisible(true);

		executor.execute(this);
	}

	@Override
	public void run() {

		//ループ処理
		do {
			try {
				Thread.sleep(100);
			} catch (InterruptedException e) {
				e.printStackTrace();
			}

			Result result = null;  //QRcode結果格納
			BufferedImage image = null;  //イメージ格納

			//QRコード読取
			if (webcam.isOpen()) {

				//映像のイメージを取得
				if ((image = webcam.getImage()) == null) {
					continue;
				}

				//ビットマップ作成
				LuminanceSource source = new BufferedImageLuminanceSource(image);
				BinaryBitmap bitmap = new BinaryBitmap(new HybridBinarizer(source));

				//QRコードをデコードしてデータ取得
				try {
					result = new MultiFormatReader().decode(bitmap);
				} catch (NotFoundException e) {
					// fall thru, it means there is no QR code in image
				}
			}

			//データがある場合
			if (result != null) {
				//テキストエリアに表示させる
				textarea.setText(result.getText());
			}


		} while (true);
	}


	@Override
	public Thread newThread(Runnable r) {
		Thread t = new Thread(r, "example-runner");
		t.setDaemon(true);
		return t;
	}

	public static void main(String[] args) {

		new Camera();
	}

}
