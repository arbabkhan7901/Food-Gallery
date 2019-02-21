<%-- <input type="submit" name="Add Item">
    Document   : AddNew
    Created on : Jan 15, 2018, 4:34:18 AM
    Author     : Asma Munir
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <style>
        html,body{
            margin: 0px;
            padding: 0px;
        }
        .button {
            background-color: #F14D29; 
            border: none;
            color: white;
            padding: 15px 32px;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            font-size: 16px;
            margin: 4px 2px;
            cursor: pointer;
        }
    </style>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add New Item</title>
    </head>
    <%
        String error = request.getParameter("error");
        if (error == null || error == "null") {
            error = "";
        }
    %>
    <%
        if (error.equals("New Item Inserted")) {%>
    <script>
        window.alert("New Item Inserted");
    </script><%
        }%>

    <script>
        function dropdown()
        {
            alert("hello");
            var place = document.getElementById("place");
            alert("place");
            var category = place.options[place.selectedIndex].value;

            if (category === "Pakistan")
            {
                alert(category);
                document.getElementById("pak").style.visibility = 'visible';
                document.getElementById("ind").style.visibility = 'hidden';
                document.getElementById("chin").style.visibility = 'hidden';
                document.getElementById("beve").style.visibility = 'hidden';
                document.getElementById("dess").style.visibility = 'hidden';
                document.getElementById("ital").style.visibility = 'hidden';


            } else if (category === "Indian")
            {
                document.getElementById("pak").style.visibility = "hidden";
                document.getElementById("ind").style.visibility = 'visible';
                document.getElementById("chin").style.visibility = 'hidden';
                document.getElementById("beve").style.visibility = 'hidden';
                document.getElementById("dess").style.visibility = 'hidden';
                document.getElementById("ital").style.visibility = 'hidden';
                
            } else if (category === "Italian")
            {
                document.getElementById("pak").style.visibility = "hidden";
                document.getElementById("ind").style.visibility = 'hidden';
                document.getElementById("chin").style.visibility = 'hidden';
                document.getElementById("beve").style.visibility = 'hidden';
                document.getElementById("dess").style.visibility = 'hidden';
                document.getElementById("ital").style.visibility = 'visible';
                
            } else if (category === "Chinese")
            {
                document.getElementById("pak").style.visibility = "hidden";
                document.getElementById("ind").style.visibility = 'hidden';
                document.getElementById("chin").style.visibility = 'visible';
                document.getElementById("beve").style.visibility = 'hidden';
                document.getElementById("dess").style.visibility = 'hidden';
                document.getElementById("ital").style.visibility = 'hidden';
                
            } else if (category === "Beverages")
            {
                document.getElementById("beve").style.visibility = "visible";
                document.getElementById("ind").style.visibility = 'hidden';
                document.getElementById("chin").style.visibility = 'hidden';
                document.getElementById("pak").style.visibility = 'hidden';
                document.getElementById("dess").style.visibility = 'hidden';
                document.getElementById("ital").style.visibility = 'hidden';
                
            } else if (category === "Desserts")
            {
                document.getElementById("dess").style.visibility = "visible";
                document.getElementById("ind").style.visibility = 'hidden';
                document.getElementById("chin").style.visibility = 'hidden';
                document.getElementById("beve").style.visibility = 'hidden';
                document.getElementById("pak").style.visibility = 'hidden';
                document.getElementById("ital").style.visibility = 'hidden';
                
            }

        }
    </script>


    <body bgcolor="#EDA252">
        <%@include file="Header.jsp" %>

        <h1 align="center">New Item Insertion</h1>
        <form action="http://localhost:8080/Online_Restaurant/InsertInDb.jsp">
            <table cellspacing="4" cellpadding="10"  align="center">
                <tr>
                    <td><b>Select Place: </b></td>
                    <td> <select id="place" name="place" onchange="dropdown()">
                            <option value="">-Select Place-</option>
                            <option value="Pakistan">Pakistan</option>
                            <option value="Indian">Indian</option>
                            <option value="Italian">Italian</option>
                            <option value ="Chinese">Chinese</option>
                            <option value ="Beverages">Beverages</option>
                            <option value ="Desserts">Desserts</option>
                        </select>

                    </td>
                </tr>


                <tr>
                    <td><b>Item Name: </b></td>
                    <td>
                        <input type ="text" name="item" required>
                    </td>
                </tr>
                <tr>
                    <td><b>Price of Item: </b></td>
                    <td>
                        <input type="text" name ="price" required>
                    </td>
                </tr>

                <tr>
                    <td>
                        <b>Upload Image of Item: </b></td>
                    <td><input type="file" name="image" required>
                    </td>
                </tr>





                <tr id="pak" style=" visibility: hidden;">
                    <td>
                        <b>Select Category:</b>   
                    </td>
                    <td>
                        <div>
                            <select name="category" >
                                <option value="Karahi">Karahi</option>
                                <option value="Rice">Rice</option>
                                <option value="Daal">Daal</option>
                                <option value="BBQ">Bar B.Q</option>
                            </select>
                        </div>
                    </td>
                </tr>      

                <tr id="ind" style=" visibility: hidden;">
                    <td>
                        <b>Select Category:</b>   
                    </td>
                    <td>
                        <select name="category">
                            <option value="Bengoli">Bengoli</option>
                            <option value="Bombay">Bombay</option>
                            <option value="Gujrati">Gujrati</option>
                            <option value="Punjabi">Punjabi</option>
                        </select>
                    </td>
                </tr> 

                <tr id="ital" style=" visibility: hidden;">
                    <td>
                        <b>Select Category:</b>   
                    </td>
                    <td>
                        <select name="category">
                            <option value="Pasta">Pasta</option>
                            <option value="Pizza">Pizza</option>
                            <option value="Burger">Burger</option>
                        </select>
                    </td>
                </tr> 

                <tr id="chin" style=" visibility: hidden;">
                    <td>
                        <b>Select Category:</b>   
                    </td>
                    <td>
                        <select name="category">
                            <option value="Rice">Rice</option>
                            <option value="Noodles">Noodles</option>
                            <option value="Soup">Soup</option>

                        </select>
                    </td>
                </tr>

                <tr id="beve" style=" visibility: hidden;">
                    <td>
                        <b>Select Category:</b>   
                    </td>
                    <td>
                        <select name="category">
                            <option value="Shakes">Shakes</option>
                            <option value="Cold Drinks">Cold Drinks</option>
                            <option value="Tea/Coffee">Tea/Coffee</option>
                            <option value="Juices">Juices</option>

                        </select>
                    </td>
                </tr>

                <tr id="dess" style=" visibility: hidden;">
                    <td>
                        <b>Select Category:</b>   
                    </td>
                    <td>
                        <select name="category">
                            <option value="Ice cream">Ice cream</option>
                            <option value="Puddings">Puddings</option>
                            <option value="Halvay">Halvay</option>

                        </select>
                    </td>
                </tr>

                <%--        <tr>
                                    <option value="Bengoli">Bengoli</option>
                                    <option value="Bombay">Bombay</option>
                                    <option value="Gujrati">Gujrati</option>
                                    <option value="Punjabi">Punjabi</option>
                                    <option value="Pizza">Pizza</option>
                                    <option value="Burger">Burger</option>
                                    <option value="Pasta">Pasta</option>
                                    <option value="Chinese Rice">Chinese Rice</option>
                                    <option value="Chinese Soups">Chinese Soups</option>
                                    <option value="Chinese Noodles">Chinese Noodles</option>
                                    <option value="Shakes">Shakes</option>
                                    <option value="Cold Drinks">Cold Drinks</option>
                                    <option value="Tea/Coffee">Tea/Coffee</option>
                                    <option value="Juices">Juices</option>
                                    <option value="Ice cream">Ice cream</option>
                                    <option value="Puddings">Puddings</option>
                                    <option value="Halvay">Halvay</option>
                                </select>

                    </td>
                </tr>--%>

                <tr>
                    <td></td>
                    <td>
                        <br> <input type="submit" class="button" value="Add Item">
                    </td>
                </tr>

                <br>
                <br><br>
                <br>
                <br>

            </table>
        </form>

    </body>
    <%@include file="Footer.jsp" %>
</html>
