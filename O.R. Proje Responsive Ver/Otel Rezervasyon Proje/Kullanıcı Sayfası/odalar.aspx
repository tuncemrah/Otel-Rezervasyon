﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="odalar.aspx.cs" Inherits="Kullanıcı_Sayfası_yonlendir" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml" lang="en">
<head runat="server">
    <title></title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

    <link href="css/StyleSheet5.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="row">
            <div class="col-md-12">
                <div class="banner">
                    <asp:ImageButton ImageUrl="images/deu.png" runat="server" CssClass="logo" PostBackUrl="~/Kullanıcı Sayfası/Default.aspx" /><p class="p">DOKUZ EYLÜL ÜNİVERSİTESİ</p>
                </div>
            </div>
        </div>
        <center>

    <nav class="navbar navbar-light fixed-bottom" style="background-color:white; border-style:solid">
  <asp:Label runat="server" ID="Label4" CssClass="fiyat" Font-Bold="true" Font-Names="Arial" ForeColor="#002b41" Font-Size="Medium"> FİLTELEME => </asp:Label>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="navbarNav">
  <ul class="navbar-nav ml-auto mr-auto">
<li class="nav-item">
            <asp:Label runat="server" ID="lblOdaFiyat" CssClass="fiyat" Font-Bold="true" Font-Names="Arial"> ODA ÖZELLİKLERİ : </asp:Label><br />

</li>
<li class="nav-item">
            <asp:checkbox text=" Balkon " runat="server" CssClass="chkOzellik" ID="chkBalkon" Height="10px"/><br />
                           <asp:checkbox text=" Mutfak " runat="server" CssClass="chkOzellik" ID="chkMutfak" Height="10px"/>    <br />                     
</li>                                   
<li class="nav-item">                   
                <asp:checkbox text=" Jakuzi " runat="server" CssClass="chkOzellik" ID="chkJakuzi" Height="10px"/><br />
                                <asp:checkbox text=" Sauna " runat="server" CssClass="chkOzellik" ID="chkSauna" Height="10px"/>   <br />                 
</li>                                   
<li class="nav-item">                   
                <asp:checkbox text=" Klima " runat="server" CssClass="chkOzellik" ID="chkKlima" Height="10px"/><br />
                                 <asp:checkbox text=" Televizyon " runat="server" CssClass="chkOzellik" ID="chkTelevizyon" Height="10px"/>         <br />          
</li>                                   
<li class="nav-item">            
                <asp:checkbox text=" Saç Kurutma Makinesi " runat="server" CssClass="chkOzellik" ID="chkSacKurut" Height="10px"/><br />
                                       <asp:checkbox text=" Ses Yalıtımı " runat="server" CssClass="chkOzellik" ID="chkSesYalit" Height="10px"/>   <br />   
</li>                          
      <li class="nav-item">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</li>
<li class="nav-item">
            <asp:Label runat="server" ID="Label1" CssClass="fiyat" Font-Bold="true" Font-Names="Arial"> MANZARA ÖZELLİKLERİ : </asp:Label><br />

</li>
<li class="nav-item">
            <asp:RadioButton GroupName="manzara" text=" Hepsi " runat="server" CssClass="chkOzellik" ID="radHepsi" Height="10px"/><br />
                <asp:RadioButton GroupName="manzara" text=" Deniz Manzarası " runat="server" CssClass="chkOzellik" ID="radDeniz" Height="10px"/><br />

</li>
<li class="nav-item">
                <asp:RadioButton GroupName="manzara" text=" Orman Manzarası " runat="server" CssClass="chkOzellik" ID="radOrman" Height="10px"/><br />
                <asp:RadioButton GroupName="manzara" text=" Dağ Manzarası " runat="server" CssClass="chkOzellik" ID="radDag" Height="10px"/><br />

</li>
<li class="nav-item">
                <asp:RadioButton GroupName="manzara" text=" Şehir Manzarası " runat="server" CssClass="chkOzellik" ID="radSehir" Height="10px"/><br />
                <asp:RadioButton GroupName="manzara" text=" Manzara Yok " runat="server" CssClass="chkOzellik" ID="radMYok" Height="10px"/><br />

</li>
<li class="nav-item">
            <div style="height: 51px; overflow: hidden; display: inline-block;"><a href="#" data-hover="Filtrele" class="islem" runat="server" onserverclick="FiltreClick"> Filtrele </a></div>

</li>                   

                                      </ul>
  </div>
</nav>


