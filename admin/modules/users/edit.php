<?php
    $open = "users";
    require_once ("../../autoload/autoload.php");
    $id = intval(getInput('id'));
    $Editadmin = $db->fetchID("users",$id);
    if(empty($Editadmin))
    {
        $_SESSION['error'] = "Dữ liệu tồn tại! ";
        redirectAdmin("users");
    }
    $users = $db->fetchAll("users");
    if($_SERVER["REQUEST_METHOD"] == "POST")
    {
        $error = [];
        if(postInput('username')=='')
        {
            $error['username'] = "Hãy nhập username!";
        }
        else
        {
            if(postInput('username') != $Editadmin['username'])
            {
                $is_check = $db->fetchOne("users", "username ='".$users['username']."'");
                if($is_check != NULL)
                {
                    $error['username'] = "username đã được sử dụng hãy nhập username khác!";
                }
            }
        }
        if(postInput('password')=='')
        {
            $error['password'] = "Hãy nhập password!";
        }
        
        if(postInput('name')=='')
        {
            $error['name'] = "Hãy nhập tên!";
        }
        
        if(postInput('Email')=='')
        {
            $error['Email'] = "Hãy nhập email!";
        }
        
        if(postInput('phone')=='')
        {
            $error['phone'] = "Hãy nhập số điện thoại!";
        }
        if(postInput('address')=='')
        {
            $error['address'] = "Hãy nhập địa chỉ!";
        }
        if(!isset($_FILES['avatar']))
        {
            $error['avatar'] = "Bạn chưa chọn hình!";
        }
        $pass='';
        if(postInput('password') != NULL && postInput('re_password') != NULL )
        {
            if(postInput('password') != postInput('re_password'))
            {
                $error['re_password'] = "Nhập lại password không khớp!";
            }
            else
            {
                $pass = md5(postInput('password'));
            }
        }
        if(empty($error))
        {

            $data =
            [
                "username" => postInput('username'),
                "password" => $pass,
                "name" => postInput('name'),
                "email" => postInput('Email'),
                "phone"=>postInput('phone'),
                "address" =>postInput('address'),
                

            ];
            if(isset($_FILES['avatar']))
            {
                $file_name = $_FILES['avatar']['name'];
                $file_tmp = $_FILES['avatar']['tmp_name'];
                $file_type = $_FILES['avatar']['type'];
                $file_erro = $_FILES['avatar']['error'];

                if($file_erro == 0 )
                {
                    $part = ROOT."img/";
                    $data['avatar'] = $file_name;
                }
            }
            
            $id_update = $db->update("users",$data,array("id"=>$id));
            if($id_insert >0)
            {
                $_SESSION['success']= "Cập nhật thành công!";
                redirectAdmin("users");
            }
            else
            {
                $_SESSION['error'] = "Cập nhật thất bại! ";
                redirectAdmin("users");

            }
        }
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
                    <?php if(isset($_SESSION['error'])) : ?>
                        <div class="alert alert-danger alert-dismissable"> 
                            <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
                            <?php echo $_SESSION['error']; unset($_SESSION['error']); ?> 
                        </div>
                     <?php endif; ?>
    <h2>admin</h2>
</div>
<form action="" class="needs-validation" method="POST" enctype="multipart/form-data">

        <div class="container-sm">
            <div class="row" >
                <div class="col-md-2">
                    
                </div>
                <div class="col-md-8">

                    <div class="form-group">
                        <label >Hãy nhập username :</label>
                        <input type="text" class="form-control"  placeholder="Nhập username"  name='username' value="<?php echo$Editadmin['username'] ?>">
                        <?php if(isset($error['username'])) : ?>
                        <div class="alert alert-danger alert-dismissable"> 
                            <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
                            <?php echo $error['username']; unset($error['username']); ?> 
                        </div>
                        <?php endif; ?>
                    </div>
                    <div class="form-group">
                        <label >Password:</label>
                        <input type="password" class="form-control"  placeholder="Nhập password" name='password' value="<?php echo $Editadmin['password'] ?>">
                        <?php if(isset($error['password'])) : ?>
                        <div class="alert alert-danger alert-dismissable"> 
                            <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
                            <?php echo $error['password']; unset($error['password']); ?> 
                        </div>
                        <?php endif; ?>
                    </div>
                    <div class="form-group">
                        <label >Nhập lại password:</label>
                        <input type="password" class="form-control"  placeholder="Nhập password" name='re_password' >
                        <?php if(isset($error['re_password'])) : ?>
                        <div class="alert alert-danger alert-dismissable"> 
                            <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
                            <?php echo $error['re_password']; unset($error['re_password']); ?> 
                        </div>
                        <?php endif; ?>
                    </div>
                    <div class="form-group">
                        <label >Tên :</label>
                        <input type="text" class="form-control"  placeholder="Nhập tên!" name='name' value="<?php echo$Editadmin['name'] ?>">
                        <?php if(isset($error['name'])) : ?>
                        <div class="alert alert-danger alert-dismissable"> 
                            <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
                            <?php echo $error['name']; unset($error['name']); ?> 
                        </div>
                        <?php endif; ?>
                    </div>
                    
                    <div class="form-group">
                        <label >Email:</label>
                        <input type="email" class="form-control"  placeholder="Nhập Email" name='Email' value="<?php echo$Editadmin['email'] ?>">
                        <?php if(isset($error['Email'])) : ?>
                        <div class="alert alert-danger alert-dismissable"> 
                            <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
                            <?php echo $error['Email']; unset($error['Email']); ?> 
                        </div>
                        <?php endif; ?>
                    </div>
                    <div class="form-group">
                        <label >Số điện thoại:</label>
                        <input type="number" class="form-control"  placeholder="Nhập số điện thoại." name='phone' value="<?php echo$Editadmin['phone'] ?>">
                        <?php if(isset($error['phone'])) : ?>
                        <div class="alert alert-danger alert-dismissable"> 
                            <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
                            <?php echo $error['phone']; unset($error['phone']); ?> 
                        </div>
                        <?php endif; ?>
                    </div>
                    <div class="form-group">
                        <label >Địa chỉ:</label>
                        <input type="munber" class="form-control"  placeholder="Nhập số điện thoại." name='address' value="<?php echo$Editadmin['address'] ?>">
                        <?php if(isset($error['address'])) : ?>
                        <div class="alert alert-danger alert-dismissable"> 
                            <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
                            <?php echo $error['address']; unset($error['address']); ?> 
                        </div>
                        <?php endif; ?>
                    </div>
                    <div class="form-group">
                        <label >Chọn hình</label>
                        <input type="file" class="form-control" name="avatar">
                        <?php if(isset($error['avatar'])) : ?>
                        <div class="alert alert-danger alert-dismissable"> 
                            <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
                            <?php echo $error['avatar']; unset($error['avatar']); ?> 
                        </div>
                        <?php endif; ?>
                        <img src="/BanSach/public/admin/img/<?php echo$Editadmin['avatar'] ?>" width="50px" height="50px">
                    </div>
                    
                    <button type="submit" class="btn btn-primary">Gửi</button>
                </div>
     
            </div>
        </div>
        <div class="container-fluid">       
        </div>
                
    </form>
</div>


<!-- End of Main Content -->

<!-- Footer -->
<?php require_once ("../../layouts/footer.php"); ?>