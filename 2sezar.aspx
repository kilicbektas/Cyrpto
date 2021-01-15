<%@ Page Title="" Language="C#" MasterPageFile="~/anasablon.Master" AutoEventWireup="true" CodeBehind="2sezar.aspx.cs" Inherits="crypto._2sezar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>KriptoluYorum | Sezar Algoritması</title>
    <link rel="stylesheet" type="text/css" href="./css/foundationdif.min.css" />
	<link rel="stylesheet" type="text/css" href="./css/styledif.css" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="AnaKodDizini" runat="server">
    <br>
    <h3>Sezar Algoritması</h3>
    <hr>
    <p>
        Tarihte ilk kez Romalı lider Jül Sezar tarafından kullanılmıştır.
        Şifrelemenin mantığı tamamen harflerin kaydırılmasına dayanır.
        Harfler tamamen aynı sırada kaydırılır, kaydırma sayısına göre 
        kaç kez kaydırılacağı belirlenir. Kaydırma esnasında alfabenin en 
        sondaki harfi geçilirse tekrar başa sarılır, ya da alfabenin başına
        gelirse tekrar alfabenin sonuna kaydırılır.
        <br><br>
        Diyelim ki A harfini 3 kez kaydıracağız :
        <br><br>
        A = 1, B = 2, C = 3, D = 4  <strong>(Cevap : D)</strong>
        <br><br>
        A harfini 30 kez kaydıracağız :
        <br><br>
        A=1, A = 26, B = 27, C = 28, D = 29, E = 30<strong>(Cevap : E)</strong>
        <br><br>
        <I>Siz de uygulama üzerinden deneme yapabilirsiniz.</I>
    </p>
    <h3>Uygulama</h3>
    <hr>
    <br>

    <div class="line">
        <div class="row small">
            <div class="large-4 columns"><p>Şifrelenecek Metin :</p></div>
            <div class="large-7 columns"><input id="text1" type="text"></div>
        </div>
        <div class="row small">
            <div class="large-4 columns"><p>Sayı Değeri :</p></div>
            <div class="large-7 columns"><input id="text2" type="number" ></div>
        </div>
        <div class="row small">
            <div class="large-12 columns"><button onclick="sezar()" type="button" class="button expand">HESAPLA</button></div>  
        </div>
        <div class="row small">
            <div class="large-4 columns"><p>Şifrelenen Metin :</p></div>
            <div class="large-7 columns"><input id="text3" type="text" readonly></div>
        </div>
    </div>
    <hr>
    <script src="js/sezar.js"></script>
</asp:Content>

