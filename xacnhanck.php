<?php
    require_once ("autoload/autoload.php");
    $id = intval(getInput('id'));
    $status = intval(getInput('st')) == 0 ? 1 : 0 ;
    var_dump($status);
    $statushd = $db->fetchID("payment",$id);
    if(empty($statushd))
    {
        $_SESSION['error'] = "dữ liệu không tồn tại ";
        echo "<script>alert('Cập nhật không thành công dữ liệu không tồn tại!');location.href='thongtindonhang.php' </script>";
    }
    $update = $db->update("payment",array("status" => $status),array("id" => $id));
    if($update>0)
    {
        $_SESSION['success'] = "cập nhật trạng thái đơn hàng thành công!";
        header("Location: thongtindonhang.php");
    }
