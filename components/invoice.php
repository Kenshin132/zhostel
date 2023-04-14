<?php

require('../admin/inc/essentials.php');
require('../admin/inc/db_config.php');


if (isset($_GET['invoice']) && isset($_GET['id'])) {



  $query = "SELECT bo.*, bd.*,uc.email FROM `booking_order` bo
      INNER JOIN `booking_details` bd ON bo.booking_id = bd.booking_id
      INNER JOIN `user_cred` uc ON bo.user_id = uc.id
      WHERE  bo.booking_id = '$_GET[id]'";

  $res = mysqli_query($con, $query);
  $total_rows = mysqli_num_rows($res);


  $data = mysqli_fetch_assoc($res);

  $date = date("h:ia | d-m-Y", strtotime($data['datentime']));
  $checkin = date("d-m-Y", strtotime($data['check_in']));
  $checkout = date("d-m-Y", strtotime($data['check_out']));


  $Vatable_Sales = $data["price"] / 1.12;
  $VAT = $Vatable_Sales * 0.12;
}

?>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8" />
  <meta http-equiv="X-UA-Compatible" content="IE=edge" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous" />
  <link
    href="https://fonts.googleapis.com/css2?family=Merienda:wght@400;700&family=Poppins:wght@400;500;600&display=swap"
    rel="stylesheet" />
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.9.1/font/bootstrap-icons.css" />
  <link rel="stylesheet" href="../css/common.css" />
  <link rel="stylesheet" href="../css/invoice.css" />
  <script src="https://code.jquery.com/jquery-3.6.4.min.js"
    integrity="sha256-oP6HI9z1XaZNBrJURtCoUT5SUnxFr8s3BzRl+cbzUq8=" crossorigin="anonymous"></script>
  <title>Document</title>
</head>

<body>
  <div class="container">
    <div class="row gutters">
      <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
        <div class="card">
          <div class="card-body p-0">
            <div class="invoice-container">
              <div class="invoice-header">
                <!-- Row start -->
                <div class="row gutters">
                  <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12"></div>
                </div>
                <!-- Row end -->
                <!-- Row start -->
                <div class="row gutters">
                  <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6">
                    <a href="index.html" class="invoice-logo"> Z Hostel </a>
                  </div>
                  <div class="col-lg-6 col-md-6 col-sm-6">
                    <address class="text-right">
                      Maxwell admin Inc, 45 NorthWest Street.<br />
                      Sunrise Blvd, San Francisco.<br />
                      00000 00000
                    </address>
                  </div>
                </div>
                <!-- Row end -->
                <!-- Row start -->
                <div class="container bg-light">
                  <div class="row gutters">
                    <!-- <div class="col-xl-9 col-lg-9 col-md-12 col-sm-12 col-12">
                                            <div class="invoice-details">
                                                <address>
                                                    Alex Maxwell<br>
                                                    150-600 Church Street, Florida, USA
                                                </address>
                                            </div>
                                        </div> -->
                    <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12 p-1">
                      <span>Order Number:</span>
                      <span>
                        <?php echo "$data[order_id]"; ?>
                      </span>
                    </div>
                    <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12 p-1">
                      <span>Name:</span>
                      <span>
                        <?php echo "$data[user_name]"; ?>
                      </span>
                    </div>
                    <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12 p-1">
                      <span>Booking Date:</span>
                      <span>
                        <?php echo $date; ?>
                      </span>
                    </div>
                    <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12 p-1">
                      <span>Check-in:</span>
                      <span>
                        <?php echo $checkin; ?>
                      </span>
                    </div>
                    <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12 p-1">
                      <span>Check-out:</span>
                      <span>
                        <?php echo $checkout; ?>
                      </span>
                    </div>
                  </div>
                </div>
                <!-- Row end -->
              </div>
              <div class="invoice-body">
                <!-- Row start -->
                <div class="row gutters">
                  <div class="col-lg-12 col-md-12 col-sm-12">
                    <div class="table-responsive">
                      <table class="table custom-table m-0">
                        <thead>
                          <tr>
                            <th>Item</th>
                            <th>Sub Total</th>
                          </tr>
                        </thead>
                        <tbody>
                          <tr>
                            <td>
                              <?php echo "$data[room_name]"; ?>
                            </td>

                            <td>
                              ₱
                              <?php echo "$data[price]"; ?>
                            </td>
                          </tr>

                          <tr>

                            <td colspan="">
                              <p>
                                VAT<br />
                                Vatable Sales<br />

                              </p>
                              <h5 class="text-success">
                                <strong>Total Amount Due</strong>
                              </h5>
                            </td>
                            <td>
                              <p>
                                PHP
                                <?php echo number_format((float) $VAT, 2, '.', ''); ?><br />
                                PHP
                                <?php echo number_format((float) $Vatable_Sales, 2, '.', ''); ?><br />

                              </p>
                              <h5 class="text-success">
                                <strong>PHP
                                  <?php echo "$data[price]"; ?>
                                </strong>
                              </h5>
                            </td>
                          </tr>
                        </tbody>
                      </table>
                    </div>
                  </div>
                </div>
                <!-- Row end -->
              </div>
              <div class="invoice-footer">Thank you for your booking.</div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</body>

<script>
  $(document).ready(function () {
    window.print()
  });
</script>

</html>