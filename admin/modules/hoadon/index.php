<?php
    $open = "hd";
    require_once ("../../autoload/autoload.php");
    $payment = $db->fetchAll("payment");
    $current_page = isset($_GET['page']) ? $_GET['page'] : 1;

    $start = ($current_page - 1) * $limit=4;

    $sql = "SELECT (@row_number:=@row_number + 1) AS row_num, hd.*, users.name as nameuser, users.phone as phoneuser  
            FROM (SELECT @row_number:=$start) AS init, hd LEFT JOIN users ON users.id = hd.id_user ORDER BY ID DESC";

    $hoadon = $db->fetchJone('hd',$sql,$current_page,$limit,true);
    if(isset($hoadon['page']))
    {
        $sotrang= $hoadon['page'];
        unset($hoadon['page']);
    }
    
?>

<!--header-->
<?php require_once ("../../layouts/header.php"); ?>
        <!-- Begin Page Content -->
<div class="container-fluid">

          <!-- Page Heading -->
          <div class="d-sm-flex align-items-center justify-content-between mb-4">
            <h1 class="h3 mb-0 text-gray-800">Đây là trang quản trị của admin</h1>
            <a href="#" class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm"><i class="fas fa-download fa-sm text-white-50"></i> Generate Report</a>
          </div>
          <!-- Content Row -->
          <!-- Content Row -->
          <!-- Content Row -->
</div>
        <!-- /.container-fluid -->
