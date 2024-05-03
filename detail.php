
<?php 
    require_once("layouts/header.php");
    $id = intval(getInput('id'));
    $user_id = $_SESSION['name_id'];
    $product = $db->fetchID("product",$id);
    $sql = "SELECT * FROM `nhanxet` WHERE id_product = $id";
    $nhanxet = $db->fetchsql($sql);

    $category = $db->fetchID("category",$product['category_id']);
    $tacgia = $db->fetchID("tacgia",$product['id_tacgia']);

    $cotyphathanh = $db->fetchID("cotyphathanh",$product['id_cotyphathanh']);
    $nxb = $db->fetchID("nxb",$product['id_nxb']);
    $tangview = intval($product['view'])+1;
    $updateview = $db->update("product",array("view" => $tangview),array("id" => $id));
    
    if(isset($_SESSION['name_id'])){
        $sql = "SELECT * FROM `hd` left join cthd on hd.id = cthd.id_hd WHERE hd.id_user = $user_id and cthd.id_product =$id";
        $total = count($db->fetchsql($sql));
    }
    if($_SERVER['REQUEST_METHOD'] === 'POST') {
        $error = [];
        if(postInput('comment')=='')
        {
            $error['comment'] = "Enter a valid comment!";
        }

        if(empty($error))
        {
            $data = [
                'id_user' => $_SESSION['name_id'],
                'noidung' => postInput('comment'),
                'id_product' => $id,
                'thoigian' => date('Y/m/d')
            ];
            $insert = $db->insert("nhanxet",$data);
            if($insert>0)
            {
                echo "<script>alert('Gửi phản hồi thành công!');location.href='index.php' </script>";
            }
        }

    }


