<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zh-TW">

<head>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />
<title>Audi - 活動報名確認</title>
<link rel="icon" type="image/x-icon" href="/FinalProject/images/favicon.png?v=2" />
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
<!-- Bootstrap core JS-->
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.bundle.min.js"></script>
<!-- Core theme JS-->
<script src="../js/template.js"></script>
<script src="https://cdn.startbootstrap.com/sb-forms-latest.js"></script>

<!-- Font Awesome icons (free version)-->
<script src="https://use.fontawesome.com/releases/v5.15.3/js/all.js"
	crossorigin="anonymous"></script>
<!-- Google fonts-->
<link href="https://fonts.googleapis.com/css?family=Varela+Round"
	rel="stylesheet" />
<link
	href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
	rel="stylesheet" />
<!-- Core theme CSS (includes Bootstrap)-->
<link href="../css/index.css" rel="stylesheet" />
<style>
.table_booku thead tr th {
	padding: 0rem 0.5rem;
}

.table_bookd tbody tr td {
	/* padding: 0.9rem 0; */
	padding: 1em;
	color: black;
	text-align: justify;
}

#idfSub>table>tbody>tr>td {
	padding: 0.8rem 0;
}

#page-top>section>div>div>div>table>tbody>tr>td {
	padding: 0.4rem 0;
}

.table_bookd {
	margin: auto;
	text-align: center;
}

#container {
	background-color: #DBD6D6;
	margin-bottom: 3em;
}

.bg-gray-custom {
	background: linear-gradient(to bottom, #ced6e0 0%, rgba(206, 214, 224, 0.4)
		75%, rgba(206, 214, 224, 0.6) 100%);
}
</style>
</head>

<body id="page-top">
	<!-- Navigation-->
	<nav
		class="navbar navbar-expand-lg navbar-light fixed-top navbar-shrink"
		id="mainNav">
		<div class="container px-4 px-lg-5">
			<a class="navbar-brand" href="/FinalProject/"><img
				src="/FinalProject/images/audi-logo.png" alt="logo" /></a>
			<button class="navbar-toggler navbar-toggler-right" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarResponsive"
				aria-controls="navbarResponsive" aria-expanded="false"
				aria-label="Toggle navigation">
				Menu <i class="fas fa-bars"></i>
			</button>
			<div class="collapse navbar-collapse" id="navbarResponsive">
				<ul class="navbar-nav ms-auto">
					<li class="nav-item"><a class="nav-link"
						href="/FinalProject/TestDrive">試駕體驗</a></li>
					<li class="nav-item"><a class="nav-link"
						href="/FinalProject/News">最新消息</a></li>
					<li class="nav-item"><a class="nav-link"
						href="/FinalProject/Model">了解車型</a></li>
					<li class="nav-item"><a class="nav-link"
						href="/FinalProject/Events">活動</a></li>
					<li class="nav-item"><a class="nav-link"
						href="/FinalProject/products">精品商城</a></li>
					<li class="nav-item"><a class="nav-link"
						href="/FinalProject/center">展示中心</a></li>
					<li class="nav-item"><a class="nav-link"
						href="/FinalProject/account">會員專區</a></li>
				</ul>
			</div>
		</div>
	</nav>
	<!-- 以上不要動 -->
	<!-- 這裡開始加你們的東西 -->
	<!-- About -->

	<section class="about-section text-center bg-gray-custom pd-2rem">
		<div class="container px-4 px-lg-5">
			<div class="row gx-4 gx-lg-5 justify-content-center">
				<div class="col-lg-10 po-re">

					<div id='container'>

						<h2 class="h_bookf">報名資料如下請確認</h2>

						<form id="new_event_form">
							<table class="table_bookd">
								<tbody id="tbody">

								</tbody>
							</table>
					</div>





					<input class="btn btn-primary" id='submitId' type="submit"
						value="確認送出">
					<button type="button" id='edit_btn' class="btn btn-secondary">編輯資料</button>


				</div>

				</form>
			</div>
		</div>
	</section>


	<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
	<script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>


	<!-- 以下不要動 -->
	<!-- Footer-->
	<footer class="footer bg-black small text-center text-white-50">
		<div class="container px-4 px-lg-5">Copyright &copy; 資策會第五組專題報告
			2021</div>
	</footer>

	<!-- Bootstrap core JS-->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.bundle.min.js"></script>
	<!-- Core theme JS-->
	<script src="../js/template.js"></script>
	<script src="https://cdn.startbootstrap.com/sb-forms-latest.js"></script>
