<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Store.aspx.cs" Inherits="infotechit.WebForm4" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

  
    
    <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
        <ItemTemplate>
 <style>
     #container-box
     {
       padding:30px;
       float:left;
     }
a {
  transition: 0.3s;
}
.card {
  overflow: hidden;
  box-shadow: 0 3px 17px rgba(0,0,0,0.15), 0 0 5px rgba(0,0,0,0.15);


}
.img {
    width: 100%;
    height: auto!important;
  }
.add-to-cart {
  display: block;
  width: 60px;
  height: 60px;
  border-radius: 50%;
  text-align: center;
  font-size: 1.3rem;
  line-height: 59px;
  position: absolute;
  right: 1.25rem;
  top: -30px;
  box-shadow: 0 2px 7px rgba(0,0,0,0.4);

}
.add-to-cart:hover {
    box-shadow: 0 1px 2px rgba(0,0,0,0.4);
  }
 .add-to-cart:hover {
    box-shadow: 0 1px 2px rgba(0,0,0,0.4);
  }
.labels {
         position: absolute;
         top: 0;
         left: 0;
         width: 100%;
         opacity: 0.8;
}
.labels div {
             width: 150px;
             position: absolute;
 }
.label-new {
      left: -40px;
      top: 20px;
      transform: rotate(-45deg);
    }
.label-sale {
      right: -40px;
      top: 20px;
      transform: rotate(45deg);
    }
     .btn {
       color:white;
       background-color:#1e4485;
     }
  .price{
    color:#1e4485;
  }


 </style>
       
   <div class="col-md-4 mb-3 mb-md-0" id="container-box">
      <div class="card h-100">
        <div class="labels">
          <div class="label-new bg-success text-white text-center py-1">New</div>
          
          
     </div>
        <img src=/images/<%#Eval("product_image") %> alt="" style="height:300px">
        <div class="card-body position-relative d-flex flex-column">
          <a href="#" class="add-to-cart bg-primary text-white" data-toggle="tooltip" data-placement="left" title="Add To Cart">
          <img src="/images/cart.png" style="height:40px; width:40px"></img>
          </a>
          <h3 class="price">$<%#Eval("product_price") %></h3>
          
          <h4> <%#Eval("product_title") %></h4>
          <p><%#Eval("product_description") %></p>
          <a href="#" class="btn  btn-block mt-auto">
            <i class="fa fa-eye"></i>
           Product Detail
          </a>
          
        </div>
      </div>
    </div>



  
        <script>
                  $('[data-toggle="tooltip"]').tooltip();
         
        </script>

      </ItemTemplate>
 
        </asp:Repeater>

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dbinfotech %>" SelectCommand="SELECT * FROM [tbProducts]"></asp:SqlDataSource>
</asp:Content>
