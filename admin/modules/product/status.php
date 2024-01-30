<?php

    require_once ("../../autoload/autoload.php");
    $id = intval(getInput('id'));
    $statusproduct = $db->fetchID("product",$id);
    if(empty($statusproduct))
    {
        $_SESSION['error'] = "dữ liệu không tồn tại ";
        redirectAdmin('product');
    }
    $status = $statusproduct['status'] == 0 ? 1 : 0;
    $update = $db->update("product",array("status" => $status),array("id" => $id));
    if($update>0)
    {
        $_SESSION['success'] = "Cập nhật trạng thái thành công!";
        redirectAdmin('product');
    }
    else
    {
        $_SESSION['success'] = "Cập nhật trạng thái thất bại!";
        redirectAdmin('product');
    }
?>