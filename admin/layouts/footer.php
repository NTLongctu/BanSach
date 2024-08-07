<!-- Footer -->
<footer class="sticky-footer bg-white">
    <div class="container my-auto">
        <div class="copyright text-center my-auto">
            <span>Copyright &copy; Your Website 2020</span>
        </div>
    </div>
</footer>
<!-- End of Footer -->

</div>
<!-- End of Content Wrapper -->

</div>
<!-- End of Page Wrapper -->

<!-- Scroll to Top Button-->
<a class="scroll-to-top rounded" href="#page-top">
    <i class="fas fa-angle-up"></i>
</a>

<!-- Logout Modal-->
<div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Ready to Leave?</h5>
                <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">×</span>
                </button>
            </div>
            <div class="modal-body">Select "Logout" below if you are ready to end your current session.</div>
            <div class="modal-footer">
                <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
                <a class="btn btn-primary" href="login.html">Logout</a>
            </div>
        </div>
    </div>
</div>

<!-- Bootstrap core JavaScript-->
<script src="/BanSach/public/admin/vendor/jquery/jquery.min.js"></script>
<script src="/BanSach/public/admin/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

<!-- Core plugin JavaScript-->
<script src="/BanSach/public/admin/vendor/jquery-easing/jquery.easing.min.js"></script>

<!-- Custom scripts for all pages-->
<script src="/BanSach/public/admin/js/sb-admin-2.min.js"></script>

<!-- Page level plugins -->
<script src="/BanSach/public/admin/vendor/chart.js/Chart.min.js"></script>
<!-- Place the following <script> and <textarea> tags your HTML's <body> -->
<script>
  tinymce.init({
    selector: 'textarea',
    plugins: 'anchor autolink charmap codesample emoticons image link lists media searchreplace table visualblocks wordcount linkchecker',
    toolbar: 'undo redo | blocks fontfamily fontsize | bold italic underline strikethrough | link image media table | align lineheight | numlist bullist indent outdent | emoticons charmap | removeformat',
  });
</script>
<!-- Page level custom scripts -->
<!-- <script src="/BanSach/public/admin/js/demo/chart-area-demo.js"></script>
<script src="/BanSach/public/admin/js/demo/chart-pie-demo.js"></script> -->
<?php 
    // $sqlthang1 = " SELECT MONTH(ngaylap) as thang ,tongtien FROM hd  ";
    // $t = $db->fetchsql($sqlthang1);
    // $t1=0;$t2=0;$t3=0;$t4=0;$t5=0;$t6=0;$t7=0;$t8=0;$t9=0;$t10=0;$t11=0;$t12=0;
    // _debug($t);
    // foreach ($t as $item) {
    //     if($item['thang']== 1)
    //         $t1+=$item['tongtien'];
    //     if($item['thang']== 2)
    //         $t2+=$item['tongtien'];
    //     if($item['thang']== 3)
    //         $t3+=$item['tongtien'];
    //     if($item['thang']== 4)
    //         $t4+=$item['tongtien'];
    //     if($item['thang']== 5)
    //         $t4+=$item['tongtien'];
    //     if($item['thang']== 6)
    //         $t6+=$item['tongtien'];
    //     if($item['thang']== 7)
    //         $t7+=$item['tongtien'];
    //     if($item['thang']== 8)
    //         $t8+=$item['tongtien'];
    //     if($item['thang']== 9)
    //         $t9+=$item['tongtien'];
    //     if($item['thang']== 10)
    //         $t10+=$item['tongtien'];
    //     if($item['thang']== 11)
    //         $t11+=$item['tongtien'];
    //     if($item['thang']== 12)
    //         $t12+=$item['tongtien'];
    // }
    // $datamonth = [$t1,$t2,$t3,$t4,$t5,$t6,$t7,$t8,$t9,$t10,$t11,$t12];
    //_debug($datamonth);

