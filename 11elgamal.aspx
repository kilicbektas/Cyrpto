<%@ Page Title="" Language="C#" MasterPageFile="~/anasablon.Master" AutoEventWireup="true" CodeBehind="11elgamal.aspx.cs" Inherits="crypto._11elgamal" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
		<link rel="stylesheet" type="text/css" href="./css/foundationdif.min.css" />
		<link rel="stylesheet" type="text/css" href="./css/styledif.css" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="AnaKodDizini" runat="server">
    <br>
    <h3>El Gamal</h3>
    <br>
    <p>
        ElGamal şifrelemesi, Diffie-Hellman anahtar alış-verişi'ne dayanan
        bir asimetrik şifreleme algoritması olup Taher Elgamal tarafından 
        1985 yılında ortaya çıkmıştır. Diffie-Hellman ile aynı yapıya sahip
        fakat daha da güvenli olması amacıyla geliştirimiştir.
    </p>
    <hr>
    <h3>Algoritması</h3>
    <br>
    <p>1) Alice Bob a göndereceği x = 26 mesajını seçer </p>
    <p>2) Bob p = 29 ve α = 2 sayılarını seçer </p>
    <p>3) Bob özel anahtarını seçer ( KprBob = d = 12)</p>
    <p>4) Bob 𝜷 = (α^d)modp hesaplaması yapar( 2^12mod29 = 7 ) </p>
    <p>5) Alice özel anahtarını seçer (i = 5)</p>
    <p>6) Alice kE = (α^i)modp hesaplaması yapar ( 2^5mod29 = 3 )</p>
    <p>7) Alice kM = (𝜷^i)modp hesaplaması yapar ( 7^5mod29 = 16)</p>
    <p>8) Alice (y = x * kM) formülüyle Encrypt eder ( 26*16mod29 = 10)</p>
    <p>9) Bob, kM = (kE^d)modp hesaplaması yapar ( 3^12mod29 = 16)</p>
    <p>10) Bob, x = (y * kM^(-1)modp)formülüyle Decrypt eder( 10*20mod29 = 26 )</p>
    <hr>
    <h3>Uygulaması</h3>
    <br>

    <div class="line">
        <p><strong>Key Generation</strong></p>
        <div class="row small">
            <div class="large-1 columns">p:</div>
            <div class="large-3 columns"><input id="P" type="number" min="1"></div>
            <div class="large-6 columns">(büyük bir asal sayı değeri girin)</div>
            <div id="pError" style="color: crimson"></div>
        </div>
        <div class="row small">
            <div class="large-1 columns">𝛼:</div>
            <div class="large-3 columns"><input id="G" type="number" min="1"></div>
            <div class="large-6 columns">(alfa değerini girin)</div>
            <div id="gError" style="color: crimson"></div>
        </div>
        <div class="row small">
            <div class="large-1 columns">d:</div>
            <div class="large-3 columns"><input id="X" type="number"></div>
            <div class="large-6 columns">(d değeri 1 ile p - 1 arasında olmalı)</div>
            <div id="xError" style="color: crimson"></div>
        </div>
        <div class="row small">
            <div class="large-1 columns">i :</div>
            <div class="large-3 columns"><input id="Q" type="number" min="1"></div>
            <div class="large-6 columns">(i değeri 1 ile p -2 arasında asal sayı olmalı)</div>
            <div id="qError" style="color: crimson"></div>
        </div>
        <div class="row small">
            <div class="large-12 columns">
                <button class="button expand" onclick="generateKey()">Generate</button>
            </div>
        </div>
    </div>
    <div class="line">
        <div class="row small">
            <div class="large-2 columns">𝜷:</div>
            <div class="large-3 columns"><input id="Y" type="number" readonly></div>
            <div class="large-6 columns">(𝜷 = 𝛼<sup>d</sup> mod p)</div>
        </div>
        <div class="row small">
            <div class="large-2 columns">Public Key:</div>
            <div class="large-3 columns"><input id="pubkey" type="text" readonly></div>
            <div class="large-6 columns">({p, 𝛼, 𝜷} değerleri Bob' dan Alice' e gönderilir)</div>
        </div>
        <div class="row small">
            <div class="large-2 columns">k<sub>E</sub>:</div>
            <div class="large-3 columns"><input id="C1" type="number" readonly></div>
            <div class="large-6 columns">(k<sub>E</sub> = 𝛼<sup>i</sup> mod p)</div>
        </div>
        <div class="row small">
            <div class="large-2 columns">k<sub>M</sub>:</div>
            <div class="large-3 columns"><input id="kM" type="number" readonly></div>
            <div class="large-6 columns">(k<sub>M</sub> = 𝜷<sup>i</sup> mod p)</div>
        </div>
    </div>

    <div class="line">
    <p><strong>Encryption and Decryption</strong></p>
        <div class="row small">
            <div class="large-2 columns">x:</div>
            <div class="large-3 columns"><input id="M" type="number"></div>
            <div class="large-6 columns">(p değerinden küçük olmalı)</div>
            <div id="mError" style="color: crimson"></div>
        </div>
        <div class="row small">
            <div class="large-12 columns">
                <button class="button expand" id="encryptButton" onclick="encryptButtonClicked()" disabled>Encrypt</button>
            </div>
        </div>
        <div class="row small">
            <div class="large-2 columns">y:</div>
            <div class="large-3 columns"><input id="C2" type="number" readonly></div>
            <div class="large-6 columns">(y = k<sub>M</sub> * x mod p)</div>
        </div>
        <div class="row small">
            <div class="large-2 columns">y, k<sub>E</sub>:</div>
            <div class="large-3 columns"><input id="cipher" type="text" readonly></div>
            <div class="large-6 columns">(y, k<sub>E</sub> değerleri Alice' den Bob' a gönderilir)</div>
        </div>
        <div class="row small">
            <div class="large-2 columns">k<sub>M</sub><sup>-1</sup>:</div>
            <div class="large-3 columns"><input id="ters" type="number" readonly></div>
            <div class="large-6 columns">k<sub>M</sub>' nin p modunda çarpmaya göre tersi elde edilir</div>
        </div>
        <div class="row small">
            <div class="large-12 columns">
                <button class="button expand" id="decryptButton" onclick="decryptButtonClicked()" disabled>Decrypt</button>
            </div>
        </div>
        <div class="row small">
            <div class="large-2 columns">Decrypted :</div>
            <div class="large-3 columns"><input id="decrypted" type="number" readonly></div>
            <div class="large-3 columns">(x = (y * k<sub>M</sub><sup>-1</sup>) mod p)</div>
        </div>
    </div>
    
    <script src="js/elgamal.js"></script>

</asp:Content>
