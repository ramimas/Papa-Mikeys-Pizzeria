<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            font-family: Impact, Haettenschweiler, "Arial Narrow Bold", sans-serif;
            font-size: x-large;
        }
        .auto-style2 {
            font-family: Impact, Haettenschweiler, "Arial Narrow Bold", sans-serif;
            font-size: xx-large;
        }
        .auto-style3 {
            font-family: "Segoe UI", Tahoma, Geneva, Verdana, sans-serif;
        }
        #form1 {
            font-family: "Segoe UI", Tahoma, Geneva, Verdana, sans-serif;
        }
        .auto-style4 {
            font-size: large;
        }
        .auto-style5 {
            color: #FF0000;
        }
        .auto-style6 {
            font-size: small;
            color: #000000;
        }
        .auto-style7 {
            font-size: medium;
        }
        .auto-style8 {
            font-size: medium;
            color: #000000;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        &nbsp;<em><span class="auto-style1">&nbsp;<asp:Image ID="Image1" runat="server" Height="186px" ImageUrl="~/storeLogo.jpg" Width="207px" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></em><span class="auto-style2"><em>Papa Mikey&#39;s Pizzeria</em></span></div>
        <br />
        <span class="auto-style3"><strong>Select a size</strong></span><asp:RadioButtonList ID="sizeList" runat="server" OnSelectedIndexChanged="sizeList_SelectedIndexChanged" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif; font-style: italic; font-size: small">
            <asp:ListItem Value="10">Baby Mikey Size (10&quot;) - $10</asp:ListItem>
            <asp:ListItem Value="13">Mama Mikey Size (13&quot;) - $13</asp:ListItem>
            <asp:ListItem Value="16">Papa Mikey Size (16&quot;) - $16</asp:ListItem>
        </asp:RadioButtonList>
        <br />
        <strong>Select crust type</strong><asp:RadioButtonList ID="crustList" runat="server" OnSelectedIndexChanged="crustList_SelectedIndexChanged" style="font-size: small; font-style: italic">
            <asp:ListItem Value="0">Thin Crust</asp:ListItem>
            <asp:ListItem Value="2">Deep Dish (+$2.00)</asp:ListItem>
        </asp:RadioButtonList>
        <br />
        <strong>Additional Ingredients</strong><asp:CheckBoxList ID="addCheckbox" runat="server" OnSelectedIndexChanged="addCheckbox_SelectedIndexChanged" style="font-size: small; font-style: italic">
            <asp:ListItem Value="pepperoni">Pepperoni (+$1.50)</asp:ListItem>
            <asp:ListItem Value="onions">Onions (+$0.75)</asp:ListItem>
            <asp:ListItem Value="greenPep">Green Peppers (+$0.50)</asp:ListItem>
            <asp:ListItem Value="redPep">Red Peppers (+$0.75)</asp:ListItem>
            <asp:ListItem Value="anchovies">Anchovies (+$2)</asp:ListItem>
        </asp:CheckBoxList>
        <br />
        <strong><span class="auto-style7">Papa Mikey&#39;s </span><span class="auto-style5"><span class="auto-style7">Special Deal</span><span class="auto-style4"><br />
        </span></span></strong><span class="auto-style6">Save $2.00 when you add Pepperoni, Green Peppers, and Anchovies OR Pepperoni, Red Peppers, and Onions on your pizza!<br />
        </span><strong><span class="auto-style4"><span class="auto-style5">
        <br />
        <asp:Button ID="purchaseButton" runat="server" OnClick="purchaseButton_Click" Text="Purchase" />
        <br />
        </span></span></strong><span class="auto-style8"><strong>Total: $<asp:Label ID="totalLable" runat="server" Text="0.00"></asp:Label>
        </strong>
        <br />
        </span><span class="auto-style6">Sorry, at this time you can only order on pizza online, and pick-up only.... A new and improved checkout is coming soon!</span></form>
</body>
</html>
