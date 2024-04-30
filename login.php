<?php
  $open = "users";
  require_once ("autoload/autoload.php");
  $users = $db->fetchALL("users");

  // Handle Facebook login callback
  if (isset($_GET['code'])) {
    $token = $_GET['code'];
    $userInfo = getUserInfo($token);
    if ($userInfo) {
        // Store user data in session
        $_SESSION['name_user'] = $userInfo['name'];
        $_SESSION['name_id'] = $userInfo['id'];
        $tmp_id = substr($_SESSION['name_id'], 0,7);
        $_SESSION['name_id'] = $tmp_id;
        $is_check = $db->fetchID('users',$tmp_id);
        if(!isset($is_check)){
          $data =
            [
                "id" => $tmp_id,
                "name" => $_SESSION['name_user']
            ];
            $id_insert = $db->insert("users",$data);
            if(isset($id_insert)){
              $_SESSION['success'] = "Successfully to retrieve user information from Facebook.";
            }
        }
        echo "<script>alert('Đăng nhập thành công!');location.href='index.php'</script>";
        exit;
    } else {
        $_SESSION['error'] = "Failed to retrieve user information from Facebook.";
    }
  }

  // Function to retrieve user information from Facebook
  function getUserInfo($code) {
    $appId = '272521202582143';
    $appSecret = '99330a26022468b6055cfd3305e268c8';
    $redirectUri = urlencode('http://localhost/bansach/');
    
    // Exchange code for access token
    $tokenUrl = "https://graph.facebook.com/v19.0/oauth/access_token?client_id=$appId&redirect_uri=$redirectUri&client_secret=$appSecret&code=$code";
    //$accessToken = json_decode(file_get_contents($tokenUrl), true);
    if(isset($code)){
        $graphUrl = "https://graph.facebook.com/me?fields=id,name&access_token=" . $code;
        $userInfo = json_decode(file_get_contents($graphUrl), true);
        return $userInfo;
    }
    // if (isset($accessToken['access_token'])) {
    //     // Get user data using access token
    //     $graphUrl = "https://graph.facebook.com/me?fields=id,name&access_token=" . $accessToken['access_token'];
    //     $userInfo = json_decode(file_get_contents($graphUrl), true);
    //     return $userInfo;
    // }
    return null;
  }

  if($_SERVER["REQUEST_METHOD"] == "POST")
    {
        $error = [];
        if(postInput('username')=='')
        {
            $error['username'] = "Hãy nhập username!";
        }
        if(postInput('password')=='')
        {
            $error['password'] = "Hãy nhập password!";
        }
        $pass = md5(postInput('password'));
        
        
        if(empty($error))
        {

            $data =
            [
                "username" => postInput('username'),
                "password" => $pass,
            ];
            $is_check = $db->fetchOne("users","username = '".$data['username']."' AND password='". md5(postInput('password')) ."' ");
            if($is_check != NULL)
            {
              $_SESSION['name_user']= $is_check['name'];
              $_SESSION['name_id'] = $is_check['id']; 
              echo "<script>alert('Đăng nhập thành công!');location.href='index.php' </script>";
            }
            else
            {
              $_SESSION['error'] = "Sai tên tài khoản hoặc mật khẩu! ";
            }
        }
    }

?>
<!DOCTYPE html>
<html lang="en">

<head>

  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>SB Admin 2 - Login</title>

  <!-- Custom fonts for this template-->
  <link href="/BanSach/public/admin/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
  <!--<link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">-->

  <!-- Custom styles for this template-->
 <link href="/BanSach/public/admin/css/sb-admin-2.min.css" rel="stylesheet">
 

</head>

