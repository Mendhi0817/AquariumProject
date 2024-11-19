package bean;

import java.awt.image.BufferedImage;
import java.io.File;

import javax.imageio.ImageIO;

import com.google.zxing.Binarizer;
import com.google.zxing.BinaryBitmap;
import com.google.zxing.LuminanceSource;
import com.google.zxing.Result;
import com.google.zxing.client.j2se.BufferedImageLuminanceSource;
import com.google.zxing.common.HybridBinarizer;
import com.google.zxing.qrcode.QRCodeReader;

public class Camera1 {

    public static void main(String[] args) {
        try {
            BufferedImage img = ImageIO.read(new File("zxtest.png"));
            LuminanceSource src = new BufferedImageLuminanceSource(img);
            Binarizer bin = new HybridBinarizer(src);
            BinaryBitmap bm = new BinaryBitmap(bin);

            QRCodeReader qrr = new QRCodeReader();
            Result result = qrr.decode(bm);
            String tdata = result.getText();
            System.out.println(tdata);
            byte[] bdata = tdata.getBytes();
            for (byte d: bdata)
                System.out.printf("%02x ", d);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
