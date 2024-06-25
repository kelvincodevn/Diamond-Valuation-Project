<%@page import="group6.entity.RequestCount"%>
<%@page import="java.util.List"%>
<!--<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Pie Chart Example</title>
     Include Chart.js from CDN 
    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
</head>
<body>
    <canvas id="myPieChart" width="400" height="400"></canvas>
    <script src="charTest.js"></script>  Your script file 
    <script>
        document.addEventListener('DOMContentLoaded', function() {
            drawPieChart();
        });
    </script>
</body>
</html>-->

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">

    </head>
    <body>
        <%
            int firstPart, secondPart, thirdPart, stDeg = 120, ndDeg = 90, rdDeg;
            
//            String firstType, secondType, thirdType;
            List<RequestCount> data = (List<RequestCount>) request.getAttribute("DATA");
            int[] counts = new int[data.size()];
            if(data != null && !data.isEmpty()){
                for (int i = 0; i < data.size(); i++) {
                counts[i] = data.get(i).getCount();
//                serviceTypeIDs[i] = data.get(i).getServiceTypeID();
            }
            //lay count va type 1
            firstPart = data.get(0).getCount();
//            firstType = data.get(1).getServiceTypeID();
            //lay count va type 2
            secondPart = data.get(1).getCount();
//            secondType = data.get(2).getServiceTypeID();
            ////lay count va type 3
            thirdPart = data.get(2).getCount();
//            thirdType = data.get(3).getServiceTypeID();
            //tinh toan %deg
             stDeg = 360 * firstPart / (firstPart + secondPart + thirdPart);
             ndDeg = 360360 * secondPart / (firstPart + secondPart + thirdPart);
             rdDeg = 360 -stDeg - ndDeg;
             
    }
            double stPer = 100*stDeg/360, 
                     ndPer = 100*ndDeg/360, 
                     rdPer = 100-ndPer-stPer;
        %>
        <div class = "pie-chart">
            <title>Pie Chart</title>
            <form action="MainController">
                <select id="monthSelect" name="month" value ="0">
                    <option value="0">All</option>
                    <option value="1">January</option>
                    <option value="2">February</option>
                    <option value="3">March</option>
                    <option value="4">April</option>
                    <option value="5">May</option>
                    <option value="6">June</option>
                    <option value="7">July</option>
                    <option value="8">August</option>
                    <option value="9">September</option>
                    <option value="10">October</option>
                    <option value="11">November</option>
                    <option value="12">December</option>
                </select>
                <select id="yearSelect" name ="year" value = "0">
                    <option value="0">All</option>
                    <option value="2022">2022</option>
                    <option value="2023">2023</option>
                    <option value="2024">2024</option>
                    <option value="2025">2025</option>
                </select>


                <input type="submit" value="Submit" name="btAction" />
            </form>
            <style>
                .piechart {
                    width: 270px;
                    height: 270px;
                    border-radius: 100%;
                    background-image: 
                        conic-gradient(
                        pink <%= stDeg%>deg, 
                        lightblue <%= stDeg%>deg <%= stDeg + ndDeg%>deg, 
                        orange 0
                        );
                }
                .legend {
                    display: flex;
                    flex-direction: column;
                    margin-top: 20px;
                }
                .legend-item {
                    display: flex;
                    align-items: center;
                    margin-bottom: 5px;
                }
                .legend-color {
                    width: 20px;
                    height: 20px;
                    margin-right: 10px;
                }
                .legend-text {
                    font-size: 14px;
                }
                .pink { background-color: pink; }
                .lightblue { background-color: lightblue; }
                .orange { background-color: orange; }
            </style>
            <div class="legend">
                <div class="legend-item">
                    <div class="legend-color pink"></div>
                    <div class="legend-text">Basic <%= String.format("%.0f", stPer) %>%</div>
                </div>
                <div class="legend-item">
                    <div class="legend-color lightblue"></div>
                    <div class="legend-text">Advanced <%= String.format("%.0f", ndPer) %>%</div>
                </div>
                <div class="legend-item">
                    <div class="legend-color orange"></div>
                    <div class="legend-text">Express <%= String.format("%.0f", rdPer) %>%</div>
                </div>
            </div>
        </div>
        <h3>Ratio of service type choosen</h3>
        <div class="piechart"></div>
    </body>
</html>