?>
            <!--ENDMENUNAV-->
            
           
                    <div class="col-md-9 bor">
                        

                        <section class="box-main1" >
                            <div class="col-md-5 text-center">
                                <img src="public/uploads/product/<?php echo$product['thunbar'] ?>" class="img-responsive bor" id="imgmain" width="100%" height="370" data-zoom-image="images/16-270x270.png">
                                </ul>
                            </div>
                            <div class="col-md-7 bor" style="margin-top: 20px;padding: 10px;">
                               <ul id="right">
                                    <li><h2> <?php echo$product['name'] ?> </h2></li>
                                    <li>
                                        <div class="container-fluid">
                                            <div  class="row">
                                                <div class="col-sm-6">Nhà cung cấp:<strong><?php echo$cotyphathanh['name'] ?></strong> </div>
                                                <div class="col-sm-6">Tác giả: <strong><?php echo$tacgia['name'] ?></strong> </div>
                                            </div>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="container-fluid">
                                            <div  class="row">
                                                <div class="col-sm-6">Nhà xuất bản: <strong><?php echo$nxb['name'] ?></strong> </div>
                                                <div class="col-sm-6">Hình thức bìa: <strong><?php echo$product['loaibia'] ?></strong> </div>
                                            </div>
                                        </div>
                                    </li>
                                    <li>Lược xem:<?php echo$product['view'] ?></li>
                                    <li><p><strike class="sale"><?php echo formatPrice($product['price']) ?> đ</strike> | <b class="price"><?php echo formatPricesale($product['price'],$product['sale']) ?> đ -<?php echo$product['sale']  ?>%</b></li>
                                    <li><input type="number" name="qty" value="1" min="0" id="qty"></li>
                                    <li><a href="addcart.php?id=<?php echo $product['id'] ?>&&qty" class="btn btn-default"> <i class="fa fa-shopping-basket"></i>Thêm vào giỏ hàng</a></li>
                               </ul>
                            </div>

                        </section>
                        <!--id="tabdetail"-->
                        <div class="col-md-12" >
                            <div class="row">
                                    
                                <ul class="nav nav-tabs">
                                    <li class="active"><a data-toggle="tab" href="#home">Thông tin chi tiết </a></li>
                                    <li><a data-toggle="tab" href="#menu1">Mô tả sản phẩm</a></li>
                                    <li><a data-toggle="tab" href="#menu2">Video review sản phẩm</a></li>
                                    <li><a data-toggle="tab" href="#menu3">Nhận xét của khách hàng</a></li>
                                </ul>
                                <div class="tab-content">
                                    <div id="home" class="tab-pane fade in active">
                                        <h3>THÔNG TIN CHI TIẾT</h3>
                                        <div class="container-fluid">
                                            <div class="row">
                                                <div class="col-sm-3 " >
                                                    <table class="table table-borderless" id="tablejtd1">
                                                        <tbody>
                                                            <tr>
                                                                <td ><b>Công ty phát hành</b></td>
                                                            </tr>
                                                            
                                                            <tr>
                                                                <td ><b>Kích thước</b></td>
                                                            </tr>
                                                            <tr>
                                                                <td ><b>Loại bìa</b></td>
                                                            </tr>
                                                            <tr>
                                                                <td ><b>Số trang</b></td>
                                                            </tr>
                                                            <tr>
                                                                <td ><b>SKU</b></td>
                                                            </tr>
                                                            <tr>
                                                                <td ><b>Nhà xuất bản</b></td>
                                                            </tr>
                                                        </tbody> 
                                                    </table>
                                                </div>
                                                <div class="col-sm-5">
                                                    <table class="table table-borderless"  id="tablejtd">
                                                        <tbody>
                                                            <tr>
                                                                <td ><?php echo$cotyphathanh['name'] ?></td>
                                                            </tr>
                                                            <tr>
                                                                <td ><?php echo $product['kichthuoc'] ?></td>
                                                            </tr>
                                                            <tr>
                                                                <td ><?php echo $product['loaibia'] ?></td>
                                                            </tr>
                                                            <tr>
                                                                <td ><?php echo $product['sotrang'] ?></td>
                                                            </tr>
                                                            <tr>
                                                                <td ><?php echo $product['sku'] ?></td>
                                                            </tr>
                                                            <tr>
                                                                <td ><?php echo$nxb['name'] ?></td>
                                                            </tr>
                                                        </tbody> 
                                                    </table>
                                                </div>
                                            </div>
                                        </div>
                                        
                                    </div>
                                    <div id="menu1" class="tab-pane fade">
                                        
                                        <a href="" style="text-align: center;"><h3><?php echo$product['name'] ?></h3></a>  
                                        <p style="font-size: 17px;" ><?php echo$product['content'] ?></p>        
                                    </div>
                                    <div id="menu2" class="tab-pane fade">
                                        <a href=""><h3> <?php echo$product['name'] ?> </h3></a>
                                        <div class = "embed-responsive embed-responsive-16by9"> <iframe class = "embed-responsive-item" src="<?=$product['video']?>"></iframe> </div>
                                        <div class="embed-responsive embed-responsive-16by9">
                                            <iframe width="560" height="315" src="<?=$product['video']?>" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>
                                            <iframe width="560" height="315" src="<?=$product['video']?>" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>
                                        </div>
                                    </div>
                                    <div id="menu3" class="tab-pane fade">
                                        <?php if($total>0):?>
                                        <h3>Nhận xét</h3>
                                        <form action="" class="needs-validation" method="POST" enctype="multipart/form-data">
                                            <div class="form-group mt-4">
                                                <textarea class="form-control" id="comment" rows="3" placeholder="type the comment here"  name='comment'></textarea>
                                                <?php if(isset($error['comment'])) : ?>
                                                <div class="alert alert-danger alert-dismissable"> 
                                                    <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
                                                    <?php echo $error['comment']; unset($error['comment']); ?> 
                                                </div>
                                                <?php endif; ?>
                                            </div>
                                            <div class="form-group"> 
                                                <button type="submit" class="btn btn-primary" >Comment</button>
                                            </div>
                                        </form>
                                        <?php endif; ?>
                                        <div id="comment">
                                            <h3>tất cả nhận xét</h3>
                                            <?php foreach($nhanxet as $item): ?>
                                            <div class="card shadow mb-4">
                                                <div class="card-header py-3">
                                                    <?php $Getuser = $db->fetchID("users",$item['id_user']);?>
                                                    <h4 class="m-2 p-2 font-weight-bold text-primary"><?= $Getuser['name'] ?></h4>
                                                </div>
                                                <div class="card-body mb-0">
                                                    <p class="mb-0">
                                                    <span><i class="icon-calendar mr-2"><?php echo convertDate($item['thoigian']) ?></i></span>
                                                    </p>
                                                    <p class="mb-0 mt-2"><?php echo $item['noidung'] ?></p>
                                                </div>
                                            </div>
                                            <?php endforeach; ?>
                                        </div>
                                    </div>
                                </div>
                                    
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
<?php require_once("layouts/footer.php") ?>  