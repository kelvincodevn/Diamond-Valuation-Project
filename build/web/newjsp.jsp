<%-- 
    Document   : newjsp
    Created on : Jun 4, 2024, 1:34:00 PM
    Author     : Dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

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
        <form>
            <!-- Natural or Lab Grown -->
            <div class="characteristic">
                <h3>Type</h3>
                <label><input type="radio" name="type" value="Natural" checked> Natural</label>
                <label><input type="radio" name="type" value="Lab Grown"> Lab Grown</label>
            </div>

            <!-- Shape -->
            <div class="characteristic">
                <h3>Shape</h3>
                <label><input type="radio" name="shape" value="Round" checked> Round</label>
                <label><input type="radio" name="shape" value="Cushion"> Cushion</label>
                <label><input type="radio" name="shape" value="Emerald"> Emerald</label>
                <label><input type="radio" name="shape" value="Oval"> Oval</label>
                <label><input type="radio" name="shape" value="Princess"> Princess</label>
                <label><input type="radio" name="shape" value="Pear"> Pear</label>
                <label><input type="radio" name="shape" value="Radiant"> Radiant</label>
                <label><input type="radio" name="shape" value="Marquise"> Marquise</label>
                <label><input type="radio" name="shape" value="Asscher"> Asscher</label>
                <label><input type="radio" name="shape" value="Heart"> Heart</label>
            </div>

            <!-- Carat -->
            <div class="characteristic">
                <h3>Carat</h3>
                <div class="slider-container">
                    <input type="range" name="carat" min="0.05" max="6" step="0.05" value="2.45" oninput="updateCaratValue(this.value)">
                    <span id="caratValue">2.45</span>
                </div>
            </div>

            <!-- Color -->
            <div class="characteristic">
                <h3>Color</h3>
                <label><input type="radio" name="color" value="K" checked> M</label>
                <label><input type="radio" name="color" value="J"> L</label>
                <label><input type="radio" name="color" value="K"> K</label>
                <label><input type="radio" name="color" value="J"> J</label>
                <label><input type="radio" name="color" value="I"> I</label>
                <label><input type="radio" name="color" value="H"> H</label>
                <label><input type="radio" name="color" value="G"> G</label>
                <label><input type="radio" name="color" value="F"> F</label>
                <label><input type="radio" name="color" value="E"> E</label>
                <label><input type="radio" name="color" value="D"> D</label>
            </div>

            <!-- Clarity -->
            <div class="characteristic">
                <h3>Clarity</h3>
                <label><input type="radio" name="clarity" value="SI2" checked> SI2</label>
                <label><input type="radio" name="clarity" value="SI1"> SI1</label>
                <label><input type="radio" name="clarity" value="VS2"> VS2</label>
                <label><input type="radio" name="clarity" value="VS1"> VS1</label>
                <label><input type="radio" name="clarity" value="VVS2"> VVS2</label>
                <label><input type="radio" name="clarity" value="VVS1"> VVS1</label>
                <label><input type="radio" name="clarity" value="IF"> IF</label>
                <label><input type="radio" name="clarity" value="FL"> FL</label>
            </div>

            <!-- Cut -->
            <div class="characteristic">
                <h3>Cut</h3>
                <label><input type="radio" name="cut" value="Fair" checked> Fair</label>
                <label><input type="radio" name="cut" value="Good"> Good</label>
                <label><input type="radio" name="cut" value="V.Good"> V.Good</label>
                <label><input type="radio" name="cut" value="EX."> EX.</label>
            </div>

            <!-- Symmetry -->
            <div class="characteristic">
                <h3>Symmetry</h3>
                <label><input type="radio" name="symmetry" value="Fair" checked> Fair</label>
                <label><input type="radio" name="symmetry" value="Good"> Good</label>
                <label><input type="radio" name="symmetry" value="V.Good"> V.Good</label>
                <label><input type="radio" name="symmetry" value="EX."> EX.</label>
            </div>

            <!-- Polish -->
            <div class="characteristic">
                <h3>Polish</h3>
                <label><input type="radio" name="polish" value="Fair" checked> Fair</label>
                <label><input type="radio" name="polish" value="Good"> Good</label>
                <label><input type="radio" name="polish" value="V.Good"> V.Good</label>
                <label><input type="radio" name="polish" value="EX."> EX.</label>
            </div>

            <!-- Fluorescence -->
            <div class="characteristic">
                <h3>Fluorescence</h3>
                <label><input type="radio" name="fluorescence" value="VSTG" checked> VSTG</label>
                <label><input type="radio" name="fluorescence" value="STG"> STG</label>
                <label><input type="radio" name="fluorescence" value="MED"> MED</label>
                <label><input type="radio" name="fluorescence" value="FNT"> FNT</label>
                <label><input type="radio" name="fluorescence" value="NON"> NON</label>
            </div>

            <!-- Submit Button -->
            <div class="characteristic">
                <button type="submit" name = "btAction" value = "submit">Submit</button>
            </div>
        </form>
        <%
            Double price = (Double) request.getAttribute("PRICE");
            String format = String.format("%.2f", price);

            if (price != null) {
        %>
        <label>Price: <%=format%>$</label>
        <%
        } %>
        
        

    </body>

</html>
