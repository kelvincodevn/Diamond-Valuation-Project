<!DOCTYPE html>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<head>
    <link rel="stylesheet" href="//cdnjs.cloudflare.com/ajax/libs/morris.js/0.5.1/morris.css">
    <script src="//ajax.googleapis.com/ajax/libs/jquery/1.9.0/jquery.min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/raphael/2.1.0/raphael-min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/morris.js/0.5.1/morris.min.js"></script>
</head>
<body>
    <form id = "chartForm" action="viewChartServlet">    
         <select id="monthSelect" name="month" onchange="submitForm()">
                    <option value="0"<c:if test="${param.month == '0'}">selected</c:if>selected>All</option>
                    <option value="1"<c:if test="${param.month == '1'}">selected</c:if>>January</option>
                    <option value="2"<c:if test="${param.month == '2'}">selected</c:if>>February</option>
                    <option value="3"<c:if test="${param.month == '3'}">selected</c:if>>March</option>
                    <option value="4"<c:if test="${param.month == '4'}">selected</c:if>>April</option>
                    <option value="5"<c:if test="${param.month == '5'}">selected</c:if>>May</option>
                    <option value="6"<c:if test="${param.month == '6'}">selected</c:if>>June</option>
                    <option value="7"<c:if test="${param.month == '7'}">selected</c:if>>July</option>
                    <option value="8"<c:if test="${param.month == '8'}">selected</c:if>>August</option>
                    <option value="9"<c:if test="${param.month == '7'}">selected</c:if>>September</option>
                    <option value="10"<c:if test="${param.month == '10'}">selected</c:if>>October</option>
                    <option value="11"<c:if test="${param.month == '11'}">selected</c:if>>November</option>
                    <option value="12"<c:if test="${param.month == '12'}">selected</c:if>>December</option>
                </select>
                <select id="yearSelect" name ="year" onchange="submitForm()">
                    <option value="0"<c:if test="${param.year == '0'}">selected</c:if>selected>All</option>
                    <option value="2022"<c:if test="${param.year == '2022'}">selected</c:if>>2022</option>
                    <option value="2023"<c:if test="${param.year == '2023'}">selected</c:if>>2023</option>
                    <option value="2024"<c:if test="${param.year == '2024'}">selected</c:if>>2024</option>
                    <option value="2025"<c:if test="${param.year == '2025'}">selected</c:if>>2025</option>
                </select>
            </form>
    
    <div class="card-body">
        <div id="donut-chart"></div>
    </div>

    <script>
        function submitForm() {
            document.getElementById('chartForm').submit();
        }
        function donutChart(data) {
            Morris.Donut({
                element: 'donut-chart',
                data: data,
                backgroundColor: '#f2f5fa',
                labelColor: '#009688',
                colors: ['#0BA462', '#39B580', '#67C69D', '#95D7BB'],
                resize: true,
                redraw: true
            });
        }
        $(document).ready(function() {
            var chartData = ${requestScope.DATA};
            donutChart(chartData);
        });
    </script>
</body>
</html>
