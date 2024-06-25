<!DOCTYPE html>
<html>
<head>
    <link rel="stylesheet" href="//cdnjs.cloudflare.com/ajax/libs/morris.js/0.5.1/morris.css">
    <script src="//ajax.googleapis.com/ajax/libs/jquery/1.9.0/jquery.min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/raphael/2.1.0/raphael-min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/morris.js/0.5.1/morris.min.js"></script>
</head>
<body>
    <form action="main">
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
    
    <div class="card-body">
        <div id="donut-chart"></div>
    </div>

    <script>
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
            $.ajax({
                url: 'viewChartServlet',
                method: 'GET',
                dataType: 'json',
                success: function(data) {
                    donutChart(data);
                },
                error: function(error) {
                    console.log("Error fetching data: ", error);
                }
            });
        });
    </script>
</body>
</html>
