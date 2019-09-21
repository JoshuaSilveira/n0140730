<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="n0140730_assignment_1a.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <h1>ROCK CONCERT INCIDENT REPORT</h1>
    <form id="form1" runat="server" action="https://postman-echo.com/post">
        <div>
            <section>
                <h2>Report Filled out by:</h2>
                <asp:TextBox runat="server" ID="reporter"></asp:TextBox>
            </section>
            

            <section>
                <h2>Date of incident</h2>
                <asp:TextBox runat="server" TextMode="Date" ID="incident_date"></asp:TextBox>
            </section>
     
            <section>
                <h2>Approximate time of incident</h2>
                <asp:TextBox runat="server" TextMode="Time" ID="indident_time"></asp:TextBox>
            </section>
            
            <section>
                <h2>Damage to venue and/or physical harm to person(s)</h2>
                <asp:CheckBoxList runat="server" ID="venue_person_damage">
                    <asp:ListItem Text="Venue is damaged." Value="venue_damaged"></asp:ListItem>
                    <asp:ListItem Text="Person(s) are injured." Value="person_injured"></asp:ListItem>
                </asp:CheckBoxList>
            </section>

            <section>
                <h2>Incident Location</h2>
                    <asp:DropDownList runat="server" ID="location">
                        <asp:ListItem Text="Front stage" Value="stage_front"></asp:ListItem>
                         <asp:ListItem Text="Right side stage" Value="stage_right"></asp:ListItem>
                         <asp:ListItem Text="Left side stage" Value="stage_left"></asp:ListItem>
                         <asp:ListItem Text="Concession stand" Value="concession"></asp:ListItem>
                         <asp:ListItem Text="Merchandise Booth" Value="merch_booth"></asp:ListItem>
                     </asp:DropDownList>
            </section>

            <section>
                <h2>Paramedics neccesarry</h2>
                <asp:RadioButtonList runat="server" ID="paramedic_neccessary">
                    <asp:ListItem Text="Paramedics were required" Value="paramedics_true"></asp:ListItem>
                    <asp:ListItem Text="Paramedics NOT required" Value="paramedics_false"></asp:ListItem>
                </asp:RadioButtonList>
            </section>
            
            <section>
                <h2>Police neccesarry</h2>
                <asp:RadioButtonList runat="server" ID="Police_neccesary">
                    <asp:ListItem Text="Police were required" Value="police_true"></asp:ListItem>
                    <asp:ListItem Text="Police NOT required" Value="police_false"></asp:ListItem>
                </asp:RadioButtonList>
            </section>
            
            <section>
                <h2>Incident Description</h2>
                <asp:TextBox ID="incident_description_textarea" runat="server" TextMode="MultiLine" Columns="100" Rows="5"></asp:TextBox>
            </section>
            
            <section>
                <asp:Button runat="server" Text="Submit Incident" />
            </section>   
        </div>
    </form>
</body>
</html>
