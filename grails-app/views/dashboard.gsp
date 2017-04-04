
<%@ page import="ponto.Empresa" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="_start">
    <g:set var="entityName" value="${message(code: 'empresa.label', default: 'Empresa')}" />
    <title>Dashboard</title>
    <script src="https://www.amcharts.com/lib/3/amcharts.js"></script>
    <script src="https://www.amcharts.com/lib/3/serial.js"></script>

    <link rel="stylesheet" href="https://www.amcharts.com/lib/3/plugins/export/export.css" type="text/css" media="all" />
    <script src="https://www.amcharts.com/lib/3/themes/light.js"></script>
    <script src="https://maps.googleapis.com/maps/api/js?key=YOUR_API_KEY&callback=initMap"></script>
<script type="text/javascript">
    var chart = AmCharts.makeChart( "chartdiv", {
        "type": "serial",
        "theme": "light",
        "dataProvider": [ {
            "country": "USA",
            "visits": 2025
        }, {
            "country": "China",
            "visits": 1882
        }, {
            "country": "Japan",
            "visits": 1809
        }, {
            "country": "Germany",
            "visits": 1322
        }, {
            "country": "UK",
            "visits": 1122
        }, {
            "country": "France",
            "visits": 1114
        }, {
            "country": "India",
            "visits": 984
        }, {
            "country": "Spain",
            "visits": 711
        }, {
            "country": "Netherlands",
            "visits": 665
        }, {
            "country": "Russia",
            "visits": 580
        }, {
            "country": "South Korea",
            "visits": 443
        }, {
            "country": "Canada",
            "visits": 441
        }, {
            "country": "Brazil",
            "visits": 395
        } ],
        "valueAxes": [ {
            "gridColor": "#FFFFFF",
            "gridAlpha": 0.2,
            "dashLength": 0
        } ],
        "gridAboveGraphs": true,
        "startDuration": 1,
        "graphs": [ {
            "balloonText": "[[category]]: <b>[[value]]</b>",
            "fillAlphas": 0.8,
            "lineAlpha": 0.2,
            "type": "column",
            "valueField": "visits"
        } ],
        "chartCursor": {
            "categoryBalloonEnabled": false,
            "cursorAlpha": 0,
            "zoomable": false
        },
        "categoryField": "country",
        "categoryAxis": {
            "gridPosition": "start",
            "gridAlpha": 0,
            "tickPosition": "start",
            "tickLength": 20
        },
        "export": {
            "enabled": true
        }

    } );





    chart.addListener("dataUpdated", zoomChart);
    // when we apply theme, the dataUpdated event is fired even before we add listener, so
    // we need to call zoomChart here
    zoomChart();
    // this method is called when chart is first inited as we listen for "dataUpdated" event
    function zoomChart() {
        // different zoom methods can be used - zoomToIndexes, zoomToDates, zoomToCategoryValues
        chart.zoomToIndexes(chartData.length - 250, chartData.length - 100);
    }

    // generate some random data, quite different range
    function generateChartData() {
        var chartData = [];
        // current date
        var firstDate = new Date();
        // now set 500 minutes back
        firstDate.setMinutes(firstDate.getDate() - 1000);

        // and generate 500 data items
        for (var i = 0; i < 500; i++) {
            var newDate = new Date(firstDate);
            // each time we add one minute
            newDate.setMinutes(newDate.getMinutes() + i);
            // some random number
            var visits = Math.round(Math.random() * 40 + 10 + i + Math.random() * i / 5);
            // add data item to the array
            chartData.push({
                date: newDate,
                visits: visits
            });
        }
        return chartData;
    }
    var map;
    function initMap() {
        map = new google.maps.Map(document.getElementById('map'), {
            center: {lat: -34.397, lng: 150.644},
            zoom: 8
        });
    }
</script>
</head>
<body>

        <g:if test='${flash.message}'>
            <div class="usCreate"><i class="fa fa-check" aria-hidden="true"></i> ${flash.message}</div>
        </g:if>
    <h1 class="dashboard"><i class="fa fa-tachometer" aria-hidden="true"></i> Dashboard</h1>

      <div class="graf1">
          <header class="graphhead">
              <h1><i class="fa fa-user" aria-hidden="true"></i> Estatística Pontos</h1>
          </header>
        <div id="chartdiv"></div>
      </div>
<div id="map" class="maped"></div>

</body>
</html>
