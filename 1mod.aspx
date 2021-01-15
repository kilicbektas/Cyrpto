<%@ Page Title="" Language="C#" MasterPageFile="~/anasablon.Master" AutoEventWireup="true" CodeBehind="1mod.aspx.cs" Inherits="crypto._1mod" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>KriptoluYorum | Yüksek Mertebeden Mod Almak</title>
    <link rel="stylesheet" type="text/css" href="./css/foundationdif.min.css" />
	<link rel="stylesheet" type="text/css" href="./css/styledif.css" />
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="AnaKodDizini" runat="server">
<br>
<h3>Yüksek Mertebeli Sayıların Modu</h3>
<hr>
<br>
<p>
    Herhangi bir değerin modunu almak kolay olabilir, üslü sayıların modunu 
    almak da belli ölçülerce kolay olur. Diyelim ki 6^10 (mod6) dediğimizde
    6 nın 6 ya bölümü zaten 0 olduğu için cevap her türlü 0 oluyor. Fakat
    6000^6001 (mod6002) dersek? Cevap hayli bir zor ve dafalarca işlem
    gerektirir. Burada sizler için bir simülasyon hazırladık. Burada cevabı 
    saliseler içinde öğrenebilirsiniz... : 
</p>
<br>
<hr>
<div class="line">
    <div class="row small">
        <div class="large-4 columns"><p>Sayıyı Girin :</p></div>
        <div class="large-6 columns"><input id="text1" type="number"></div>
    </div>
    <div class="row small">
        <div class="large-4 columns"><p>Üssünü Girin :</p></div>
        <div class="large-6 columns"><input id="text2" type="number"></div>
    </div>
    <div class="row small">
        <div class="large-4 columns"><p>Modunu Girin :</p></div>
        <div class="large-6 columns"><input id="text3" type="number"></div>
    </div>
    <div class="row small">
        <div class="large-12 columns">
            <button onclick="mod()" type="button" class="button expand">HESAPLA</button>
        </div>
    </div>
    <div class="row small">
       <div class="large-4 columns"><p>Cevap :</p></div>
       <div class="large-6 columns"><input id="text4" type="number" readonly></div>
    </div>
</div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="javascript" runat="server">
<script>
    function mod() {

        var diger = 1;
        var sayi = document.getElementById("text1").value;
        var us = document.getElementById("text2").value;
        var mod = document.getElementById("text3").value;

        while (us > 1) {
            if (us % 2 == 1) {
                diger *= sayi;
                us--;
                diger = diger % mod;
            }
            else {
                sayi *= sayi;
                us /= 2;
                sayi = sayi % mod;
            }
        }
        sayi = (sayi * diger) % mod;

        document.getElementById("text4").value = sayi;
    }
</script>

</asp:Content>