<div class="container-fluid">
    <?php if(isset($_SESSION['success'])) : ?>
        <div class="alert alert-success alert-dismissable"> 
            <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
            <?php echo $_SESSION['success']; unset($_SESSION['success']); ?> 
        </div>
    <?php endif; ?>
    <h2>Xử lý đơn hàng</h2>
    <div class="row">
        <div class="col-sm-12 table-responsive">
            <table class="table table-bordered dataTable" id="dataTable" width="100%" cellspacing="0" role="grid" aria-describedby="dataTable_info" style="width: 120%;">
                <thead>
                    <tr role="row">
                        <th class="sorting_desc" tabindex="0" aria-controls="dataTable" rowspan="1" colspan="1" aria-label="Name: activate to sort column ascending" style="width: 10px;" aria-sort="descending">STT</th>
                        <th class="sorting" tabindex="0" aria-controls="dataTable" rowspan="1" colspan="1" aria-label="Position: activate to sort column ascending" style="width: 80px;">Tên khách hàng</th>
                        <th class="sorting" tabindex="0" aria-controls="dataTable" rowspan="1" colspan="1" aria-label="Position: activate to sort column ascending" style="width: 40px;">Số điện thoại</th>
                        <th class="sorting" tabindex="0" aria-controls="dataTable" rowspan="1" colspan="1" aria-label="Position: activate to sort column ascending" style="width: 50px;">tổng tiền</th>
                        <th class="sorting" tabindex="0" aria-controls="dataTable" rowspan="1" colspan="1" aria-label="Position: activate to sort column ascending" style="width: 50px;">Ngày lập</th>
                        <th class="sorting" tabindex="0" aria-controls="dataTable" rowspan="1" colspan="1" aria-label="Position: activate to sort column ascending" style="width: 50px;">Địa chỉ giao hàng</th>
                        <th class="sorting" tabindex="0" aria-controls="dataTable" rowspan="1" colspan="1" aria-label="Position: activate to sort column ascending" style="width: 50px;">Trạng thái</th>
                        <th class="sorting" tabindex="0" aria-controls="dataTable" rowspan="1" colspan="1" aria-label="Position: activate to sort column ascending" style="width: 50px;">action</th>
                    </tr>
                </thead>
                <tbody>
                    <?php $stt=1; foreach ($hoadon as $item) : ?>
                    <tr>
                        <td><?php echo $item['row_num']  ?></td>
                        <td ><?php echo $item['nameuser'] ?></td>
                        <td><?php echo $item['phoneuser'] ?></td>
                        <td><?php echo formatPrice($item['tongtien']) ?>đ</td>
                        <td><?php echo $item['ngaylap']; ?></td>
                        <td><?php echo $item['diachigiaohang']; ?></td>
                       
                        <td>
                            <?php $payment = $db->fetchOne("payment","id_hd = '".$item['id']."'");if($item['status']==0 && $payment['id_type']==1 && $payment['status']==0): ?>
                                <a href="status.php?id= <?php echo $item['id'] ?> " class="btn btn-danger btn-icon-split disabled" disabled>
                                <span class="icon text-white-50">
                                                  <i class="fas fa-info-circle"></i>
                                                </span>
                                <span class="text">Chờ khách thanh toán</span>
                            </a>
                            <?php endif; ?>
                            <?php if($item['status']==0 && $payment['id_type']==1 && $payment['status']==1): ?>
                                <a href="status.php?id= <?php echo $item['id'] ?>" class="btn btn-danger btn-icon-split" >
                                <span class="icon text-white-50">
                                                  <i class="fas fa-info-circle"></i>
                                                </span>
                                <span class="text">Xác nhận đơn hàng</span>
                            </a>
                            <?php endif; ?>
                            <?php if($item['status'] == -1 ): ?>
                                <a href="" class="btn btn-danger btn-icon-split disabled" disabled>
                                <span class="icon text-white-50">
                                                  <i class="fas fa-info-circle"></i>
                                                </span>
                                <span class="text">Đơn hàng đã hủy</span>
                            </a>
                            <?php endif; ?>
                            <?php if($item['status'] == 1  ): ?>
                                <a href="status.php?id= <?php echo $item['id'] ?> " class="btn btn-primary btn-icon-split">
                                <span class="icon text-white-50">
                                                  <i class="fas fa-truck"></i>
                                                </span>
                                <span class="text">Đang vận chuyển</span>
                            </a>
                            <?php endif; ?>

                            <?php if($item['status'] == 2  ): ?>
                                <a href="status.php?id= <?php echo $item['id'] ?> " class="btn btn-info btn-icon-split">
                                <span class="icon text-white-50">
                                                  <i class="fas fa-car"></i>
                                                </span>
                                <span class="text">Chờ giao hàng</span>
                            </a>
                            <?php endif; ?>
                            <?php if($item['status'] == 3  ): ?>
                                <a href="" class="btn btn-success btn-icon-split">
                                <span class="icon text-white-50">
                                                  <i class="fas fa-check"></i>
                                                </span>
                                <span class="text">Giao hàng thành công</span>
                            </a>
                            <?php endif; ?>
                        </td>
                        <td>
                            <a href="delete.php?id= <?php echo $item['id'] ?> " class="btn btn-danger btn-icon-split">
                                <span class="icon text-white-50">
                                                  <i class="fas fa-trash"></i>
                                                </span>
                                <span class="text">Xóa</span>
                            </a>
                        </td>

                    </tr>
                    <?php $stt++;  endforeach; ?>
                </tbody>
            </table>
            <div class="row">
            <div class="col-sm-12 col-md-6">
            </div>
                    <div class="col-sm-12 col-md-4">
                        <div class="dataTables_paginate paging_simple_numbers" id="dataTable_paginate">
                            <ul class="pagination">
                                <?php if ($current_page > 1 && $sotrang > 1): ?>
                                    <li class="paginate_button page-item previous" id="dataTable_previous"><a href="?page=<?php echo $current_page-1;?>" aria-controls="dataTable" data-dt-idx="0" tabindex="0" class="page-link">Previous</a></li>
                                <?php endif; ?>
                                <?php for($i = 1; $i <= $sotrang; $i++):?>
                                    <?php if ($i == $current_page): ?>
                                        <li class="paginate_button page-item active"><a href="#" aria-controls="dataTable" data-dt-idx="1" tabindex="0" class="page-link"><?php echo $i;?></a></li>
                                    <?php else: ?>
                                        <li class="paginate_button page-item "><a href="?page=<?php echo $i;?>" aria-controls="dataTable" data-dt-idx="2" tabindex="0" class="page-link"><?php echo $i;?></a></li>
                                    <?php endif; ?>     
                                <?php endfor; ?>   
                                
                                <?php if ($current_page < $sotrang && $sotrang > 1): ?>
                                    <li class="paginate_button page-item next" id="dataTable_next"><a href="?page=<?php echo $current_page+1;?>" aria-controls="dataTable" data-dt-idx="7" tabindex="0" class="page-link">Next</a></li>
                                <?php endif; ?>
                            </ul>
                        </div>
                    </div>
        </div>
        </div>
    </div>
    
</div>
<!-- End of Main Content -->
<!-- Footer -->
<?php require_once ("../../layouts/footer.php"); ?>