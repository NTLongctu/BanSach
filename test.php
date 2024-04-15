<?php
  $open = "users";
  require_once ("autoload/autoload.php");
  $users = $db->fetchALL("users");

  // Initialize Facebook SDK
  require_once 'Facebook/autoload.php';
  $fb = new Facebook\Facebook([
    'app_id' => 'YOUR_APP_ID',
    'app_secret' => 'YOUR_APP_SECRET',
    'default_graph_version' => 'v2.10',
  ]);

  $helper = $fb->getRedirectLoginHelper();

  try {
    $accessToken = $helper->getAccessToken();
    if(isset($accessToken)) {
      $response = $fb->get('/me?fields=id,name,email', $accessToken->getValue());
      $userData = $response->getGraphUser();
      $_SESSION['name_user'] = $userData['name'];
      $_SESSION['name_id'] = $userData['id'];
      echo "<script>alert('Đăng nhập thành công!');location.href='index.php' </script>";
    }
  } catch(Facebook\Exceptions\FacebookResponseException $e) {
    // When Graph returns an error
    echo 'Graph returned an error: ' . $e->getMessage();
    exit;
  } catch(Facebook\Exceptions\FacebookSDKException $e) {
    // When validation fails or other local issues
    echo 'Facebook SDK returned an error: ' . $e->getMessage();
    exit;
  }

  if($_SERVER["REQUEST_METHOD"] == "POST")
    {
        // Your existing code for username/password authentication
    }

?>

<!DOCTYPE html>
<html lang="en">
<head>
  <!-- Meta tags, title, and stylesheets -->
</head>
<body class="bg-gradient-primary">
    <!-- Your HTML content -->
    <div id="status"></div>
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
                      <!-- Your existing HTML content -->
                    </div>
                    <form action="" class="user" method="POST"> 
                      <!-- Your existing form content -->
                      <fb:login-button class="btn btn-facebook btn-user btn-block" scope="public_profile,email" onlogin="checkLoginState();" >
                        <i class="fab fa-facebook-f fa-fw"></i> Login with Facebook
                      </fb:login-button>
                    </form>
                    <!-- More HTML content -->
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>

    <!-- JavaScript and SDK scripts -->
</body>
</html>
