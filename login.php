<?php require_once('./config.php') ?>
<!DOCTYPE html>
<html lang="en" class="" style="height: auto;">
 <?php require_once('inc/header.php') ?>
<body class="hold-transition login-page">
  <script>
    start_loader()
  </script>
  <style>
      body{
          width:calc(100%);
          height:calc(100%);
          background-image:url('<?= validate_image($_settings->info('cover')) ?>');
          background-repeat: no-repeat;
          background-size:cover;
      }
      #logo-img{
          width:15em;
          height:15em;
          object-fit:scale-down;
          object-position:center center;
      }
      .pass_type{
        cursor: pointer;
      }
  </style>
<div class="login-box">
<?php $page = isset($_GET['page']) ? $_GET['page'] : 'home';  ?>
     <?php if($_settings->chk_flashdata('success')): ?>
      <script>
        alert_toast("<?php echo $_settings->flashdata('success') ?>",'success')
      </script>
    <?php endif;?>
  <!-- /.login-logo -->
  <center><img src="<?= validate_image($_settings->info('logo')) ?>" alt="System Logo" class="img-thumbnail rounded-circle" id="logo-img"></center>
  <div class="clear-fix my-2"></div>
  <div class="card card-outline card-primary">
    <div class="card-header text-center">
      <a href="./" class="h1 text-decoration-none"><b>Login</b></a>
    </div>
    <div class="card-body">
      <p class="login-box-msg">Sign in to start your session</p>

      <form id="clogin-frm" action="" method="post">
        <div class="input-group mb-3">
          <input type="email" class="form-control" name="email" autofocus placeholder="Email">
          <div class="input-group-append">
            <div class="input-group-text">
              <span class="fas fa-user"></span>
            </div>
          </div>
        </div>
        <div class="input-group mb-3">
          <input type="password" class="form-control" name="password" placeholder="Password">
          <div class="input-group-append">
              <div class="input-group-text">
              <span class="input-append-text text-sm"><i class="fa fa-eye-slash text-muted pass_type" data-type="password"></i></span>
              </div>
          </div>
        </div>
        <div class="row align-items-center">
          <div class="col-8">
            <a href="<?php echo base_url ?>">Back to Shop</a>
          </div>
          <!-- /.col -->
          <div class="col-4">
            <button type="submit" class="btn btn-primary btn-sm btn-flat btn-block">Sign In</button>
          </div>
          <!-- /.col -->
        </div>
        <div class="row">
            <div class="col-12 text-center">
             <a href="<?php echo base_url.'register.php' ?>">Create an Account</a>
            </div>
        </div>
      </form>
      <!-- /.social-auth-links -->

      <!-- <p class="mb-1">
        <a href="forgot-password.html">I forgot my password</a>
      </p> -->
      
    </div>
    <!-- /.card-body -->
  </div>
  <!-- /.card -->
</div>
<!-- /.login-box -->

<!-- jQuery -->
<script src="plugins/jquery/jquery.min.js"></script>
<!-- Bootstrap 4 -->
<script src="plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- AdminLTE App -->
<script src="dist/js/adminlte.min.js"></script>

<script>
  $(document).ready(function(){
    end_loader();
    $('.pass_type').click(function(){
      var type = $(this).attr('data-type')
      if(type == 'password'){
        $(this).attr('data-type','text')
        $(this).closest('.input-group').find('input').attr('type',"text")
        $(this).removeClass("fa-eye-slash")
        $(this).addClass("fa-eye")
      }else{
        $(this).attr('data-type','password')
        $(this).closest('.input-group').find('input').attr('type',"password")
        $(this).removeClass("fa-eye")
        $(this).addClass("fa-eye-slash")
      }
    })
  })
  
</script>
</body>
</html>