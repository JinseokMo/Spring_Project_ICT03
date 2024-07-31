<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/resources/jstl/setting.jsp" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Home</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            min-height: 100vh;
        }
    </style>
    <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
    <script type="text/javascript">
      google.charts.load("current", {packages:["corechart"]});
      google.charts.setOnLoadCallback(drawChart);
      function drawChart() {
         var jsonMapString = '<%= request.getAttribute("jsonMap") %>';
         var jsonMap = JSON.parse(jsonMapString);
         
         var dataArray = [['Country', 'Count']];
          for (var key in jsonMap) {
              if (jsonMap.hasOwnProperty(key)) {
                  dataArray.push([key, jsonMap[key]]);
              }
          }
        var data = google.visualization.arrayToDataTable(dataArray);

        var options = {
          title: 'Country',
          is3D: true,
        };

        var chart = new google.visualization.PieChart(document.getElementById('piechart_3d'));
        chart.draw(data, options);
      }
    </script>
</head>
<body>
        <div class="row">
            <!-- Sidebar -->
            <div class = col-md-2>
            <%@ include file="/WEB-INF/views/admin/adminSidebar.jsp" %>
            </div>
            <!-- Main content -->
            <div class="col-md-10">
                <div class="container-fluid">
                    <div>
                      <h3 class="h3 mt-4">안녕하세요. ${sessionScope.userDTO.adminName} 관리자님</h3>
                    </div>
                    <div class="col-md-12 mt-5">
                        <table class="table">
                            <thead>
                                <tr>
                                    <th>유저 통계</th>
                                </tr>
                            </thead>
                        </table>
                    </div>
                    <div class="col-md-12 mt-5">
                       <div id="piechart_3d" style="width: 900px; height: 500px;"></div>
                  </div>
              </div> 
           </div>
        </div>
</body>
</html>