<%--<div class="solmenu">
    <div class="solMenuOzellikBaslik">filtreleme / özellik</div>
    <div class="solMenuOzellik">
        <asp:Label runat="server" ID="lblOdaFiyat" CssClass="fiyat" Font-Bold="true" Font-Names="Arial">ODA ÖZELLİKLERİ</asp:Label><br />
        <asp:checkbox text="Balkon" runat="server" CssClass="chkOzellik" ID="chkBalkon"/><br />
        <asp:checkbox text="Mutfak" runat="server" CssClass="chkOzellik" ID="chkMutfak"/><br />
        <asp:checkbox text="Jakuzi" runat="server" CssClass="chkOzellik" ID="chkJakuzi"/><br />
        <asp:checkbox text="Sauna" runat="server" CssClass="chkOzellik" ID="chkSauna"/><br />
        <asp:checkbox text="Klima" runat="server" CssClass="chkOzellik" ID="chkKlima"/><br />
        <asp:checkbox text="Televizyon" runat="server" CssClass="chkOzellik" ID="chkTelevizyon"/><br />
        <asp:checkbox text="Saç Kurutma Makinesi" runat="server" CssClass="chkOzellik" ID="chkSacKurut"/><br />
        <asp:checkbox text="Ses Yalıtımı" runat="server" CssClass="chkOzellik" ID="chkSesYalit"/><br /><br /><br /><br />
        <asp:Label runat="server" ID="Label1" CssClass="fiyat" Font-Bold="true" Font-Names="Arial">MANZARA ÖZELLİKLERİ</asp:Label><br />
        <asp:RadioButton GroupName="manzara" text="Hepsi" runat="server" CssClass="chkOzellik" ID="radHepsi"/><br />
        <asp:RadioButton GroupName="manzara" text="Deniz Manzarası" runat="server" CssClass="chkOzellik" ID="radDeniz"/><br />
        <asp:RadioButton GroupName="manzara" text="Orman Manzarası" runat="server" CssClass="chkOzellik" ID="radOrman"/><br />
        <asp:RadioButton GroupName="manzara" text="Dağ Manzarası" runat="server" CssClass="chkOzellik" ID="radDag"/><br />
        <asp:RadioButton GroupName="manzara" text="Şehir Manzarası" runat="server" CssClass="chkOzellik" ID="radSehir"/><br />
        <asp:RadioButton GroupName="manzara" text="Manzara Yok" runat="server" CssClass="chkOzellik" ID="radMYok"/><br />
        <br />                      
        <div class="btn"><a href="#" data-hover="Filtrele" class="islem" runat="server" onserverclick="FiltreClick">Filtrele</a></div>
                  </div>
    </div>--%>


                  <table>
                  <tr>


                       <td  style="vertical-align:top">
                               <asp:repeater runat="server" ID="OdalarGetir" OnItemCommand="OdalarGetir_ItemCommand">
    <itemtemplate>


<table style="color:#002B41;font:normal 15px 'Century Gothic';">
        <tr>

                                                      <div class="row">

<asp:Label style="margin:10px 0px 0px 5px;width:auto;border:2px solid #002B41;height:1px" class="col-12" Font-Bold="true" Font-Names="Arial" runat="server"></asp:Label>
</div><br />
            <div class="row">
                                                         <div class="col-sm-6">
                           <asp:Label style="padding-top:10px; margin-left:25px"  Font-Bold="true" Font-Names="Arial" runat="server"><%#Eval("ad") %> (<%#Eval("odaKapasite") %>Kişilik)</asp:Label></div>
            <div class="col-sm-6"> <asp:Label style="padding-top:10px; margin-left:25px"  Font-Bold="true" Font-Names="Arial" runat="server">Oda Fiyatı / Açıklama</asp:Label>  
                                                             </div> </div>
                   <div class="row"  style="width: auto; 
                                    height: auto; 
                                     padding: 20px 20px 20px 20px;
                                   -webkit-box-shadow: 0 0 4px 4px #002B41;   
                                   -moz-box-shadow: 0 0 4px 4px #002B41;  
                                   box-shadow: 0 2px 4px 4px #002B41;
                                   margin-left:.4px">
                <asp:image imageurl='<%#Eval("resimAd") %>' class="col-12 col-sm-4" runat="server" ID="odaResim" Style="border:1px solid #002B41; Height:auto; max-height:250px; Width:auto;margin:5px 0px 0px 5px;"/>

               <asp:TextBox class="col-12 col-sm-3" style="border:1px solid #002B41;margin:5px 0px 0px 5px;text-align:center;height:auto;width:220px;min-height:195px" runat="server" ID="txtOdaOzellik" ReadOnly="True" TextMode="MultiLine" BorderStyle="None" Text='<%#Eval("ozellikler") %>' Font-Bold="true" Font-Names="Arial" Font-Size="Small"></asp:TextBox>

                <div class="col-12 col-sm-3"  style="margin:5px 0px 0px 5px;">
                   <div class="row" style="width: auto; height: 65px; text-align: center; padding-top: 5px; border: 1px solid #002B41">
                    <asp:Label class="col-12 col-sm-12" runat="server" ID="lblOdaFiyat" Style="color: #002B41; font: bold 18px/30px 'Arial'; width:auto; text-align:center"><%# Eval("fiyat") %> ₺</asp:Label><br />
                   <asp:Label class="col col-sm" runat="server" ID="Label3" Style="color: #002B41; font: bold 16px/30px 'Arial'; width:auto; text-align:center"><%# Eval("indirimliFiyat") %></asp:Label>
               </div> 
                   <div class="row" style="margin-top:10px; width: auto; height: auto; border: 1px solid #002B41">
            
                           <asp:textbox class="col-12 col-sm-12" runat="server" ID="txtAciklama" Text='<%#Eval("aciklama") %>' style="text-align:center;width:auto;height:100px" ReadOnly="True" TextMode="MultiLine" BorderStyle="None" Font-Bold="true" Font-Names="Arial" Font-Size="Small"/>
              </div>
                </div> 

                  <div class="col-12 col-sm-1" style="margin:5px 0px 0px -.1px;"><center> 
                      <div style="height: 51px; overflow: hidden; display: inline-block;"><asp:LinkButton ID="RezButon" data-hover="Rezervasyon" class="islem" runat="server" CommandName="Rezervasyon" CommandArgument='<%#Eval("ad")+","+Eval("fiyat")%>'>Rezervasyon</asp:LinkButton>
                  </center> </div> </div>  </div><br />
        </tr>
</table>

                </div>
          </itemtemplate>
</asp:repeater>
                           <br /><br /><br /><br /><br /><br /><br /><br /><br /><br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                   <asp:Label runat="server" ID="Label2" CssClass="fiyat" Font-Bold="true" Font-Names="Arial" Visible="false" Font-Size="XX-Large">Aradığınız filtrelemelere göre oda bulunamadı.</asp:Label><br />
                      </td>

                  </tr>
              </table>

            </center>

    </form>
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>

</body>
</html>


<!doctype html>
