<?php 
    require_once("layouts/header.php"); 
    //unset($_SESSION['cart']);
    if(! isset($_SESSION['name_id']))
    {
        echo "<script>alert('Bạn chưa đăng nhập!');location.href='login.php' </script>";
    }
    if($_SERVER["REQUEST_METHOD"] == "POST")
    {   
        $error = [];
        if(postInput('note') == '')
        {
            $error['note'] = " bạn chưa nhập ý kiến phản hồi!";
        }

        if(empty($error))
        {
            $data = [
                'id_user' => $_SESSION['name_id'],
                'noidung' => postInput('note'),
                'ngay' => date('Y/m/d')
            ];

            $insert = $db->insert("homgopy",$data);
            if($insert>0)
            {
                echo "<script>alert('Gửi phản hồi thành công!');location.href='index.php' </script>";
            }
        }
    }
    
    //data là mảng 2 chiều 
?>