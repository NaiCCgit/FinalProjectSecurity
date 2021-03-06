<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zh-TW">
  <head>
    <meta charset="utf-8" />
    <meta
      name="viewport"
      content="width=device-width, initial-scale=1, shrink-to-fit=no"
    />
    <meta name="description" content="" />
    <meta name="author" content="" />
    <title>η²Ύεεε</title>

    <script src="https://code.jquery.com/jquery-3.6.0.js"></script>
    <!-- Bootstrap core JS-->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.bundle.min.js"></script>
    <!-- Core theme JS-->
    <script src="/FinalProject/js/template.js"></script>

    <link rel="icon" type="image/x-icon" href="/FinalProject/images/favicon.png?v=2" />

    <!-- Font Awesome icons (free version)-->
    <script
      src="https://use.fontawesome.com/releases/v5.15.3/js/all.js"
      crossorigin="anonymous"
    ></script>
    <!-- Google fonts-->
    <link
      href="https://fonts.googleapis.com/css?family=Varela+Round"
      rel="stylesheet"
    />
    <link
      href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
      rel="stylesheet"
    />
    <!-- Core theme CSS (includes Bootstrap)-->
    <link href="/FinalProject/css/index.css" rel="stylesheet" />

    <!-- Vuejs 2.6.7 -->
    <script
      src="https://cdnjs.cloudflare.com/ajax/libs/vue/2.6.7/vue.js"
      integrity="sha512-y/+zR8ZRJXvRWVRuhPbjSpGNIv2yG9hePHeWYEb5RPcciLwlyG0ZGd6JsiT9+sFtTON9FrDs+07ZzepwatYX1Q=="
      crossorigin="anonymous"
    ></script>
    <!-- Page Level css stylesheet -->
    <link
      rel="stylesheet"
      href="/FinalProject/css/product/productPageMain.css"
    />
  </head>

  <body id="page-top">
    <!-- Navigation-->
    <div id="app">
      <nav
        class="navbar navbar-expand-lg navbar-light fixed-top navbar-shrink"
        id="mainNav"
      >
        <div class="container px-4 px-lg-5">
          <a class="navbar-brand" href="/FinalProject/"
            ><img src="./images/audi-logo.png" alt="logo"
          /></a>
          <button
            class="navbar-toggler navbar-toggler-right"
            type="button"
            data-bs-toggle="collapse"
            data-bs-target="#navbarResponsive"
            aria-controls="navbarResponsive"
            aria-expanded="false"
            aria-label="Toggle navigation"
          >
            Menu
            <i class="fas fa-bars"></i>
          </button>
          <div
            class="collapse navbar-collapse"
            id="navbarResponsive ps-relative"
          >
            <ul class="navbar-nav ms-auto">
              <li class="nav-item">
                <a class="nav-link" href="/FinalProject/TestDrive">θ©¦ι§ι«ι©</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="/FinalProject/News">ζζ°ζΆζ―</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="/FinalProject/Model">δΊθ§£θ»ε</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="/FinalProject/Events">ζ΄»ε</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="/FinalProject/products">η²Ύεεε</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="/FinalProject/center">ε±η€ΊδΈ­εΏ</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="/FinalProject/account">ζε‘ε°ε</a>
              </li>
              <li
                class="nav-item ps-relative"
                @mouseover="hoverToggleShowCartItem('show')"
                @mouseleave="hoverToggleShowCartItem('hide')"
              >
                <a class="nav-link" href="/FinalProject/product/cart"
                  >θ³Όη©θ»<i class="fas fa-shopping-cart"></i>
                  <span v-if="cart_item_total_quantity != 0">{{
                    cart_item_total_quantity
                  }}</span>
                </a>
                <div
                  class="contaienr ps-absolute cart-div"
                  v-show="showCartItem && cartItem.length>0"
                >
                  <div class="row" v-for="(item, index) in cartItem">
                    <div class="col-3">
                      <img :src="item.product.imgPath" width="100px" alt="" />
                    </div>
                    <div class="col-5 fs-1-custome ds-flex">
                      <span> {{ item.product.name }} </span>
                    </div>
                    <div class="col-3 ds-flex fs-2-custom">
                      <span
                        class="mg-r-1 clickable"
                        @click="removeFromCart(index)"
                        ><i class="fas fa-minus-circle"></i
                      ></span>
                      <span class="fs-3-custom">{{ item.quantityInCart }}</span>
                      <span class="mg-l-1 clickable" @click="addToCart(index)"
                        ><i class="fas fa-plus-circle"></i
                      ></span>
                    </div>
                    <div class="col-12">
                      <hr class="dividor" />
                    </div>
                  </div>
                </div>
              </li>
            </ul>
          </div>
        </div>
      </nav>
      <!-- δ»₯δΈδΈθ¦ε -->
      <!-- ιθ£‘ιε§ε δ½ εηζ±θ₯Ώ -->
      <!-- Header-->
      <header class="bg-dark py-5">
        <div class="container px-4 px-lg-5 my-5">
          <div class="text-center text-white">
            <h1 class="display-4 fw-bolder">η²Ύεεε</h1>
            <p class="lead fw-normal text-white-50">
              Audi ζ¨εΊηεεΌη¨ε?Άιδ»Άεη²Ύεη‘δΈζ£ηΌ Audi η¨ε·δΈζ ΌηθΏ·δΊΊι­εοΌ
              εΎε€εζΉι’ε?ηΎθε₯ζ¨ηηζ΄»γ
            </p>
          </div>
        </div>
      </header>
      <!-- Product Section -->

      <section class="py-5">
        <div class="container px-4 px-lg-5 mt-5">
          <div class="row mb-3">
            <div class="col-6">
              <div class="row">
                <div class="col-8 tag-container">
                  <span>η±ιζ¨η±€: </span>
                  <div class="tag-label-container">
                    <div
                      class="tags"
                      v-for="(tag, index) in popularTags"
                      @click="selectTag(index)"
                      :class="tag.selected ? 'tag-selected': ''"
                    >
                      <span>{{ tag.tagName }}</span>
                    </div>
                  </div>
                </div>
                <div class="col-4 sort-container">
                  <span>ζεΊ:</span>
                  <select v-model="sortMethod">
                    <option value="greater">δΎεΉζ Όδ½ε°ι«</option>
                    <option value="less">δΎεΉζ Όι«ε°δ½</option>
                  </select>
                </div>
              </div>
            </div>
            <div class="col-6 search-main-container">
              <div class="row">
                <div class="col-12 text-right search-container">
                  <label for="search">ζε°</label>
                  <input type="text" v-model="queryString" />
                </div>
              </div>
            </div>
          </div>
          <div
            class="
              row
              gx-4 gx-lg-5
              row-cols-2 row-cols-md-3 row-cols-xl-4
              justify-content-center
            "
          >
            <div class="col mb-5" v-for="(item, index) in displayCartItem">
              <div class="card h-100">
                <!-- Sale badge-->
                <div
                  class="badge bg-dark text-white position-absolute"
                  style="top: 0.5rem; right: 0.5rem"
                  v-if="item.isOnSale"
                >
                  Sale
                </div>
                <!-- Product image-->
                <img
                  class="card-img-top"
                  :src="item.imgPath"
                  :alt="item.name"
                  loading="lazy"
                />
                <!-- Product details-->
                <div class="card-body p-4">
                  <div class="text-center">
                    <!-- Product name-->
                    <h5 class="fw-bolder">{{ item.name }}</h5>
                    <!-- Product reviews-->
                    <div
                      class="
                        d-flex
                        justify-content-center
                        small
                        text-warning
                        mb-2
                      "
                    >
                      <div class="bi-star-fill"></div>
                      <div class="bi-star-fill"></div>
                      <div class="bi-star-fill"></div>
                      <div class="bi-star-fill"></div>
                      <div class="bi-star-fill"></div>
                    </div>
                    <!-- Product price-->
                    <span
                      class="text-muted text-decoration-line-through"
                      v-if="item.isOnSale"
                      >{{ dollorFormated(item.originPrice) }}</span
                    >
                    {{ dollorFormated(item.curPrice) }}
                  </div>
                </div>
                <!-- Product actions-->
                <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                  <div class="text-center">
                    <a
                      class="btn btn-outline-dark mt-auto"
                      href="#"
                      @click="addToCartBottom(index, $event)"
                      >Add to cart</a
                    >
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </section>
    </div>

    <!-- δ»₯δΈδΈθ¦ε -->
    <!-- Footer-->
    <footer class="footer bg-black small text-center text-white-50">
      <div class="container px-4 px-lg-5">
        Copyright &copy; θ³η­ζη¬¬δΊη΅ε°ι‘ε ±ε 2021
      </div>
    </footer>
    <script src="/FinalProject/js/product/productPageVue.js"></script>
  </body>
</html>
