<%@ Page Title="" Language="C#" MasterPageFile="~/anasablon.Master" AutoEventWireup="true" CodeBehind="6asal.aspx.cs" Inherits="crypto._6asal" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>KriptoluYorum | Aralarında Asal Sayılar</title>
    <link rel="stylesheet" type="text/css" href="./css/foundationdif.min.css" />
	<link rel="stylesheet" type="text/css" href="./css/styledif.css" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="AnaKodDizini" runat="server">

    <br>
    <h3>Aralarında Asal</h3>
    <hr>
    <p>
        Girilen 2 sayının aralarında asal olup olmadığını kontrol edelim :
        Özellikle büyük sayılarla işiniz daha da kolaylaşacaktır.
    </p>
    <br>
    <h3>Uygulama</h3>
    <hr><br><br>

    <div class="line">
    <div class="row small">
        <div class="large-3 columns"><p>Sayı 1 :</p></div>
        <div class="large-7 columns"><input id="text1" type="number"></div>
    </div>
    <div class="row small">
        <div class="large-3 columns"><p>Sayı 2 :</p></div>
        <div class="large-7 columns"><input id="text2" type="number"></div>
    </div>
    <div class="row small">
        <div class="large-12 columns"></div>
        <button onclick="aralarindaAsal()" type="button" class="button expand">Kontrol Et</button>
    </div>
    <div class="row small">
        <div class="large-3 columns"><p>Sonuç :</p></div>
        <div class="large-7 columns"><input id="text3" type="text" readonly></div>
    </div>
    </div>

</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="javascript" runat="server">
<script>
    function aralarindaAsal() {

        var sonuc = new Boolean(false);
        var ilkSayi = document.getElementById("text1").value;
        var ikinciSayi = document.getElementById("text2").value;
        var kucukOlanSayi;
        kucukOlanSayi = ikinciSayi;

        if (ilkSayi < ikinciSayi) {
            kucukOlanSayi = ilkSayi;
        }
    
        for (var i = 2; i <= kucukOlanSayi; i++)
        {
            if (ilkSayi % i == 0 && ikinciSayi % i == 0)
            {
                sonuc = true;
            }
        }

        if(sonuc==true)
        {
            document.getElementById("text3").value = "ASAL DEĞİLDİR!";
        }
        if (sonuc == false)
        {
            document.getElementById("text3").value = "ASALDIR";
        }  
    }
</script>
</asp:Content>