?>
<script type="text/javascript">
    Chart.defaults.global.defaultFontFamily = 'Nunito', '-apple-system,system-ui,BlinkMacSystemFont,"Segoe UI",Roboto,"Helvetica Neue",Arial,sans-serif';
    Chart.defaults.global.defaultFontColor = '#858796';

    function number_format(number, decimals, dec_point, thousands_sep) {
      // *     example: number_format(1234.56, 2, ',', ' ');
      // *     return: '1 234,56'
      number = (number + '').replace(',', '').replace(' ', '');
      var n = !isFinite(+number) ? 0 : +number,
        prec = !isFinite(+decimals) ? 0 : Math.abs(decimals),
        sep = (typeof thousands_sep === 'undefined') ? ',' : thousands_sep,
        dec = (typeof dec_point === 'undefined') ? '.' : dec_point,
        s = '',
        toFixedFix = function(n, prec) {
          var k = Math.pow(10, prec);
          return '' + Math.round(n * k) / k;
        };
      // Fix for IE parseFloat(0.55).toFixed(0) = 0;
      s = (prec ? toFixedFix(n, prec) : '' + Math.round(n)).split('.');
      if (s[0].length > 3) {
        s[0] = s[0].replace(/\B(?=(?:\d{3})+(?!\d))/g, sep);
      }
      if ((s[1] || '').length < prec) {
        s[1] = s[1] || '';
        s[1] += new Array(prec - s[1].length + 1).join('0');
      }
      return s.join(dec);
    }
    $(function(){
        $datastatus = $("#myPieChart").attr('datatrangthai');
        $datastatus = JSON.parse($datastatus);
        var ctx = document.getElementById("myPieChart");
        var myPieChart = new Chart(ctx, {
          type: 'doughnut',
          data: {
            labels: ["Chờ xác nhận", "Chờ vận chuyển", "Chờ giao hàng","Giao thành công","Đơn hàng đã hủy"],
            datasets: [{
              data: $datastatus,
              backgroundColor: ['#4e73df', '#1cc88a', '#36b9cc','#00CC33','#e74a3b'],
              hoverBackgroundColor: ['#2e59d9', '#17a673', '#2c9faf','#009933','#e75a3b'],
              hoverBorderColor: "rgba(234, 236, 244, 1)"
            }],
          },
          options: {
            maintainAspectRatio: false,
            tooltips: {
              backgroundColor: "rgb(255,255,255)",
              bodyFontColor: "#858796",
              borderColor: '#dddfeb',
              borderWidth: 1,
              xPadding: 15,
              yPadding: 15,
              displayColors: false,
              caretPadding: 10
            },
            legend: {
              display: false
            },
            cutoutPercentage: 80,
          },
        });
    })
    // Area Chart Example
   
    $(function(){
        $dataview = $("#myAreaChart").attr('data-month');
        $dataview = JSON.parse($dataview);
        var ctx = document.getElementById("myAreaChart");
        var myLineChart = new Chart(ctx, {
          type: 'line',
          data: {
            labels: ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12"],
            datasets: [{
              label: "Tổng tiền",
              lineTension: 0.3,
              backgroundColor: "rgba(78, 115, 223, 0.05)",
              borderColor: "rgba(78, 115, 223, 1)",
              pointRadius: 3,
              pointBackgroundColor: "rgba(78, 115, 223, 1)",
              pointBorderColor: "rgba(78, 115, 223, 1)",
              pointHoverRadius: 3,
              pointHoverBackgroundColor: "rgba(78, 115, 223, 1)",
              pointHoverBorderColor: "rgba(78, 115, 223, 1)",
              pointHitRadius: 10,
              pointBorderWidth: 2,
              data: $dataview,
            }],
          },
          options: {
            maintainAspectRatio: false,
            layout: {
              padding: {
                left: 10,
                right: 25,
                top: 25,
                bottom: 0
              }
            },
            scales: {
              xAxes: [{
                time: {
                  unit: 'date'
                },
                gridLines: {
                  display: false,
                  drawBorder: false
                },
                ticks: {
                  maxTicksLimit: 6
                }
              }],
              yAxes: [{
                ticks: {
                  maxTicksLimit: 5,//tiên chia thành 5 mức
                  padding: 10,
                  // Include a dollar sign in the ticks
                  callback: function(value, index, values) {
                    return number_format(value) + 'đ';
                  }
                },
                gridLines: {
                  color: "rgb(234, 236, 244)",
                  zeroLineColor: "rgb(234, 236, 244)",
                  drawBorder: false,
                  borderDash: [2],
                  zeroLineBorderDash: [2]
                }
              }],
            },
            legend: {
              display: false
            },
            tooltips: {
              backgroundColor: "rgb(255,255,255)",
              bodyFontColor: "#858796",
              titleMarginBottom: 10,
              titleFontColor: '#6e707e',
              titleFontSize: 14,
              borderColor: '#dddfeb',
              borderWidth: 1,
              xPadding: 15,
              yPadding: 15,
              displayColors: false,
              intersect: false,
              mode: 'index',
              caretPadding: 10,
              callbacks: {
                label: function(tooltipItem, chart) {
                  var datasetLabel = chart.datasets[tooltipItem.datasetIndex].label || '';
                  return datasetLabel + ':' + number_format(tooltipItem.yLabel) + 'đ';
                }
              }
            }
          }
        });

    })


   
</script>

</body>

</html>