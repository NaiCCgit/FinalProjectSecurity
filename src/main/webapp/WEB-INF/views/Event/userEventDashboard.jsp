<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
  <!DOCTYPE html>
  <html lang="zh-TW">

  <head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <meta name="description" content="" />
    <meta name="author" content="" />
    <title>首頁</title>
    <link rel="icon" type="image/x-icon" href="/FinalProject/images/favicon.ico" />
    <!-- Font Awesome icons (free version)-->
    <script src="https://use.fontawesome.com/releases/v5.15.3/js/all.js" crossorigin="anonymous"></script>
    <!-- Google fonts-->
    <link href="https://fonts.googleapis.com/css?family=Varela+Round" rel="stylesheet" />
    <link
      href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
      rel="stylesheet" />
    <!-- Core theme CSS (includes Bootstrap)-->
    <link href="/FinalProject/css/index.css" rel="stylesheet" />
    <link rel="stylesheet" href="/FinalProject/css/account.css" />

    <!--CSS for bootstrap table-->

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">

    <!--JS for bootstrap table-->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
  </head>

  <body id="page-top">
    <!-- Navigation-->
    <nav class="navbar navbar-expand-lg navbar-light fixed-top navbar-shrink" id="mainNav">
      <div class="container px-4 px-lg-5">
        <a class="navbar-brand" href="/FinalProject"><img src="/FinalProject/images/audi-logo.png" alt="logo" /></a>
        <button class="navbar-toggler navbar-toggler-right" type="button" data-bs-toggle="collapse"
          data-bs-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false"
          aria-label="Toggle navigation">
          Menu
          <i class="fas fa-bars"></i>
        </button>
        <div class="collapse navbar-collapse" id="navbarResponsive">
          <ul class="navbar-nav ms-auto">
            <li class="nav-item">
              <a class="nav-link" href="/FinalProject/TestDrive">試駕體驗</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="/FinalProject/News">最新消息</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="#signup">了解車型</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="#signup">活動</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="/FinalProject/products">精品商城</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="#signup">展示中心</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="/FinalProject/account">會員專區</a>
            </li>
          </ul>
        </div>
      </div>
    </nav>
    <!-- 以上不要動 -->
    <!-- 這裡開始加你們的東西 -->
    <!-- About -->

    <section class="account-section text-center">
      <div class="container px-4 px-lg-5">
        <div class="row gx-4 gx-lg-5 justify-content-center">
          <div class="user-title-container">

    <h1 id="userH1">Hello, <span id="username">游聿民</span></h1>
    <div class="user-nav">
      <ul>
        <li><a href="/FinalProject/logout">登出</a></li>
        <li><a href="/FinalProject/account/setting">設定</a></li>
        <li><a href="/FinalProject/account/order">訂單管理</a></li>
        <li><a href="/FinalProject/account/event">活動管理</a></li>
        <li><a href="/FinalProject/account">首頁</a></li>
      </ul>
    </div>
    <hr style="width: 100%; margin-top: 60px" />
              <table class="table table-striped">
                <thead>
                  <tr>
                    <th scope="col">#</th>
                    <th scope="col">表單編號</th>
                    <th scope="col">表單建立時間</th>
                    <th scope="col">活動名稱</th>
                    <th scope="col">活動地點</th>
                    <th scope="col">活動日期</th>
                    <th scope="col">活動詳情</th>
                    <th scope="col">備註</th>
                    <th scope="col">報名狀態</th>
                    <th scope="col">操作</th>
                  </tr>
                </thead>
                <tbody id='tbody'>
                  <!--TODO: 可從EventForm撈出資料-->

                </tbody>
              </table>

          </div>
        </div>
      </div>
    </section>


    <!-- 以下不要動 -->
    <!-- Footer-->
    <footer class="footer bg-black small text-center text-white-50">
      <div class="container px-4 px-lg-5">
        Copyright &copy; 資策會第五組專題報告 2021
      </div>
    </footer>

    <!-- Bootstrap core JS-->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.bundle.min.js"></script>
    <!-- Core theme JS-->
    <script src="/FinalProject/js/template.js"></script>
    <script src="/FinalProject/js/jquery-3.6.0.js"></script>
    <script src="/FinalProject/js/clientSetting.js"></script>
  </body>
  <script>
    $(document).ready(function () {
      //取得user id以查找他的活動報名資訊
      var retrievedInfo = localStorage.getItem('userInfo');
      var userInfoJson = JSON.parse(retrievedInfo);
      var user_id = userInfoJson.id;


      $.ajax({
        url: "/FinalProject/findEventFormByUserid/" + user_id,
        method: "GET",
        contentType: "application/json",
        success: function (response) {
          var list = "";
          $.each(response, function (index, item) {
            list += "<tr><th scope='row'></th><td>" + item.form_id + "</td><td>" + item.creation_time + "</td><td>" + item.event.event_title + "</td><td>" + item.event.location + "</td><td>" + item.event.event_date + "</td><td><a href='/FinalProject/Events/OneEvent?event_id=" + item.event.event_id + "'>活動連結</a></td><td>" + item.message + "</td><td>" + item.status + "</td><td><button><i class='fas fa-trash-alt'></i></button></td></tr>";
          })

          $("#tbody").html(list);

        }

      })
    })
  </script>

  </html>