<body class="bg-gradient-primary">
    <div class="container">

      <!-- Outer Row -->
      <div class="row justify-content-center">

        <div class="col-xl-10 col-lg-12 col-md-9">

          <div class="card o-hidden border-0 shadow-lg my-5">
            <div class="card-body p-0">
              <!-- Nested Row within Card Body -->
              <div class="row">
                <div class="col-lg-6 d-none d-lg-block bg-login-image"></div>
                <div class="col-lg-6">
                  <div class="p-5">
                    <div class="text-center">
                      <h1 class="h4 text-gray-900 mb-4">Welcome Back!</h1>
                      <?php if(isset($_SESSION['success'])) : ?>
                          <div class="alert alert-success alert-dismissable"> 
                              <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
                      <?php echo $_SESSION['success']; unset($_SESSION['success']); ?>
                      <a href="login.php" class="alert-link">Đăng nhập</a> 
                          </div>
                      <?php endif; ?>
                  <?php if(isset($_SESSION['error'])) : ?>
                      <div class="alert alert-danger alert-dismissable"> 
                          <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
                          <?php echo $_SESSION['error']; unset($_SESSION['error']); ?> 
                      </div>
                   <?php endif; ?>
                    </div>
                    <form  action="" class="user"  method="POST"> 
                      <div class="form-group">
                        <input type="text" class="form-control form-control-user" id="exampleInputEmail" aria-describedby="emailHelp" placeholder="Nhập usrername" name="username">
                        <?php if(isset($error['username'])) : ?>
                          <div class="alert alert-danger alert-dismissable"> 
                              <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
                              <?php echo $error['username']; unset($error['username']); ?> 
                          </div>
                        <?php endif; ?>
                      </div>
                      <div class="form-group">
                        <input type="password" class="form-control form-control-user" id="exampleInputPassword" placeholder="Password" name="password">
                        <?php if(isset($error['password'])) : ?>
                          <div class="alert alert-danger alert-dismissable"> 
                              <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
                              <?php echo $error['password']; unset($error['password']); ?> 
                          </div>
                        <?php endif; ?>
                      </div>
                      <div class="form-group">
                        <div class="custom-control custom-checkbox small">
                          <input type="checkbox" class="custom-control-input" id="customCheck">
                          <label class="custom-control-label" for="customCheck">Remember Me</label>
                        </div>
                      </div>
                       <button type="submit" class="btn btn-primary btn-user btn-block">Đăng nhập</button>
                      <hr>
                      <a href="index.php" class="btn btn-google btn-user btn-block">
                        <i class="fab fa-google fa-fw"></i> Login with Google
                      </a>
                      <fb:login-button  class="btn btn-facebook btn-user btn-block" scope="public_profile,email" onlogin="checkLoginState();" >
                        <i class="fab fa-facebook-f fa-fw"></i> Login with Facebook
                      </fb:login-button>
                    </form>
                    <hr>
                    <div class="text-center">
                      <a class="small" href="#">Forgot Password?</a>
                    </div>
                    <div class="text-center">
                      <a class="small" href="taotaikhoan.php">Create an Account!</a>
                    </div>
                  </div>
                </div>
              </div>
            </div>
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

<!-- Page level custom scripts -->
<script src="/BanSach/public/admin/js/demo/chart-area-demo.js"></script>
<script src="/BanSach/public/admin/js/demo/chart-pie-demo.js"></script>
<script type="text/javascript"></script>
<script async defer crossorigin="anonymous" src="https://connect.facebook.net/en_US/sdk.js"></script>
</body>

</html>

<script async defer crossorigin="anonymous" src="https://connect.facebook.net/en_US/sdk.js"></script>
<script>
    window.fbAsyncInit = function() {
        FB.init({
            appId: '272521202582143',
            cookie: true,
            xfbml: true,
            version: 'v19.0'
        });
    };

    // Function to handle Facebook login button click
    function checkLoginState() {
        FB.getLoginStatus(function(response) {
            statusChangeCallback(response);
        });
    }

    // Function to handle Facebook login status change
    function statusChangeCallback(response) {
        if (response.status === 'connected') {
            // User is logged in with Facebook, trigger login callback
            window.location.href = 'login.php?code=' + response.authResponse.accessToken;
        } else {
            console.log('User is not logged in with Facebook.');
        }
    }
</script>