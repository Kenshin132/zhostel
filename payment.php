<!DOCTYPE html>
<html lang="en">

<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<?php require('inc/links.php'); ?>
	<title>
		<?php echo $settings_r['site_title'] ?> - CONFIRM BOOKING
	</title>
	<link rel="icon" type="image/x-icon" href="images/logo/logozhostel.png">

</head>


<body class="bg-light">

	<?php require('inc/header.php'); ?>

	<?php

	date_default_timezone_set("Asia/Manila");


	if (!(isset($_SESSION['login']) && $_SESSION['login'] == true)) {
		redirect('index.php');
	}

	if (!isset($_POST['payment'])) {
		redirect('index.php');
	}
	?>



	<div class="container">
		<div class="row">

			<div class="col-12 my-5 mb-4 px-4">
				<h2 class="fw-bold">PAYMENT</h2>
				<div style="font-size: 14px;">
					<a href="index.php" class="text-secondary text-decoration-none">HOME</a>
					<span class="text-secondary"> > </span>
					<a href="rooms.php" class="text-secondary text-decoration-none">ROOMS</a>
					<span class="text-secondary"> > </span>
					<a href="#" class="text-secondary text-decoration-none">CONFIRM</a>
					<span class="text-secondary"> > </span>
					<a href="#" class="text-secondary text-decoration-none">PAYMENT</a>
				</div>
			</div>
			<!-- 
	  <div class="col-lg-7 col-md-12 px-4">
	
	  </div> -->

			<div class="col-lg-12 col-md-12 px-4">
				<div class="card mb-4 border-0 shadow-sm rounded-3">
					<div class="card-body">
						<div class="container">
							<div class="row gutters">
								<div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
									<div class="card">
										<div class="card-body p-0">
											<div class="invoice-container">
												<div class="invoice-header">
													<!-- Row start -->
													<!-- <div class="row gutters">
														<div class="col-xl-12 col-lg-12 col-md-12 col-sm-12">
															<div class="custom-actions-btns mb-5">
																<a href="#" class="btn btn-primary">
																	<i class="icon-download"></i> Download
																</a>
																<a href="#" class="btn btn-secondary">
																	<i class="icon-printer"></i> Print
																</a>
															</div>
														</div>
													</div> -->
													<!-- Row end -->
													<!-- Row start -->
													<!-- <div class="row gutters">
														<div class="col-xl-6 col-lg-6 col-md-6 col-sm-6">
															<a href="index.html" class="invoice-logo">
																zhostel.com
															</a>
														</div>
														<div class="col-lg-6 col-md-6 col-sm-6">
															<address class="text-right">
																Maxwell admin Inc, 45 NorthWest Street.<br>
																Sunrise Blvd, San Francisco.<br>
																00000 00000
															</address>
														</div>
													</div> -->
													<!-- Row end -->
													<!-- Row start -->
													<div class="row gutters">
														<div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">

															<h5 class="mb-3">How do you want to pay?</h5>
															<div class="dropdown-divider"></div>
															<div class="row gutters">
																<div
																	class="col-xl-6 col-lg-6 col-md-6 col-sm-12 col-12">
																	<h3 class="">Gcash <svg width="40px" height="40px"
																			viewBox="0 0 192 192"
																			xmlns="http://www.w3.org/2000/svg"
																			fill="none">
																			<path stroke="#000000"
																				stroke-linecap="round"
																				stroke-linejoin="round"
																				stroke-width="12"
																				d="M84 96h36c0 19.882-16.118 36-36 36s-36-16.118-36-36 16.118-36 36-36c9.941 0 18.941 4.03 25.456 10.544" />
																			<path fill="#000000"
																				d="M145.315 66.564a6 6 0 0 0-10.815 5.2l10.815-5.2ZM134.5 120.235a6 6 0 0 0 10.815 5.201l-10.815-5.201Zm-16.26-68.552a6 6 0 1 0 7.344-9.49l-7.344 9.49Zm7.344 98.124a6 6 0 0 0-7.344-9.49l7.344 9.49ZM84 152c-30.928 0-56-25.072-56-56H16c0 37.555 30.445 68 68 68v-12ZM28 96c0-30.928 25.072-56 56-56V28c-37.555 0-68 30.445-68 68h12Zm106.5-24.235C138.023 79.09 140 87.306 140 96h12c0-10.532-2.399-20.522-6.685-29.436l-10.815 5.2ZM140 96c0 8.694-1.977 16.909-5.5 24.235l10.815 5.201C149.601 116.522 152 106.532 152 96h-12ZM84 40c12.903 0 24.772 4.357 34.24 11.683l7.344-9.49A67.733 67.733 0 0 0 84 28v12Zm34.24 100.317C108.772 147.643 96.903 152 84 152v12a67.733 67.733 0 0 0 41.584-14.193l-7.344-9.49Z" />
																			<path stroke="#000000"
																				stroke-linecap="round"
																				stroke-linejoin="round"
																				stroke-width="12"
																				d="M161.549 58.776C166.965 70.04 170 82.666 170 96c0 13.334-3.035 25.96-8.451 37.223" />
																		</svg>
																		<h3>
																			<div class="row gutters">
																				<div
																					class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
																					<span class="h6">Name: </span>
																					<span class="h6">Juan Dela
																						Cruz</span>
																				</div>
																				<div
																					class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12 mb-2">
																					<span class="h6">Gcash Number:
																					</span>
																					<span class="h6">09066000801</span>
																				</div>
																				<div
																					class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
																					<span class="h6">Or just scan this
																						via gcash app:
																					</span>
																					<svg xmlns:dc="http://purl.org/dc/elements/1.1/"
																						xmlns:cc="http://creativecommons.org/ns#"
																						xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"
																						xmlns:svg="http://www.w3.org/2000/svg"
																						xmlns="http://www.w3.org/2000/svg"
																						version="1.1" width="368"
																						height="368" id="svg8822">
																						<metadata id="metadata9308">

																						</metadata>
																						<defs id="defs9306" />
																						<path
																							d="m 16,16 0,16 0,16 0,16 0,16 0,16 0,16 0,16 16,0 16,0 16,0 16,0 16,0 16,0 16,0 0,-16 0,-16 0,-16 0,-16 0,-16 0,-16 0,-16 -16,0 -16,0 -16,0 -16,0 -16,0 -16,0 -16,0 z m 128,0 0,16 0,16 16,0 0,-16 16,0 0,-16 -16,0 -16,0 z m 32,16 0,16 16,0 0,-16 -16,0 z m 16,16 0,16 16,0 16,0 0,-16 0,-16 0,-16 -16,0 0,16 0,16 -16,0 z m 0,16 -16,0 -16,0 -16,0 0,16 16,0 16,0 0,16 -16,0 0,16 16,0 0,16 16,0 0,-16 16,0 0,16 -16,0 0,16 -16,0 0,16 16,0 16,0 0,16 16,0 0,-16 0,-16 0,-16 0,-16 0,-16 -16,0 0,-16 -16,0 0,-16 z m 16,112 -16,0 0,16 -16,0 0,16 0,16 16,0 0,16 0,16 -16,0 -16,0 0,-16 16,0 0,-16 -16,0 0,-16 0,-16 -16,0 0,-16 16,0 0,16 16,0 0,-16 0,-16 -16,0 -16,0 0,-16 -16,0 -16,0 -16,0 0,16 -16,0 0,16 -16,0 0,-16 16,0 0,-16 -16,0 -16,0 0,16 -16,0 0,16 0,16 0,16 16,0 0,-16 16,0 16,0 16,0 0,-16 16,0 0,-16 16,0 0,16 -16,0 0,16 16,0 0,16 -16,0 0,16 16,0 16,0 0,16 0,16 0,16 16,0 0,16 16,0 16,0 16,0 0,16 -16,0 -16,0 -16,0 0,-16 -16,0 0,16 0,16 16,0 0,16 -16,0 0,16 16,0 16,0 0,-16 16,0 0,16 16,0 16,0 16,0 16,0 0,-16 16,0 0,16 16,0 16,0 16,0 0,-16 -16,0 -16,0 0,-16 -16,0 0,-16 -16,0 0,16 -16,0 -16,0 0,16 -16,0 0,-16 16,0 0,-16 0,-16 0,-16 16,0 0,-16 -16,0 -16,0 0,-16 16,0 0,-16 0,-16 0,-16 -16,0 0,-16 z m 48,128 0,-16 -16,0 0,16 16,0 z m 32,16 16,0 16,0 0,-16 -16,0 -16,0 0,16 z m 32,-16 16,0 0,-16 0,-16 0,-16 0,-16 -16,0 -16,0 -16,0 0,-16 -16,0 0,16 -16,0 0,16 0,16 16,0 0,-16 16,0 0,16 0,16 16,0 16,0 0,16 z m -48,-80 0,-16 -16,0 -16,0 0,16 16,0 16,0 z m 16,0 16,0 0,-16 0,-16 0,-16 16,0 0,16 16,0 0,16 16,0 0,-16 0,-16 -16,0 0,-16 16,0 0,-16 -16,0 -16,0 0,16 -16,0 0,-16 -16,0 0,16 -16,0 0,16 16,0 0,16 0,16 0,16 z m -16,-48 -16,0 0,16 16,0 0,-16 z m 64,32 -16,0 0,16 16,0 0,-16 z m -224,0 0,-16 -16,0 0,16 16,0 z m -16,0 -16,0 -16,0 -16,0 0,16 16,0 16,0 16,0 0,-16 z m -64,0 -16,0 0,16 16,0 0,-16 z m 0,-48 0,-16 -16,0 0,16 16,0 z m 112,-16 16,0 0,-16 0,-16 -16,0 0,16 0,16 z m 96,-128 0,16 0,16 0,16 0,16 0,16 0,16 0,16 16,0 16,0 16,0 16,0 16,0 16,0 16,0 0,-16 0,-16 0,-16 0,-16 0,-16 0,-16 0,-16 -16,0 -16,0 -16,0 -16,0 -16,0 -16,0 -16,0 z m -208,16 16,0 16,0 16,0 16,0 16,0 0,16 0,16 0,16 0,16 0,16 -16,0 -16,0 -16,0 -16,0 -16,0 0,-16 0,-16 0,-16 0,-16 0,-16 z m 224,0 16,0 16,0 16,0 16,0 16,0 0,16 0,16 0,16 0,16 0,16 -16,0 -16,0 -16,0 -16,0 -16,0 0,-16 0,-16 0,-16 0,-16 0,-16 z m -208,16 0,16 0,16 0,16 16,0 16,0 16,0 0,-16 0,-16 0,-16 -16,0 -16,0 -16,0 z m 224,0 0,16 0,16 0,16 16,0 16,0 16,0 0,-16 0,-16 0,-16 -16,0 -16,0 -16,0 z m -32,96 0,16 16,0 0,-16 -16,0 z m -224,96 0,16 0,16 0,16 0,16 0,16 0,16 0,16 16,0 16,0 16,0 16,0 16,0 16,0 16,0 0,-16 0,-16 0,-16 0,-16 0,-16 0,-16 0,-16 -16,0 -16,0 -16,0 -16,0 -16,0 -16,0 -16,0 z m 16,16 16,0 16,0 16,0 16,0 16,0 0,16 0,16 0,16 0,16 0,16 -16,0 -16,0 -16,0 -16,0 -16,0 0,-16 0,-16 0,-16 0,-16 0,-16 z m 16,16 0,16 0,16 0,16 16,0 16,0 16,0 0,-16 0,-16 0,-16 -16,0 -16,0 -16,0 z m 288,48 0,16 16,0 0,-16 -16,0 z"
																							id="path3093"
																							style="fill:#000000;stroke:none" />
																					</svg>

																				</div>
																			</div>

																</div>
																<div
																	class="col-xl-6 col-lg-6 col-md-6 col-sm-12 col-12">
																	<h3 class="">Bank Transfer <svg width="38px"
																			height="38px" viewBox="0 0 1920 1920"
																			xmlns="http://www.w3.org/2000/svg">
																			<g fill-rule="evenodd" clip-rule="evenodd"
																				stroke="none" stroke-width="1">
																				<path
																					d="M517.334 0V638.23H624.001V106.372H1493.33V638.23L1493.33 640L1497.99 639.557L1600 640V638.23V0H517.334Z" />
																				<path
																					d="M0 212.743H410.667V319.447H107V1759.94C107 1789.39 131.074 1813.3 160.499 1813.3H1552.99C1578.35 1813.3 1600.39 1795.26 1605.42 1770.4L1789.35 852.965H595.872L340.25 1669.14L238.065 1637.34L517.334 746.261H1920L1710.39 1791.32C1695.41 1865.9 1629.18 1920 1552.99 1920H160.499C72.0107 1920 0 1848.19 0 1759.94V212.743Z" />
																				<path fill-rule="evenodd"
																					clip-rule="evenodd"
																					d="M693.333 425.486C693.333 337.365 764.968 265.929 853.333 265.929C941.699 265.929 1013.33 337.365 1013.33 425.486C1013.33 513.607 941.699 585.044 853.333 585.044C764.968 585.044 693.333 513.607 693.333 425.486ZM853.333 372.301C823.878 372.301 800 396.113 800 425.486C800 454.86 823.878 478.672 853.333 478.672C882.788 478.672 906.667 454.86 906.667 425.486C906.667 396.113 882.788 372.301 853.333 372.301Z" />
																				<path
																					d="M1386.67 372.301H1120V478.672H1386.67V372.301Z" />
																			</g>
																		</svg>
																		<h3>
																			<div class="row gutters mb-4">
																				<!-- you can change the details below -->
																				<div
																					class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
																					<span class="h6">Bank: </span>
																					<span class="h6">BDO</span>
																				</div>
																				<div
																					class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
																					<span class="h6">Name: </span>
																					<span class="h6">Juan Dela
																						Cruz</span>
																				</div>
																				<div
																					class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
																					<span class="h6">Account Number:
																					</span>
																					<span class="h6">09066000801</span>
																				</div>
																			</div>
																			<div class="row gutters mb-4">
																				<div
																					class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
																					<span class="h6">Bank: </span>
																					<span class="h6">Metrobank</span>
																				</div>
																				<div
																					class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
																					<span class="h6">Name: </span>
																					<span class="h6">Juan Dela
																						Cruz</span>
																				</div>
																				<div
																					class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
																					<span class="h6">Account Number:
																					</span>
																					<span class="h6">09066000801</span>
																				</div>
																			</div>
																			<div class="row gutters">
																				<div
																					class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
																					<span class="h6">Bank: </span>
																					<span class="h6">BPI</span>
																				</div>
																				<div
																					class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
																					<span class="h6">Name: </span>
																					<span class="h6">Juan Dela
																						Cruz</span>
																				</div>
																				<div
																					class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
																					<span class="h6">Account Number:
																					</span>
																					<span class="h6">09066000801</span>
																				</div>
																			</div>
																</div>
															</div>
															<div class="d-flex justify-content-end">
																<div>
																	<button class="btn btn-primary"
																		id="proceed">Proceed</button>
																</div>
															</div>
														</div>

													</div>
													<!-- Row end -->
												</div>

												<!-- <div class="invoice-footer">
													Thank you for your Business.
												</div> -->
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>

					</div>
				</div>
			</div>

		</div>
	</div>


	<?php require('inc/footer.php'); ?>
	<script>

		$(document).ready(function () {
			$("#proceed").click(function () {

				// upon click proceed button, it will the call create_booking ajax to save booking to database

				const uId = "<?php echo $_SESSION['uId']; ?>"
				const room_id = "<?php echo $_SESSION['room']['id']; ?>"
				const room_payment = "<?php echo $_SESSION['room']['payment']; ?>"
				const room_name = "<?php echo $_SESSION['room']['name']; ?>";
				const room_price = "<?php echo $_SESSION['room']['price']; ?>";
				const checkin = "<?php echo $_POST['checkin']; ?>";
				const checkout = "<?php echo $_POST['checkout']; ?>";
				const name = "<?php echo $_POST['name']; ?>";
				const phonenum = "<?php echo $_POST['phonenum']; ?>";
				const address = "<?php echo $_POST['address']; ?>";

				$.ajax({
					type: 'POST',
					url: 'ajax/create_booking.php',
					data: {
						uId,
						room_id,
						room_payment,
						room_name,
						room_price,
						checkin,
						checkout,
						name,
						phonenum,
						address
					},
					success: function (result) {

						if (result === "success") {

							window.location.href = 'bookings.php';

						}
					},
				});
			});
		});

	</script>

</body>

</html>