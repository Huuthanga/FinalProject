<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Filter.aspx.cs" Inherits="CreditTaskMVC.Filter" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
       <div>
         <h3>Select a filtering option:</h3>
             <input type="radio" name="filterType" value="bestItems">Best Items<br>
             <input type="radio" name="filterType" value="itemsPurchasedByCustomers">Items Purchased by Customers<br>
             <input type="radio" name="filterType" value="customerPurchases">Customer Purchases<br>
    </div>
        <div>
            <h3>Best Items:</h3>
            <label for="startDate">Start Date:</label>
            <input type="date" id="startDate" name="startDate"><br>
            <label for="endDate">End Date:</label>
            <input type="date" id="endDate" name="endDate"><br>
    </div>
        <div>
  <h3>Items Purchased by Customers:</h3>
  <label for="itemName">Item Name:</label>
  <input type="text" id="itemName" name="itemName"><br>
</div>

<div>
  <h3>Customer Purchases:</h3>
  <label for="customerName">Customer Name:</label>
  <input type="text" id="customerName" name="customerName"><br>
</div>
        <div>
  <br>
  <button type="submit" id="filterBtn">Filter</button>
</div>
    </form>
</body>
</html>
