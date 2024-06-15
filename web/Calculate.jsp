<%-- 
    Document   : Calculate
    Created on : Jun 12, 2024, 10:52:03 AM
    Author     : Dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <script>
            function updateCaratValue(value) {
                document.getElementById('caratValue').innerText = value;
            }
            window.onload = function () {
                updateCaratValue(document.getElementById('caratSlider').value);
            };
        </script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Calculator</title>
    </head>
    <body>
        <form action="MainController">
        <!-- Natural or Lab Grown -->
        <div class="characteristic">
            <h3>Type</h3>
            <label><input type="radio" name="type" value="Natural" checked<c:if test="${param.type == 'Natural'}">checked</c:if> > Natural</label>
            <label><input type="radio" name="type" value="Lab Grown" <c:if test="${param.type == 'Lab Grown'}">checked</c:if> > Lab Grown</label>
        </div>

        <!-- Shape -->
        <div class="characteristic">
            <h3>Shape</h3>
            <label><input type="radio" name="shape" value="Round" checked <c:if test="${param.shape == 'Round'}">checked</c:if> > Round</label>
            <label><input type="radio" name="shape" value="Cushion" <c:if test="${param.shape == 'Cushion'}">checked</c:if> > Cushion</label>
            <label><input type="radio" name="shape" value="Emerald" <c:if test="${param.shape == 'Emerald'}">checked</c:if> > Emerald</label>
            <label><input type="radio" name="shape" value="Oval" <c:if test="${param.shape == 'Oval'}">checked</c:if> > Oval</label>
            <label><input type="radio" name="shape" value="Princess" <c:if test="${param.shape == 'Princess'}">checked</c:if>> Princess</label>
            <label><input type="radio" name="shape" value="Pear" <c:if test="${param.shape == 'Pear'}">checked</c:if> > Pear</label>
            <label><input type="radio" name="shape" value="Radiant" <c:if test="${param.shape == 'Radiant'}">checked</c:if> > Radiant</label>
            <label><input type="radio" name="shape" value="Marquise" <c:if test="${param.shape == 'Marquise'}">checked</c:if> > Marquise</label>
            <label><input type="radio" name="shape" value="Asscher" <c:if test="${param.shape == 'Asscher'}">checked</c:if> > Asscher</label>
            <label><input type="radio" name="shape" value="Heart" <c:if test="${param.shape == 'Heart'}">checked</c:if> > Heart</label>
        </div>
        <!-- Carat -->
        <div class="characteristic">
            <h3>Carat</h3>
            <div class="slider-container">
                <input type="range" name="carat" id="caratSlider" min="0.05" max="6" step="0.05" value="<c:out value='${param.carat}' default='2.45'/>" oninput="updateCaratValue(this.value)">
                <span id="caratValue"><c:out value="${param.carat}" default="2.45"/></span>
            </div>
        </div>

        <!-- Color -->
        <div class="characteristic">
            <h3>Color</h3>
            <label><input type="radio" name="color" value="M" checked<c:if test="${param.color == 'M'}">checked</c:if> > M</label>
            <label><input type="radio" name="color" value="L" <c:if test="${param.color == 'L'}">checked</c:if> > L</label>
            <label><input type="radio" name="color" value="K" <c:if test="${param.color == 'K'}">checked</c:if> > K</label>
            <label><input type="radio" name="color" value="J" <c:if test="${param.color == 'J'}">checked</c:if> > J</label>
            <label><input type="radio" name="color" value="I" <c:if test="${param.color == 'I'}">checked</c:if> > I</label>
            <label><input type="radio" name="color" value="H" <c:if test="${param.color == 'H'}">checked</c:if> > H</label>
            <label><input type="radio" name="color" value="G" <c:if test="${param.color == 'G'}">checked</c:if> > G</label>
            <label><input type="radio" name="color" value="F" <c:if test="${param.color == 'F'}">checked</c:if> > F</label>
            <label><input type="radio" name="color" value="E" <c:if test="${param.color == 'E'}">checked</c:if> > E</label>
            <label><input type="radio" name="color" value="D" <c:if test="${param.color == 'D'}">checked</c:if> > D</label>
        </div>

        <!-- Clarity -->
        <div class="characteristic">
            <h3>Clarity</h3>
            <label><input type="radio" name="clarity" value="SI2" checked <c:if test="${param.clarity == 'SI2'}">checked</c:if> > SI2</label>
            <label><input type="radio" name="clarity" value="SI1" <c:if test="${param.clarity == 'SI1'}">checked</c:if> > SI1</label>
            <label><input type="radio" name="clarity" value="VS2" <c:if test="${param.clarity == 'VS2'}">checked</c:if> > VS2</label>
            <label><input type="radio" name="clarity" value="VS1" <c:if test="${param.clarity == 'VS1'}">checked</c:if> > VS1</label>
            <label><input type="radio" name="clarity" value="VVS2" <c:if test="${param.clarity == 'VVS2'}">checked</c:if> > VVS2</label>
            <label><input type="radio" name="clarity" value="VVS1" <c:if test="${param.clarity == 'VVS1'}">checked</c:if> > VVS1</label>
            <label><input type="radio" name="clarity" value="IF" <c:if test="${param.clarity == 'IF'}">checked</c:if> > IF</label>
            <label><input type="radio" name="clarity" value="FL" <c:if test="${param.clarity == 'FL'}">checked</c:if> > FL</label>
        </div>

        <!-- Cut -->
        <div class="characteristic">
            <h3>Cut</h3>
            <label><input type="radio" name="cut" value="Fair" checked<c:if test="${param.cut == 'Fair'}">checked</c:if> > Fair</label>
            <label><input type="radio" name="cut" value="Good" <c:if test="${param.cut == 'Good'}">checked</c:if> > Good</label>
            <label><input type="radio" name="cut" value="V.Good" <c:if test="${param.cut == 'V.Good'}">checked</c:if> > V.Good</label>
            <label><input type="radio" name="cut" value="EX." <c:if test="${param.cut == 'EX.'}">checked</c:if> > EX.</label>
        </div>

        <!-- Symmetry -->
        <div class="characteristic">
            <h3>Symmetry</h3>
            <label><input type="radio" name="symmetry" value="Fair" checked<c:if test="${param.symmetry == 'Fair'}">checked</c:if> > Fair</label>
            <label><input type="radio" name="symmetry" value="Good" <c:if test="${param.symmetry == 'Good'}">checked</c:if> > Good</label>
            <label><input type="radio" name="symmetry" value="V.Good" <c:if test="${param.symmetry == 'V.Good'}">checked</c:if> > V.Good</label>
            <label><input type="radio" name="symmetry" value="EX." <c:if test="${param.symmetry == 'EX.'}">checked</c:if> > EX.</label>
        </div>

        <!-- Polish -->
        <div class="characteristic">
            <h3>Polish</h3>
            <label><input type="radio" name="polish" value="Fair"checked <c:if test="${param.polish == 'Fair'}">checked</c:if> > Fair</label>
            <label><input type="radio" name="polish" value="Good" <c:if test="${param.polish == 'Good'}">checked</c:if> > Good</label>
            <label><input type="radio" name="polish" value="V.Good" <c:if test="${param.polish == 'V.Good'}">checked</c:if> > V.Good</label>
            <label><input type="radio" name="polish" value="EX." <c:if test="${param.polish == 'EX.'}">checked</c:if> > EX.</label>
        </div>

        <!-- Fluorescence -->
        <div class="characteristic">
            <h3>Fluorescence</h3>
            <label><input type="radio" name="fluorescence" value="VSTG"checked <c:if test="${param.fluorescence == 'VSTG'}">checked</c:if> > VSTG</label>
            <label><input type="radio" name="fluorescence" value="STG" <c:if test="${param.fluorescence == 'STG'}">checked</c:if> > STG</label>
            <label><input type="radio" name="fluorescence" value="MED" <c:if test="${param.fluorescence == 'MED'}">checked</c:if> > MED</label>
            <label><input type="radio" name="fluorescence" value="FNT" <c:if test="${param.fluorescence == 'FNT'}">checked</c:if> > FNT</label>
            <label><input type="radio" name="fluorescence" value="NON" <c:if test="${param.fluorescence == 'NON'}">checked</c:if> > NON</label>
        </div>

        <!-- Submit Button -->
        <div class="characteristic">
            <button type="submit" name="btAction" value="Calculate">Submit</button>
        </div>
    </form>
    <%
        String price = (String) request.getAttribute("PRICE");
        if (price != null) {
            
    %>
    <label>Price: <%=price%>$</label>
    <%
        }
    %>
</body>
</html>
