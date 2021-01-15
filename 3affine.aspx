<%@ Page Title="" Language="C#" MasterPageFile="~/anasablon.Master" AutoEventWireup="true" CodeBehind="3affine.aspx.cs" Inherits="crypto._3affine" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>KriptoluYorum | Affine(Doğrusal) Şifreleme</title>
	<link rel="stylesheet" type="text/css" href="./css/foundationdif.min.css" />
	<link rel="stylesheet" type="text/css" href="./css/styledif.css" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="AnaKodDizini" runat="server">
    <br>
    <h3>Affine(Doğrusal) şifreleme</h3>
    <br>
    <p>
        Affine şifreleme ya da doğrusal şifreleme geometrik bir şifreleme yöntemidir.
        <br><br>
        <strong>y = ax+b (mod n)</strong>
        <br><br>
        Şifreleme yapılırken verilmesi gereken parametreler :
        <br><br>
        1 — Şifrelenecek metin.
        <br><br>
        2 — Anahtar olan a ve b değerleri.
        <br><br>
    </p>
    <hr>
    <h3>Algoritması</h3>
    <br>
    <p><strong>1.</strong> Şifrelencek metinin bütün karakterleri alfabedeki değerine dönüştürülür.</p>
    <p><strong>2.</strong> Her karakter için <strong>y = ax+b (mod n)</strong> işlemi uygulanır, n değeri = alfabedeki karakter sayısıdır.</p>
    <p><strong>3.</strong> Her değerin sonucu alfabedeki karaktere denk gelecek şekilde yazılır.</p>
    <p><strong>4.</strong> Şifreyi çözerken metin tek tek karakterlere ayrılır.</p>
    <p><strong>5.</strong> a.z mod 26 = 1 için uygun z değeri bulunur (26=İngilizce alfabesi ve a değeri başta girilmişti). </p>
    <p><strong>6.</strong> Uygun z değeri bulunduktan sonra her değere <strong>D(x) = z.(y-b) mod n</strong> işlemi yapılır.</p>
    <p><strong>7.</strong> Değerler yerleştirilince şifre tekrar çözülmiş olur.</p>
    <hr>
    <h3>Uygulaması</h3>
    <br>

    <form>
        <div class="line">
            <p>Plaintext (Lütfen sadece KÜÇÜK HARF GİRİNİZ)</p>
            <textarea name="p" rows="2" cols="50" wrap="soft">sakaryauniversitesi</textarea>
            <div class="row">
                <div class="small-1 columns"><p> a = </p></div>
                <div class="large-2 columns">



                    <select id="mult" size="1">
                        <option>1</option><option>2</option><option>3</option><option>4</option><option>5</option>
                        <option>6</option><option>7</option><option>8</option><option>9</option><option>10</option>
                        <option>11</option><option>12</option><option>13</option><option>14</option><option>15</option>
                        <option>16</option><option>17</option><option>18</option><option>19</option><option>20</option>
                        <option>21</option><option>22</option><option>23</option><option>24</option><option>25</option>
                    </select>
                </div>
                <input name="btnDe" value="^    Çöz    ^" onclick="Decrypt(this.form)" type="button">       
            </div>
            <br>
            <div class="row">
                <div class="small-1 columns"><p> b = </p></div>
                <div class="large-2 columns">
                    <select id="add" size="1">
                        <option>0</option><option>1</option><option>2</option><option>3</option><option>4</option>
                        <option>5</option><option>6</option><option>7</option><option>8</option><option>9</option>
                        <option>10</option><option>11</option><option>12</option><option>13</option><option>14</option>
                        <option>15</option><option>16</option><option>17</option><option>18</option><option>19</option>
                        <option>20</option><option>21</option><option>22</option><option>23</option><option>24</option>
                    <option>25</option>
                    </select>
                </div>

                

                <input name="btnEn" value="v  Şifrele  v" onclick="Encrypt(this.form)" type="button">
            </div>
            <br>
            <p>Ciphertext</p>
            <textarea name="c" rows="2" cols="50" wrap="soft"></textarea>
        </div>
    </form>


    <script src="js/affine.js"></script>
</asp:Content>

