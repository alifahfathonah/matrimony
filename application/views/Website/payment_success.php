<!doctype html>
<html lang="en">
  <head>
    <?php
      $mat_member_id = $this->session->userdata('mat_member_id');
      $mat_member_status = $this->session->userdata('mat_member_status');
    ?>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <!-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous"> -->


    <link rel="stylesheet" href="<?php echo base_url(); ?>assets/plugins/fontawesome-free/css/all.min.css">
    <!-- Ionicons -->
    <!-- <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css"> -->
    <!-- Tempusdominus Bbootstrap 4 -->
    <link rel="stylesheet" href="<?php echo base_url(); ?>assets/plugins/tempusdominus-bootstrap-4/css/tempusdominus-bootstrap-4.min.css">
    <!-- iCheck -->
    <link rel="stylesheet" href="<?php echo base_url(); ?>assets/plugins/icheck-bootstrap/icheck-bootstrap.min.css">
    <!-- JQVMap -->
    <link rel="stylesheet" href="<?php echo base_url(); ?>assets/plugins/jqvmap/jqvmap.min.css">
    <!-- Theme style -->
    <link rel="stylesheet" href="<?php echo base_url(); ?>assets/dist/css/adminlte.min.css">
    <!-- overlayScrollbars -->
    <link rel="stylesheet" href="<?php echo base_url(); ?>assets/plugins/overlayScrollbars/css/OverlayScrollbars.min.css">
    <!-- Daterange picker -->
    <link rel="stylesheet" href="<?php echo base_url(); ?>assets/plugins/daterangepicker/daterangepicker.css">
    <!-- summernote -->
    <link rel="stylesheet" href="<?php echo base_url(); ?>assets/plugins/summernote/summernote-bs4.css">
    <!-- Select2 -->
    <link rel="stylesheet" href="<?php echo base_url(); ?>assets/plugins/select2/css/select2.min.css">
    <link rel="stylesheet" href="<?php echo base_url(); ?>assets/plugins/select2-bootstrap4-theme/select2-bootstrap4.min.css">
    <!-- DataTables -->
    <link rel="stylesheet" href="<?php echo base_url(); ?>assets/plugins/datatables-bs4/css/dataTables.bootstrap4.css">
    <!-- Bootstrap4 Duallistbox -->
    <link rel="stylesheet" href="<?php echo base_url(); ?>assets/plugins/bootstrap4-duallistbox/bootstrap-duallistbox.min.css">
    <!-- SweetAlert2 -->
      <link rel="stylesheet" href="<?php echo base_url(); ?>assets/plugins/sweetalert2-theme-bootstrap-4/bootstrap-4.min.css">
      <!-- Toastr -->
      <link rel="stylesheet" href="<?php echo base_url(); ?>assets/plugins/toastr/toastr.min.css">
    <!-- Google Font: Source Sans Pro -->
    <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700" rel="stylesheet">
    <link rel="stylesheet" href="<?php echo base_url(); ?>assets/css/admin_css.css">
      <link rel="stylesheet" href="<?php echo base_url(); ?>assets/css/website.css">
  <script src="<?php echo base_url(); ?>assets/plugins/jquery/jquery.min.js"></script>

    <title>BHARTIYA SHADI</title>
  </head>
  <body>
    <section class="navbar-top d-none d-sm-block">
       <div class="container">
         <div class="row">
           <div class="col-md-5">
            <img class="logo-img" src="<?php echo base_url(); ?>assets/images/logo.png"  alt="">
           </div>
           <div class="col-md-7">
           </div>
         </div>
       </div>
    </section>

    <section class="navbar-top d-block d-sm-none" >
      <div class="container">
        <div class="row">
          <div class="col-12">
           <img class="logo-img mt-2" src="<?php echo base_url(); ?>assets/images/logo.png" width="100%" alt="">
          </div>
        </div>
      </div>
    </section>

    <section class="login-section" >
      <div class="container">
        <div class="row">
          <?php if($mat_member_status == 'active'){ ?>
            <div class="alert alert-success col-md-6 offset-md-3 text-center" role="alert">
              <span class="text-bold">Payment Made Successfully</span>
            </div>
          <?php } else{ ?>
            <div class="alert alert-danger col-md-6 offset-md-3 text-center" role="alert">
              <span class="text-bold">Payment Failed</span>
            </div>
          <?php } ?>
        </div>
        <div class="row">
          <div class="col-md-6 offset-md-3 text-center" role="alert">
            Do not refresh or Do not press any key...
          </div>
        </div>

      </div>
    </section>


<?php include("footer.php"); ?>
    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <!-- <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script> -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

    <script src="<?php echo base_url(); ?>assets/plugins/select2/js/select2.full.min.js"></script>
    <!-- daterangepicker -->
    <script src="<?php echo base_url(); ?>assets/plugins/moment/moment.min.js"></script>
    <script src="<?php echo base_url(); ?>assets/plugins/inputmask/min/jquery.inputmask.bundle.min.js"></script>
    <script src="<?php echo base_url(); ?>assets/plugins/daterangepicker/daterangepicker.js"></script>
    <!-- Tempusdominus Bootstrap 4 -->
    <script src="<?php echo base_url(); ?>assets/plugins/tempusdominus-bootstrap-4/js/tempusdominus-bootstrap-4.min.js"></script>

    <script src="<?php echo base_url(); ?>assets/plugins/sweetalert2/sweetalert2.min.js"></script>
    <script src="<?php echo base_url(); ?>assets/plugins/toastr/toastr.min.js"></script>

    <script type="text/javascript">
      $(document).ready(function(){
        window.setTimeout(function(){
            window.location.href = "<?php echo base_url(); ?>Member/active_members";
        }, 5000);
      });
    </script>
    <script src="<?php echo base_url(); ?>assets/js/validation.js"></script>
    <script src="<?php echo base_url(); ?>assets/plugins/sweetalert2/sweetalert2.min.js"></script>
    <script src="<?php echo base_url(); ?>assets/plugins/toastr/toastr.min.js"></script>


  </body>
</html>
