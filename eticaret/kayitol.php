<?php
require(
    "nedmin/netting/baglan.php"
);

if(isset($_POST["Kullanici"])){
    $Kullanici = $_POST["Kullanici"];
}else{
    $Kullanici ="";
}
if(isset($_POST["password"])){
    $password = $_POST["password"];
}else{
    $password ="";
}
$md5li = md5($password);


if(($Kullanici!="") and ($password!="") ){
    $UyeSorgusu = $db->prepare("INSERT INTO uyeler (ad,sifre)  values (?,?)" );
    $UyeSorgusu->execute([$Kullanici,$md5li]);
    $KayitKontrol = $UyeSorgusu ->rowCount();
    if($KayitKontrol >0){
            echo "Kayit Başarili";
    }else{
        echo "Kayit Başarisiz";
    }

}else{
    echo "Eksik bilgi";
}



?>