</body>
<script>
	$(document)
			.ready(
					function() {

						var formData = JSON.parse(localStorage
								.getItem('formData'));
						// Retrieve the object from storage
						var retrievedObject = localStorage.getItem('eventInfo');
						var eventInfoJson = JSON.parse(retrievedObject);

						if (formData !== undefined) {

							$("#tbody")
									.append(
											"<tr><td>活動名稱:</td><td>"
													+ eventInfoJson.event_title
													+ "</td></tr><tr><td>活動日期:</td><td>"
													+ eventInfoJson.event_date
													+ "</td></tr><tr><td>活動地點:</td><td>"
													+ eventInfoJson.location
													+ "</td></tr><tr><td>姓名:</td><td>"
													+ formData.name
													+ "</td></tr><tr><td>性別:</td><td>"
													+ formData.gender
													+ "</td></tr><tr><td>身分證字號: </td><td>"
													+ formData.id_number
													+ "</td></tr><tr><td>行動電話:</td><td>"
													+ formData.phone
													+ "</td></tr><tr><td>Email:</td><td>"
													+ formData.email
													+ "</td></tr><tr><td>備註:</td><td>"
													+ formData.message
													+ "</td></tr><input type='hidden' id='id_number' name='id_number' value='" + formData.id_number + "'><input type='hidden' id='gender' name='gender' value='" + formData.gender + "'>"
													+ "<input type='hidden' id='message' name='message' value='" + formData.message + "'></br></br>");
							$(".table_bookd tbody tr td").css('padding-bottom',
									'1em');

							$("#edit_btn")
									.click(
											function() {

												var content = "<h2 class='h_bookd' style='color: black' ; padding-bottom: 5em';>報名活動資料修改</h2></br><h5 style='color: black';>您報名的活動名稱："
														+ eventInfoJson.event_title
														+ "</h5></br><h5 style='color: black';>您報名的活動日期："
														+ eventInfoJson.event_date
														+ "</h5></br><h5 style='color: black';>您報名的活動地點："
														+ eventInfoJson.location
														+ "</h5></br>"
														+ "<form id='new_event_form'><table class='table_bookf' style='margin: auto;text-align: center;'><tbody id='tbody'><tr><td><label for='name'>姓名:</label></td><td><div class='form-group'><input class='form-control' type='text' aria-label='default input example' name='name' maxlength='10' id='name' placeholder='請輸入姓名' value='" + formData.name + "'required>"
														+ "<div id='validationServer02Feedback' class='invalid-feedback'>姓名欄位不可為空白</div></td></tr><tr><td><label for='gender'>性別:</label></td><td><div class='form-check form-check-inline'><input class='form-check-input' type='radio' name='gender' id='flexRadioDefault1' value='先生' />"
														+ "<label class='form-check-label' for='flexRadioDefault1'></label>先生</label></div><div class='form-check form-check-inline'><input class='form-check-input' type='radio' name='gender' id='flexRadioDefault2' value='小姐' checked /><label class='form-check-label' for='flexRadioDefault2'>小姐</label></div>"
														+ "<div class='form-check form-check-inline'><input class='form-check-input' type='radio' name='gender' id='flexRadioDefault3' value='其他'checked /><label class='form-check-label' for='flexRadioDefault3'>其他</label></div></td></tr><tr><td><label for='idnumber'>身份證字號:</label></td><td><div class='form-group'>"
														+ "<input class='form-control' type='text' aria-label='default input example' name='id_number' maxlength='10' id='idnumber' placeholder='請輸入身分證字號' value='" + formData.id_number + "' required><div id='id_validation' class='invalid-feedback'></div></div></td></tr><tr><td><label for='phone'>行動電話:</label></td><td><div class='form-group'>"
														+ "<input class='form-control' type='text' aria-label='default input example' name='phone' maxlength='13' id='phone' placeholder='請輸入連絡電話' value='" + formData.phone + "'required /><div id='phone_validation' class='invalid-feedback'></div></div></td></tr><tr><td><label for='email'>Email:</label></td>"
														+ "<td><input class='form-control' type='email' aria-label='default input example' name='email' maxlength='35' id='email' placeholder='請輸入電子信箱' value='" + formData.email + "' required /><div id='email_validation' class='invalid-feedback'></div></div></td></tr><tr><td><label for='message'>備註:</label></td>"
														+ "<td><textarea class='form-control' id='message' rows='5' cols='30' name='message' placeholder='備註200字以內' style='height: 88px;'>"
														+ formData.message
														+ "</textarea></td></tr></tbody></table></form>";

												$('#container').empty().append(
														content);
												$('#tbody').css('margin',
														'auto').css(
														'text-align', 'center');

												$("td").css('padding-bottom',
														'3em');
												$("td").css('color', 'black');

												var value = formData.gender;
												$(
														"input[name='gender'][value="
																+ value + "]")
														.prop('checked', true);

											});

						}

						$("#submitId")
								.click(
										function(e) {
											//stop submit the form, we will post it manually.
											e.preventDefault();

											var confirmedFormData = new FormData(
													document
															.getElementById("new_event_form"));

											var formInfoJson = {};
											confirmedFormData.forEach(function(
													value, key) {
												formInfoJson[key] = value;
											});
											var json = JSON
													.stringify(formInfoJson);
											localStorage.setItem(
													'confirmedFormData', json);

											//把EventForm所需參數湊起來！必要參數：user id 、活動id、表單性別、身分證、備註

											//先取得userInfo的user id
											var retrievedInfo = localStorage
													.getItem('userInfo');
											var userInfoJson = JSON
													.parse(retrievedInfo);

											var userId = userInfoJson.id;

											//取得eventInfo的event id
											localStorage.getItem('eventInfo')
											var retrievedObject = localStorage
													.getItem('eventInfo');
											eventInfoJson = JSON
													.parse(retrievedObject);

											var eventId = eventInfoJson.event_id;

											//表單所填性別、身分證、備註
											var gender = formInfoJson.gender;
											var id_number = formInfoJson.id_number;
											var message = formInfoJson.message;

											var eventRegisForm = {
												"user_id" : userId,
												"event_id" : eventId,
												"user_gender" : gender,
												"user_id_number" : id_number,
												"user_message" : message
											};

											addEventForm(eventRegisForm);

										});

						function addEventForm(eventRegisForm) {

							$
									.ajax({
										url : "/FinalProject/addEventForm",
										method : "POST",
										data : {
											"json" : JSON
													.stringify(eventRegisForm)
										},
										// contentType:"application/json",
										success : function(response) {
											if (response != undefined) {
												alert(response);
												window.location.href = "/FinalProject/Events";
											}

										},
										error : function(err) {
											alert(err);
										}
									});

						}

					});
</script>

</html>