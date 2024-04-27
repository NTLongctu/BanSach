<?php
	require_once ("autoload/autoload.php");
	$id = intval(getInput('id'));
	if(! isset($_SESSION['name_id']))
	{
		echo "<script>alert('Bạn chưa đăng nhập!');location.href='login.php' </script>";
	}
	else
	{
		$is_check = $db->fetchOne("thich" , "users_id='".$_SESSION["name_id"]."' AND  id_product='".$id."'");
		var_dump($is_check);
		if(!empty($is_check))
		{
			echo "<script>alert('Sản phẩm đã có trong danh sách yêu thích!');location.href='index.php' </script>";
		}
		else
		{
			$data = [
				"users_id" => $_SESSION["name_id"],
				"id_product" => $id
			];

			$id_insert = $db->insert("thich",$data);
	        if($id_insert)
	        {
	            echo "<script>alert('Đã thêm vào danh sách yêu thich!');location.href='index.php' </script>";
	        }
	        else
	        {
	        	echo "<script>alert('Sản phẩm đã có trong danh sách yêu thích!');location.href='index.php' </script>";
	        }
		}
	}
?>