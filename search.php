<?php
    require_once("layouts/header.php");
    $id = $_GET['keywork'];
    $sql = "SELECT * FROM product WHERE name LIKE '%$id%'";
    $product = $db->fetchsql($sql);

?>
            <!--ENDMENUNAV-->
                    <div class="col-md-9 bor">
                        <section id="slide" class="text-center" >
                            <img src="public/frontend/images/slide/h5.jpg" class="img-thumbnail">
                        </section>
                        <section class="box-main1">
                            
                            
                            <div class="showitem clearfix">
                                <?php foreach ($product as $item): ?>
                                    <div class="col-md-3 item-product bor">
                                        <a href="detail.php?id=<?php echo$item['id'] ?>">
                                            <img src="public/uploads/product/<?php echo$item['thunbar'] ?>" class="" width="100%" height="190">
                                        </a>
                                        <div class="info-item">
                                            <a href="detail.php?id=<?php echo $item['id'] ?>"><?php echo$item['name'] ?></a>
                                            <p><strike class="sale"><?php echo formatPricesale($item['price'],$item['sale']) ?> đ</strike> <b class="price"><?php echo formatPrice($item['price']) ?>đ</b></p>
                                        </div>
                                        <div class="hidenitem">
                                            <p><a href="detail.php?id=<?php echo$item['id'] ?>"><i class="fa fa-search"></i></a></p>
                                            <p><a href="thich.php?id=<?php echo $item['id'] ?>"><i class="fa fa-heart"></i></a></p>
                                            <p><a href="viewcart.php?id=<?php echo $item['id'] ?>"><i class="fa fa-shopping-basket"></i></a></p>
                                        </div>
                                    </div>
                                <?php endforeach;?>
                            </div>
                        </section>
                    </div>
                </div>
            </div>      
        </div>
    <?php require_once("layouts/footer.php") ?>  