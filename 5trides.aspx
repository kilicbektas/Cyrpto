<%@ Page Title="" Language="C#" MasterPageFile="~/anasablon.Master" AutoEventWireup="true" CodeBehind="5trides.aspx.cs" Inherits="crypto._5trides" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <meta http-equiv="content-type" content="text/html;charset=utf-8">
    <link rel="stylesheet" type="text/css" href="./css/foundationdif.min.css" />
	<link rel="stylesheet" type="text/css" href="./css/styledif.css" />
    <title>KriptoluYorum | 3DES Şifreleme</title>
        <style type="text/css">
        textarea {
            width: 520px;
            height: 82px;
        }
        body {
            font-size: 16px
        }
        input {
            font-size: 16px
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="AnaKodDizini" runat="server">
    <br>
    <h3>3DES Algoritması</h3>
    <hr>
    <p>
        3 kez üst üste uygulanan DES algoritmasına eşdeğerdir.
    </p>
    <hr>
    <h3>Uygulaması</h3>
    <br>
    <div class="line">
    Kullanacağınız Key' i Yazınız (Yalnızca 8 karakter olmalı )
        <input id="txtKey" type="text" onfocus="this.select ()" value="key" maxlength="8">
    
    Plain Text: <br>
    <textarea id="plainText">hello123</textarea>

    <input type="button" value="  Şifrele  " onclick="sifrele()">
    <input type="button" value="  Çöz  " onclick="coz()">
    <hr>
    Cipher Text: <br>
    <textarea id="cipherText"></textarea>

    </div>
    <script src="js/tripledes.js"></script>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="javascript" runat="server">

</asp:Content>
