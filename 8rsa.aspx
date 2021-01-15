<%@ Page Title="" Language="C#" MasterPageFile="~/anasablon.Master" AutoEventWireup="true" CodeBehind="8rsa.aspx.cs" Inherits="crypto._8rsa" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">

    <link rel="stylesheet" type="text/css" href="./css/foundationdif.min.css" />
    <link rel="stylesheet" type="text/css" href="./css/styledif.css" />
    <title>RSA Calculator</title>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="AnaKodDizini" runat="server">
    <br>
    <h3>RSA Şifreleme</h3>
    <br>
    <p>Asimetrik şifreleme algoritmalarından biridir. Public key ve Private key
       olmak üzere 2 adet anahtara sahipir. Public key herkese açık iken, private
       key ise sadece mesajı gönderen tarafından bilinir.
    </p>
    <hr>
    <h3>Algoritması</h3>
    <br>
    <p>1) 2 adet büyük asal sayı seçilir. ( p ve q )</p>
    <p>2) Base adındaki değer hesaplanır ( n = p * q )</p>
    <p>3) Totient fonksiyonu hesaplanır ( ϕ(n) = (p-1) * (q-1) )</p>
    <p>4) Public key : e = ( 1 < e < ϕ(n) ) aralığında bir asal sayı olmalıdır. </p>
    <p>5) Private key : d' dir ve d * e = 1 mod(n) olmalıdır.</p>
    <p>6) Private key : d' dir ve d * e = 1 mod(n) olmalıdır.</p>
    <p>7) Private key : d' dir ve d * e = 1 mod(n) olmalıdır.</p>
    <p>8) Private key : d' dir ve d * e = 1 mod(n) olmalıdır.</p>

    <hr>
    <h3>Uygulaması</h3>
    <br>







    <div class="line">
        <p>
            <span class="step">1)</span>
            2 adet büyük asal sayı seçilir.
            Base adındaki değer hesaplanır<br> ( n = p * q )
        </p>
        <div class="row small">
            <div class="large-3 columns"><p><strong> p : </strong></p></div>
            <div class="large-8 columns"><input type="number" name="p" id="p"></div>
            <div id="pandqerror" style="color: crimson"></div>
        </div>
        <div class="row small">
            <div class="large-3 columns"><p><strong> q : </strong></p></div>    
            <div class="large-8 columns"><input type="number" name="q" id="q"></div>
        </div>

        
    </div>

    <div class="line"> 
        <p>
            <span class="step">2)</span>
            Base adındaki değer hesaplanır ( n = p * q )
        </p>
        <div class="row small">
            <div class="large-12 columns">
                <button class="btn btn-calc" type="submit">n Değerini Hesapla</button>
            </div>
        </div>
        <div class="row small">
            <div class="large-3 columns"><p><strong> ( n = p * q ) : </strong></p></div>  
            <div class="large-8 columns">
                <input type="text" name="findN" id="findN" disabled>
            </div>
        </div>
    </div>


    <div class="line">
        <p>
            <span class="step">3)</span> 
            Totient fonksiyonu hesaplanır ( ϕ(n) = (p-1) * (q-1) )
        </p>
        <div class="row small">
            <div class="large-3 columns"><p><strong> ϕ(n) : </strong></p></div>
            <div class="large-8 columns"><input type="text" name="getR" id="getR" disabled>   </div>
        </div>  
    </div>



    <!--//////////////////////////////////////////////////////////////////////////////////////////////////////-->
    <!--//////////////////////////////////////////////////////////////////////////////////////////////////////-->
    <!--//////////////////////////////////////////////////////////////////////////////////////////////////////-->
    <!--//////////////////////////////////////////////////////////////////////////////////////////////////////-->
    <!--//////////////////////////////////////////////////////////////////////////////////////////////////////-->
    <!--//////////////////////////////////////////////////////////////////////////////////////////////////////-->
    <!--//////////////////////////////////////////////////////////////////////////////////////////////////////-->
    <!--//////////////////////////////////////////////////////////////////////////////////////////////////////-->
    <!--//////////////////////////////////////////////////////////////////////////////////////////////////////-->
    <!--//////////////////////////////////////////////////////////////////////////////////////////////////////-->
    <!--//////////////////////////////////////////////////////////////////////////////////////////////////////-->
    <!--//////////////////////////////////////////////////////////////////////////////////////////////////////-->
    <!--//////////////////////////////////////////////////////////////////////////////////////////////////////-->
    <!--//////////////////////////////////////////////////////////////////////////////////////////////////////-->
    <!--//////////////////////////////////////////////////////////////////////////////////////////////////////-->
    <!--//////////////////////////////////////////////////////////////////////////////////////////////////////-->



    <div class="line">
        <p>
            <span class="step">4)</span> 
            Public key : e = ( 1 < e < ϕ(n) ) aralığında bir asal sayı olmalıdır.
        </p> 
        <div class="row small">
            <div class="large-3 columns"><p> e değerleri : </p></div>
            <div class="large-8 columns"><input type="text" name="ValuesofE" id="ValuesofE" disabled></div>
        </div>
        <div class="row small">
            <div class="large-3 columns"><p> birini seçin : </p></div>
            <div class="large-8 columns"><input type="number" name="getE" id="getE"></div>
        </div>
        <div class="row small">
            <span class="errore "></span>
        </div>
    </div>







    <div class="line">
        <p>
            <span class="step">5)</span> 
            Private key : d' dir ve d * e = 1 mod(n) olmalıdır.
        </p>
        <div class="row small">
            <div class="large-3 columns"><p> d : </p></div>
            <div class="large-8 columns"><input type="number" name="setD" id="setD" disabled></div>
        </div>
        
    </div>




    <div class="line">
        <p>
            <span class="step">6)</span>
            Set public key and private key
        </p>
        <div class="row small">
            <div class="large-4 columns"><p> Public Key {e , n} : </p></div>
            <div class="large-7 columns"><input type="text" name="publicKey" id="publicKey" disabled></div>
        </div>
        <div class="row small">
            <div class="large-4 columns"><p> Private Key {d , n} : </p></div>
            <div class="large-7 columns"><input type="text" name="privateKey" id="privateKey" disabled></div>        
        </div>        
    </div>



    <div class="line">
        <p>
            <span class="step">7)</span> 
            Plaintext M değeri gir : M < N ( C = M <sup>d</sup> (mod n) )
        </p>
        <div class="row small">
            <div class="large-2 columns"><p>Plain :</p></div>
            <div class="large-7 columns"><input type="number" name="msg" id="msg"></div>
        </div>
        <div class="row small">
        </div>

        <span class="ptexterror "></span>
        <label for="msg"></label>
        
        <button type="submit" class="btn btn-encrypt">Şifrele</button>
        <span id="plainResult"></span>
    </div>






    <script src="/js/rsa.js"></script>
</asp:Content>

