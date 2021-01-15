<%@ Page Title="" Language="C#" MasterPageFile="~/anasablon.Master" AutoEventWireup="true" CodeBehind="9eliptikegri.aspx.cs" Inherits="crypto._9eliptikegri" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <title>OpenPGP.js ECC</title>


    <link rel="stylesheet" type="text/css" href="./css/ecc.css" />
    <script src="node_modules/jquery/dist/jquery.min.js"></script>
    <script src="node_modules/openpgp/dist/openpgp.min.js"></script>

    <script>
        // Initialize openpgp worker
        window.openpgp.initWorker({path: 'node_modules/openpgp/dist/openpgp.worker.min.js'});
    </script>

    <script src="ecc.js"></script>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="AnaKodDizini" runat="server">
        <br>
    <h3>Diffie Hellman Anahtar Değişimi</h3>
    <br>
    <p>
        Martin Hellman ve Whitfield Diffie tarafından 1976 yılında tasarlanmış,
        anahtar değişim amacıyla kullanılan özel bir yöntemdir. İki taraf arasında
        güvenilir olmayan bir iletişim varken. Bu anahtar ile amaçlanan, iki taraf
        arasında haberleşmeyi şifreleyerek güvenli kılmaktır.
    </p>
    <hr>
    <h3>Algoritması</h3>
    <br>
    <p>1) Hatta herkesin bileceği g=7 ve p=23 sayıları seçiliyor </p>
    <p>2) Alice a=3 ve Bob b=6 sayılarını gizlice seçiyor </p>
    <p>3) Alice (g^a)modp işlemini yapıyor(A = (7^3)mod23 = 21 )</p>
    <p>4) Bob (g^b)modp işlemini yapıyor(B = (7^6)mod23 = 4 ) </p>
    <p>5) A ve B değerleri hat üzerinden gönderiliyor(Herkes görebilir)</p>
    <p>6) Alice, Bob' dan gelen B=4 sayısını alıp (B^a)modp ile 18 değerini buluyor</p>
    <p>7) Bob, Alice' den gelen A=21 sayısını alıp (A^b)modp ile 18 değerini buluyor</p>
    <hr>
    <h3>Uygulaması</h3>
    <br>

<table>
    <thead>
        <tr>
            <th>Alice</th>
            <th>Encrypted</th>
            <th>Bob</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td class="side"><textarea id="alice-write"></textarea></td>
            <td class="middle"><textarea id="alice-encrypted"></textarea></td>
            <td class="side"><textarea id="bob-read"></textarea></td>
        </tr>
        <tr>
            <td><button id="alice-send" type="button">SEND ></button></td>
            <td></td>
            <td></td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td><textarea id="alice-read"></textarea></td>
            <td><textarea id="bob-encrypted"></textarea></td>
            <td><textarea id="bob-write"></textarea></td>
        </tr>
        <tr>
            <td></td>
            <td></td>
            <td><button id="bob-send" type="button">< SEND</button></td>
        </tr>
    </tbody>
</table>

</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="javascript" runat="server">
</asp:Content>
