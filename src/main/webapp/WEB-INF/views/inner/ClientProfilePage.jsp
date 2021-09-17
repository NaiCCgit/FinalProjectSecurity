<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zh-TW">
  <head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta
      name="viewport"
      content="width=device-width, initial-scale=1, shrink-to-fit=no"
    />
    <meta name="description" content="" />
    <meta name="author" content="" />

    <title>Audi - 內部</title>
    <!-- Custom Page level JS lib -->
    <script
      src="https://cdnjs.cloudflare.com/ajax/libs/vue/2.6.7/vue.js"
      integrity="sha512-y/+zR8ZRJXvRWVRuhPbjSpGNIv2yG9hePHeWYEb5RPcciLwlyG0ZGd6JsiT9+sFtTON9FrDs+07ZzepwatYX1Q=="
      crossorigin="anonymous"
    ></script>
    <!-- Custom fonts for this template-->
    <link
      href="/FinalProject/vendor/fontawesome-free/css/all.min.css"
      rel="stylesheet"
      type="text/css"
    />
    <link
      href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
      rel="stylesheet"
    />

    <!-- Custom styles for this template-->
    <link href="/FinalProject/css/sb-admin-2.min.css" rel="stylesheet" />
    <link rel="stylesheet" href="/FinalProject/css/ClientProfile.css" />
    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
      rel="stylesheet"
      integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
      crossorigin="anonymous"
    />
  </head>

  <body id="page-top">
    <!-- Page Wrapper -->
    <div id="wrapper">
      <!-- Sidebar -->
			<ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">
				<!-- Sidebar - Brand -->
				<a class="sidebar-brand d-flex align-items-center justify-content-center" href="/FinalProject/inner">
					<div class="sidebar-brand-icon">
						<img src="/FinalProject/images/audi-logo.png" alt="" />
					</div>
				</a>

				<!-- Divider -->
				<hr class="sidebar-divider my-0" />

				<!-- Nav Item - Dashboard -->
				<li class="nav-item active">
					<a class="nav-link" href="/FinalProject/inner">
						<i class="fas fa-fw fa-tachometer-alt"></i>
						<span>Dashboard</span></a>
				</li>

				<!-- Divider -->
				<hr class="sidebar-divider" />

				<!-- Heading -->
				<div class="sidebar-heading">FUNCTIONS</div>

                <!-- Nav Item - 新增員工 -->
                <li class="nav-item"><a class="nav-link" href="/FinalProject/inner/admin/addEmployee"> <i class="fas fa-user-plus"></i> <span>新增員工</span></a></li>
                <!-- Nav Item - 試駕總覽 -->
                <li class="nav-item"><a class="nav-link" href="/FinalProject/inner/admin/edit/testdrive"> <i class="fas fa-car"></i> <span>試駕總覽</span></a></li>
                <!-- Nav Item - 車型總覽 -->
                <li class="nav-item"><a class="nav-link" href="/FinalProject/inner/admin/edit/model"> <i class="fas fa-car-side"></i> <span>車型總覽</span></a></li>
                <!-- Nav Item - 編輯消息 -->
                <li class="nav-item"><a class="nav-link" href="/FinalProject/inner/admin/AllNewsPage"> <i class="fas fa-rss-square"></i> <span>編輯消息</span></a></li>
                <!-- Nav Item - 編輯活動 -->
                <li class="nav-item"><a class="nav-link" href="/FinalProject/inner/admin/AllEventsPage"> <i class="fas fa-snowboarding"></i></i> <span>編輯活動</span></a></li>
                <!-- Nav Item - 活動報名表單 -->
                <li class="nav-item"><a class="nav-link" href="/FinalProject/inner/admin/AllEventForm"> <i class="fas fa-file-signature"></i> <span>活動報名表單</span></a></li>
                <!-- Nav Item - 活動報名統計 -->
                <li class="nav-item"><a class="nav-link" href="/FinalProject/inner/admin/EventDashboard"> <i class="fas fa-signal"></i> <span>活動報名統計</span></a></li>
                <!-- Nav Item - 商品管理 -->
                <li class="nav-item"><a class="nav-link" href="/FinalProject/inner/admin/products"> <i class="fas fa-store-alt"></i> <span>商品管理</span></a></li>
                <!-- Nav Item - 訂單管理 -->
                <li class="nav-item"><a class="nav-link" href="/FinalProject/inner/admin/orders"> <i class="fas fa-shopping-cart"></i> <span>訂單管理</span></a></li>
                <!-- Nav Item - 編輯展示中心 -->
                <li class="nav-item"><a class="nav-link" href="/FinalProject/inner/admin/edit/center"> <i class="fas fa-landmark"></i> <span>編輯展示中心</span></a></li>

				<!-- Divider -->
				<hr class="sidebar-divider d-none d-md-block" />

				<!-- Sidebar Toggler (Sidebar) -->
				<div class="text-center d-none d-md-inline">
					<button class="rounded-circle border-0" id="sidebarToggle"></button>
				</div>
			</ul>
			<!-- End of Sidebar -->

			<!-- Content Wrapper -->
			<div id="content-wrapper" class="d-flex flex-column">
				<!-- Main Content -->
				<div id="content">
					<!-- Topbar -->
					<nav class="
              navbar navbar-expand navbar-light
              bg-white
              topbar
              mb-4
              static-top
              shadow
            ">
						<!-- Sidebar Toggle (Topbar) -->
						<button id="sidebarToggleTop" class="btn btn-link d-md-none rounded-circle mr-3">
							<i class="fa fa-bars"></i>
						</button>

						<!-- Topbar Search -->
						<form class="
                d-none d-sm-inline-block
                form-inline
                mr-auto
                ml-md-3
                my-2 my-md-0
                mw-100
                navbar-search
              ">
							<div class="input-group">
								<input type="text" class="form-control bg-light border-0 small"
									placeholder="Search for..." aria-label="Search" aria-describedby="basic-addon2" />
								<div class="input-group-append">
									<button class="btn btn-primary" type="button">
										<i class="fas fa-search fa-sm"></i>
									</button>
								</div>
							</div>
						</form>

						<!-- Topbar Navbar -->
						<ul class="navbar-nav ml-auto">

							<!-- Nav Item - User Information -->
							<li class="nav-item dropdown no-arrow">
								<a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button"
									data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
									<span class="mr-2 d-none d-lg-inline text-gray-600 small">${ empName }</span>
									<img class="img-profile rounded-circle"
										src="/FinalProject/images/svg/undraw_profile.svg" />
								</a>
								<!-- Dropdown - User Information -->
								<div class="
                    dropdown-menu dropdown-menu-right
                    shadow
                    animated--grow-in
                  " aria-labelledby="userDropdown">
				  <a class="dropdown-item" href="/FinalProject/inner/profile/${empId}">
                    <i class="fas fa-user fa-sm fa-fw mr-2 text-gray-400"></i>
                    Profile
                  </a>
									
									<div class="dropdown-divider"></div>
									<a class="dropdown-item" href="#" data-toggle="modal" data-target="#logoutModal">
										<i class="fas fa-sign-out-alt fa-sm fa-fw mr-2 text-gray-400"></i>
										Logout
									</a>
								</div>
							</li>
						</ul>
					</nav>
					<!-- End of Topbar -->

          <!-- Begin Page Content -->
          <div class="container-fluid" id="page">
            <!-- Page Heading -->
            <h1 class="h1 mb-2 text-gray-800">{{ client.name }}</h1>
            <span class="display-none">Test Drive</span>
            <hr class="sidebar-dividor" />

            <!-- Content Row -->

            <div class="card shadow mb-4">
              <div class="card-body">
                <!-- 進度條 -->
                <div class="row">
                  <div class="col-12">
                    <div class="client-stage-contianer">
                      <div class="container-custom">
                        <div class="progress-bar-custom">
                          <div class="percent"></div>
                        </div>
                        <div class="steps">
                          <div class="step" id="0" @click="changeStage(0)">
                            <p>New</p>
                          </div>
                          <div class="step" id="1" @click="changeStage(1)">
                            <p>Attempt To Engaged</p>
                          </div>
                          <div class="step" id="2" @click="changeStage(2)">
                            <p>Engaged</p>
                          </div>
                          <div class="step" id="3" @click="changeStage(3)">
                            <p>Test Drive</p>
                          </div>
                          <div class="step" id="4" @click="changeStage(4)">
                            <p>Follow Up</p>
                          </div>
                          <div class="step" id="5" @click="changeStage(5)">
                            <p>Long Term</p>
                          </div>
                          <div class="step" id="6" @click="changeStage(6)">
                            <p>Ordered</p>
                          </div>
                          <div class="step" id="7" @click="changeStage(7)">
                            <p>Closed</p>
                          </div>
                        </div>
                      </div>
                    </div>
                    <!-- end -->
                    <!-- Dividor -->
                    <br />
                    <br />
                    <hr class="sidebar-dividor" />
                    <!-- Profile Content -->
                    <div class="row">
                      <div class="col-4">
                        <table class="table-custom">
                          <tr>
                            <td class="data-label-custom"><span>姓名</span></td>
                            <td class="data-info-custom">
                              <span v-if="!clientForm.showName">{{
                                client.name
                              }}</span>
                              <input
                                type="text"
                                name="name"
                                id=""
                                v-model="client.name"
                                v-if="clientForm.showName"
                                class="border-bottom-secondary"
                              />
                            </td>
                            <td
                              class="data-toggle-custom"
                              @click="showToggle('name')"
                            >
                              <i class="fas fa-edit"></i>
                            </td>
                          </tr>
                          <tr>
                            <td class="data-label-custom">
                              <span>電子郵件</span>
                            </td>
                            <td class="data-info-custom">
                              <span>{{ client.email }}</span>
                            </td>
                            <td class="data-toggle-custom"></td>
                          </tr>
                          <tr>
                            <td class="data-label-custom"><span>電話</span></td>
                            <td class="data-info-custom">
                              <span v-if="!clientForm.showPhone">{{
                                client.phone
                              }}</span>
                              <input
                                type="text"
                                name="phone"
                                class="border-bottom-secondary"
                                v-model="client.phone"
                                v-if="clientForm.showPhone"
                              />
                            </td>
                            <td
                              class="data-toggle-custom"
                              @click="showToggle('phone')"
                            >
                              <i class="fas fa-edit"></i>
                            </td>
                          </tr>
                          <tr>
                            <td class="data-label-custom"><span>城市</span></td>
                            <td class="data-info-custom">
                              <span v-if="!clientForm.showCity">{{
                                client.city
                              }}</span>
                              <input
                                type="text"
                                name="city"
                                id=""
                                v-model="client.city"
                                v-if="clientForm.showCity"
                                class="border-bottom-secondary"
                              />
                            </td>
                            <td
                              class="data-toggle-custom"
                              @click="showToggle('city')"
                            >
                              <i class="fas fa-edit"></i>
                            </td>
                          </tr>
                          <tr>
                            <td class="data-label-custom"><span>地區</span></td>
                            <td class="data-info-custom">
                              <span v-if="!clientForm.showTown">{{
                                client.town
                              }}</span>
                              <input
                                type="text"
                                name="town"
                                id=""
                                v-if="clientForm.showTown"
                                v-model="client.town"
                                class="border-bottom-secondary"
                              />
                            </td>
                            <td
                              class="data-toggle-custom"
                              @click="showToggle('town')"
                            >
                              <i class="fas fa-edit"></i>
                            </td>
                          </tr>
                          <tr>
                            <td class="data-label-custom"><span>地址</span></td>
                            <td class="data-info-custom">
                              <span v-if="!clientForm.showAddress">{{
                                client.address
                              }}</span>
                              <input
                                type="text"
                                name="address"
                                id=""
                                v-model="client.address"
                                v-if="clientForm.showAddress"
                                class="border-bottom-secondary"
                              />
                            </td>
                            <td
                              class="data-toggle-custom"
                              @click="showToggle('address')"
                            >
                              <i class="fas fa-edit"></i>
                            </td>
                          </tr>
                          <tr>
                            <td class="data-label-custom">
                              <span>負責業務</span>
                            </td>
                            <td class="data-info-custom">
                              <span
                                v-if="!clientForm.showEmployeeName"
                                :style="clientForm.showError ? 'color:rgba(255, 71, 87,1.0)':''"
                                >{{ client.inchargeEmployeeName }}</span
                              >
                              <div
                                class="inputEmployeeSearch-container"
                                v-show="clientForm.showEmployeeName"
                              >
                                <div class="autocomplete">
                                  <input
                                    id="myInput"
                                    type="text"
                                    name="employeeName"
                                    v-model="client.inchargeEmployeeName"
                                    class="border-bottom-secondary"
                                    placeholder="Employee Name ..."
                                  />
                                </div>
                              </div>
                            </td>
                            <td
                              class="data-toggle-custom"
                              @click="showToggle('emp')"
                            >
                              <i class="fas fa-edit"></i>
                            </td>
                          </tr>
                        </table>
                        <div
                          class="container text-center"
                          v-if="clientForm.showError"
                        >
                          <div class="row">
                            <div class="col-12 err-msg">錯誤! 沒有此員工</div>
                          </div>
                        </div>
                        <hr class="sidebar-dividor" />
                        <button
                          class="btn btn-secondary"
                          style="width: 100%"
                          @click="submitInfoForm"
                          :disabled="clientForm.showError"
                        >
                          送出修改資料
                        </button>
                      </div>

                      <!-- 右邊 Tab -->
                      <div class="col-8 border-left-dark">
                        <nav class="nav nav-tabs">
                          <a
                            :class="tabArea.showActivity? 'nav-link active' : 'nav-link'"
                            aria-current="page"
                            href="#"
                            @click="showTab('activity')"
                            >提交活動</a
                          >
                          <a
                            :class="tabArea.showHistory? 'nav-link active' : 'nav-link'"
                            href="#"
                            @click="showTab('history');loadNewActivities()"
                            >歷史活動紀錄</a
                          >
                        </nav>
                        <!-- 提交活動 -->
                        <div
                          class="container submit-container"
                          v-if="tabArea.showActivity"
                        >
                          <div class="row">
                            <div class="col-12">
                              <form @submit.prevent="submitActivity">
                                <div class="row">
                                  <div class="col-6">
                                    <div class="form-floating mb-3">
                                      <input
                                        type="title"
                                        class="form-control"
                                        v-model="tabArea.activityForm.title"
                                      />
                                      <label for="title">標題</label>
                                    </div>
                                  </div>
                                  <div class="col-6">
                                    <div class="form-floating">
                                      <select
                                        class="form-select"
                                        id="type"
                                        aria-label="Floating label select example"
                                        v-model="tabArea.activityForm.type"
                                      >
                                        <option value="WALK_IN">Walk in</option>
                                        <option value="TEST_DRIVE">
                                          Test Drive
                                        </option>
                                        <option value="CALL">Call</option>
                                        <option value="NOTES">Notes</option>
                                      </select>
                                      <label for="type">類別</label>
                                    </div>
                                  </div>
                                </div>
                                <div class="row">
                                  <div class="col-12">
                                    <div class="form-floating">
                                      <textarea
                                        class="form-control content-custom"
                                        placeholder="請填寫內容"
                                        id="floatingTextarea"
                                        style="height: 380px"
                                        v-model="tabArea.activityForm.content"
                                      ></textarea>
                                      <label for="floatingTextarea">內文</label>
                                    </div>
                                  </div>
                                </div>
                                <hr class="sidebar-dividor" />
                                <div class="row">
                                  <div class="col-12">
                                    <button
                                      class="btn btn-primary"
                                      style="width: 100%"
                                    >
                                      送出
                                    </button>
                                  </div>
                                </div>
                              </form>
                            </div>
                          </div>
                        </div>
                        <!-- End 提交活動 -->

                        <!-- 歷史紀錄 -->
                        <div
                          class="container submit-container mx-height-800"
                          v-if="tabArea.showHistory"
                        >
                          <div class="row">
                            <div class="col-12">
                              <!-- 紀錄卡片 -->
                              <!-- Approach -->
                              <div
                                class="card shadow mb-4"
                                v-for="(record, index) in client.historyActivity"
                              >
                                <div class="card-header py-3">
                                  <h6 class="m-0 font-weight-bold text-dark">
                                    {{ record.title }}
                                  </h6>
                                </div>
                                <div class="card-body">
                                  <p class="text-secondary">
                                    類別: {{ record.type }}
                                  </p>
                                  <p>{{ record.content }}</p>

                                  <div class="col-2 fl-right">
                                    <div class="content-body text-gray-800">
                                      {{ record.emp }}
                                    </div>
                                  </div>
                                  <div class="col-4 fl-right">
                                    <div class="content-body text-gray-800">
                                      {{ record.date }}
                                    </div>
                                  </div>
                                </div>
                              </div>
                              <!-- <div
                                class="card mg-2"
                                v-for="(record, index) in client.historyActivity"
                              >
                                <div class="card-body">
                                  <div class="row">
                                    <div class="col-6">
                                      <div class="title-custom text-lg">
                                        {{ record.title }}
                                      </div>
                                    </div>
                                    <div class="col-6">
                                      <div class="type-custom">
                                        類別: {{ record.type }}
                                      </div>
                                    </div>
                                  </div>
                                  <hr class="sidebar-dividor" />
                                  <div class="content-body">
                                    {{ record.content }}
                                  </div>
                                  <div class="row">
                                    <div
                                      class="
                                        container
                                        fl-right
                                        pd-20px
                                        text-right
                                      "
                                    >
                                      <div class="col-2 fl-right">
                                        <div class="content-body text-gray-800">
                                          {{ record.emp }}
                                        </div>
                                      </div>
                                      <div class="col-4 fl-right">
                                        <div class="content-body text-gray-800">
                                          {{ record.date }}
                                        </div>
                                      </div>
                                    </div>
                                  </div>
                                </div>
                              </div> -->
                              <!-- End 記錄卡片 -->
                            </div>
                          </div>
                        </div>
                        <!-- End 歷史紀錄 -->
                      </div>
                      <!-- End 右邊 Tab -->
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <!-- /.container-fluid -->
            <!-- 結束內容 -->
          </div>
          <!-- End of Main Content -->

          <!-- Footer -->
          <footer class="sticky-footer bg-white">
            <div class="container my-auto">
              <div class="copyright text-center my-auto">
                <span>Copyright &copy; 資策會第五組專題報告 2021</span>
              </div>
            </div>
          </footer>
          <!-- End of Footer -->
        </div>
        <!-- End of Content Wrapper -->
      </div>
      <!-- End of Page Wrapper -->

      <!-- Scroll to Top Button-->
      <a class="scroll-to-top rounded" href="#page-top">
        <i class="fas fa-angle-up"></i>
      </a>

      <!-- Logout Modal-->
      <div
        class="modal fade"
        id="logoutModal"
        tabindex="-1"
        role="dialog"
        aria-labelledby="exampleModalLabel"
        aria-hidden="true"
      >
        <div class="modal-dialog" role="document">
          <div class="modal-content">
            <div class="modal-header">
              <h5 class="modal-title" id="exampleModalLabel">
                Ready to Leave?
              </h5>
              <button
                class="close"
                type="button"
                data-dismiss="modal"
                aria-label="Close"
              >
                <span aria-hidden="true">×</span>
              </button>
            </div>
            <div class="modal-body">
              Select "Logout" below if you are ready to end your current
              session.
            </div>
            <div class="modal-footer">
              <button
                class="btn btn-secondary"
                type="button"
                data-dismiss="modal"
              >
                Cancel
              </button>
              <a class="btn btn-primary" href="/FinalProject/logout">Logout</a>
            </div>
          </div>
        </div>
      </div>
    </div>
    <!-- Bootstrap core JavaScript-->
    <script src="/FinalProject/vendor/jquery/jquery.min.js"></script>
    <script src="/FinalProject/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Core plugin JavaScript-->
    <script src="/FinalProject/vendor/jquery-easing/jquery.easing.min.js"></script>

    <!-- Custom scripts for all pages-->
    <script src="/FinalProject/js/sb-admin-2.js"></script>

    <!-- Page level plugins -->
    <!-- <script src="/FinalProject/vendor/chart.js/Chart.min.js"></script> -->

    <!-- Page level custom scripts -->
    <script src="/FinalProject/js/ProgressBar.js"></script>
    <script src="/FinalProject/js/inner/ClientProfileVue.js"></script>
  </body>
</html>
