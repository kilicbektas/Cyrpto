<%@ Page Title="" Language="C#" MasterPageFile="~/anasablon.Master" AutoEventWireup="true" CodeBehind="12modters.aspx.cs" Inherits="crypto._12modters" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" type="text/css" href="./css/foundationdif.min.css" />
	<link rel="stylesheet" type="text/css" href="./css/styledif.css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="AnaKodDizini" runat="server">
    <br>
    <h3>Modun Çarpmaya Göre Tersini almak</h3>
    <hr>
    <p>
        Amacımız burada bir modun çarpmaya göre tersini kolaylıkla bulmaktır.
        Sadece inputları girdiğimizde sonucu hesaplayabiliriz.
    </p>
    <h3>Uygulama</h3>
    <hr>
    <br>
    <div class="line">
        <div class="row small">
            <div class="large-4 columns"><p>Tersi Alınacak Sayı :</p></div>
            <div class="large-7 columns"><input id="sayi" type="number"></div>
        </div>
        <div class="row small">
            <div class="large-4 columns"><p>Mod Değeri :</p></div>
            <div class="large-7 columns"><input id="mod" type="number"></div>
        </div>
        <div class="row small">
            <div class="large-12 columns"><button onclick="findInverse()" type="button" class="button expand">Tersini Bul</button></div>  
        </div>
        <div class="row small">
            <div class="large-4 columns"><p>Sonuç :</p></div>
            <div class="large-7 columns"><input id="ters" type="number" readonly></div>
        </div>
        <script src="js/modters.js"></script>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="javascript" runat="server">
</asp:Content>
