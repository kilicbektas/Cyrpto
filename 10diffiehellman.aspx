<%@ Page Title="" Language="C#" MasterPageFile="~/anasablon.Master" AutoEventWireup="true" CodeBehind="10diffiehellman.aspx.cs" Inherits="crypto._10diffiehellman" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
		<meta charset="utf-8"/>
		<meta name="viewport" content="width=device-width, initial-scale=1.0"/>

		<link rel='stylesheet' type='text/css' href='http://fonts.googleapis.com/css?family=Roboto:100,100italic,200,300,400,400italic,700%7COpen+Sans:300italic,400,300,700'>
		<link rel="stylesheet" type="text/css" href="./css/foundationdif.min.css" />
		<link rel="stylesheet" type="text/css" href="./css/styledif.css" />

		<title>Diffie Hellman Implementation</title>
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
	
	<!--BURASI İLK PART-->
	<div class="line">
	<p>burada 1., 2., 3. ve 4. adım gerçekleşecektir.</p>
		<div class="row small">
			<div class="large-4 columns">
				<label>g değeri
					<input type="number"  id="shared-base" 
					onkeypress='return event.charCode >= 48 && event.charCode <= 57' />
				</label>
			</div>
			<div class="large-4 columns">
				<label>α ya da b değeri
					<input type="number"  id="shared-integer" 
					onkeypress='return event.charCode >= 48 && event.charCode <= 57' />
				</label>
			</div>
			<div class="large-4 columns">
				<label>p değeri
					<input type="number"  id="shared-prime" 
					onkeypress='return event.charCode >= 48 && event.charCode <= 57' />
				</label>
			</div>
		</div>
		<div class="row small">
			<div class="large-12 columns">
				<label>A ya da B değeri (Bu alanı doldurmayın!)
					<input type="number"  id="shared-key"  readonly/>
				</label>
			</div>
		</div>	
	</div>

	<!--BURASI 2. PART-->
	<div class="line">
		<p>burada 5., 6. ve 7. adım gerçekleşir.</p>
		<div class="row small">
			<div class="large-4 columns">
				<label>A ya da B değeri
					<input type="number"  id="secret-shared" 
					onkeypress='return event.charCode >= 48 && event.charCode <= 57' />
				</label>
			</div>
			<div class="large-4 columns">
				<label>α ya da b değeri
					<input type="number"  id="secret-integer" 
					onkeypress='return event.charCode >= 48 && event.charCode <= 57' />
				</label>
			</div>
			<div class="large-4 columns">
				<label>p değeri
					<input type="number"  id="secret-prime" 
					onkeypress='return event.charCode >= 48 && event.charCode <= 57' />
				</label>
			</div>
		</div>
		<div class="row small">
			<div class="large-12 columns">
				<label>Ortak gizli anahtar(Bu alanı doldurmayın!)
					<input type="number"  id="secret-key"  readonly/>
				</label>
			</div>
		</div>		
	</div>

	<!--BURASI 3. PART-->
	<div class="line">
		<p>bu alanda elimizdeki verilerle gizli olan α , b ve ortak gizli anahtarı çözüyoruz</p>
		<div class="row small">
			<div class="large-3 columns">
				<label>g değeri
					<input type="number"  id="bruteforce-base" 
					onkeypress='return event.charCode >= 48 && event.charCode <= 57' />
				</label>
			</div>
			<div class="large-3 columns">
				<label>p değeri
					<input type="number"  id="bruteforce-prime" 
					onkeypress='return event.charCode >= 48 && event.charCode <= 57' />
				</label>
			</div>
			<div class="large-3 columns">
				<label>bilinen A
					<input type="number"  id="bruteforce-shared-a" 
					onkeypress='return event.charCode >= 48 && event.charCode <= 57' />
				</label>
			</div>
			<div class="large-3 columns">
				<label>bilinen B
					<input type="number"  id="bruteforce-shared-b" 
					onkeypress='return event.charCode >= 48 && event.charCode <= 57' />
				</label>
			</div>
		</div>
		<div class="row small">
			<div class="large-6 columns">
				<label>gizli α (Bu alanı doldurmayın!)
					<input type="number"  id="bruteforce-integer-a"  readonly/>
				</label>
			</div>
			<div class="large-6 columns">
				<label>gizli b (Bu alanı doldurmayın!)
					<input type="number"  id="bruteforce-integer-b"  readonly/>
				</label>
			</div>
		</div>
		<div class="row small">
			<div class="large-12 columns">
				<label>Ortak gizli anahtar(Bu alanı doldurmayın!)
					<input type="number"  id="bruteforce-key" readonly />
				</label>
			</div>
		</div>
		<div class="row small">
			<div class="large-12 columns">
				<a id="bruteforce-button" class="button expand">Şifreyi Çöz</a>
			</div>
		</div>
	</div>
			
	<script src="js/difjquery.min.js"></script>
	<script src="js/diffoundation.min.js"></script>
	<script src="js/diffie-hellman.js"></script>
	<script src="js/difapps.js"></script>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="javascript" runat="server">
</asp:Content>