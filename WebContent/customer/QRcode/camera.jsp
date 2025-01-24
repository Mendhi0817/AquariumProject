<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="ja">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=0.2, maximum-scale=4,user-scalable=yes">
<!-- jsQR.jsの読み込み -->
<script src="../customer/QRcode/dist/jsQR.js"></script>
<script>
  var video,tmp,tmp_ctx,qr,prev,prev_ctx,w,h,m,x1,y1;
  window.addEventListener("load",function(){
    video=document.createElement('video');
    video.setAttribute("autoplay","");
    video.setAttribute("muted","");
    video.setAttribute("playsinline","");
    video.onloadedmetadata = function(e){video.play();};
    prev=document.getElementById("preview");
    prev_ctx=prev.getContext("2d", {willReadFrequently:true});
    tmp = document.createElement('canvas');
    tmp_ctx = tmp.getContext("2d", {willReadFrequently:true});

    qr = document.getElementById("qr");
    //カメラ使用の許可ダイアログが表示される
    navigator.mediaDevices.getUserMedia(
      //マイクはオフ, カメラの設定   できれば背面カメラ    できれば640×480
      {"audio":false,"video":{"facingMode":"environment","width":{"ideal":640},"height":{"ideal":480}}}
    ).then( //許可された場合
      function(stream){
        video.srcObject = stream;
        //0.5秒後にスキャンする
        setTimeout(Scan,500);
      }
    ).catch( //許可されなかった場合
      function(err){qr.innerHTML=qr.innerHTML+err+'\n';}
    );
  });
  function Scan(){
    //選択された幅高さ
    w=video.videoWidth;
    h=video.videoHeight;
    //画面上の表示サイズ
    prev.style.width=(w/2)+"px";
    prev.style.height=(h/2)+"px";
    //内部のサイズ
    prev.setAttribute("width",w);
    prev.setAttribute("height",h);
    if(w>h){m=h*0.5;}else{m=w*0.5;}
    x1=(w-m)/2;
    y1=(h-m)/2;
    prev_ctx.drawImage(video,0,0,w,h);
    prev_ctx.beginPath();
    prev_ctx.strokeStyle="rgb(255,0,0)";
    prev_ctx.lineWidth=2;
    prev_ctx.rect(x1,y1,m,m);
    prev_ctx.stroke();
    tmp.setAttribute("width",m);
    tmp.setAttribute("height",m);
    tmp_ctx.drawImage(prev,x1,y1,m,m,0,0,m,m);
    let imageData = tmp_ctx.getImageData(0,0,m,m);
    let scanResult = jsQR(imageData.data,m,m);


    if(scanResult){
    	console.log("読み取り後のしょっり");

      var form = qr_form.form;
      //QRコードをスキャンした結果を出力
      qr.value =scanResult.data;

      console.log(qr.value);


    //form.submit();
      //qr.scrollTop = qr.scrollHeight;
    }

    //let inputButton = document.getElementById("qr");
    //inputButton.click();


    setTimeout(Scan,200);
  }
</script>
</head>
<body>
  <p>ピントを合わせて、QRコードをカメラ映像の赤枠内にあわせると読み取ります</p>
  <div><canvas id="preview"></canvas></div>
  <form id = "qr_form" action = "../manager/CameraExecute.action" method = "post">
  </form>

  <form action="../manager/FishCardList.action" method="post">
                    <input type="submit" value="戻る">
                </form>


    <input id="qr"  name = "qr" value = "" type = "submit"></input>



  </form>
</body>
</html>
