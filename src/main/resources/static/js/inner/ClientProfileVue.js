let getCookie = function (name) {
  const value = `; ${document.cookie}`;
  const parts = value.split(`; ${name}=`);
  if (parts.length === 2) return parts.pop().split(";").shift();
};

function autocomplete(inp, arr) {
  /*the autocomplete function takes two arguments,
  the text field element and an array of possible autocompleted values:*/
  var currentFocus;
  /*execute a function when someone writes in the text field:*/
  inp.addEventListener("input", function (e) {
    var a,
      b,
      i,
      val = this.value;
    /*close any already open lists of autocompleted values*/
    closeAllLists();
    if (!val) {
      return false;
    }
    currentFocus = -1;
    /*create a DIV element that will contain the items (values):*/
    a = document.createElement("DIV");
    a.setAttribute("id", this.id + "autocomplete-list");
    a.setAttribute("class", "autocomplete-items");
    /*append the DIV element as a child of the autocomplete container:*/
    this.parentNode.appendChild(a);
    /*for each item in the array...*/
    for (i = 0; i < arr.length; i++) {
      /*check if the item starts with the same letters as the text field value:*/
      if (
        arr[i].fullName.substr(0, val.length).toUpperCase() == val.toUpperCase()
      ) {
        /*create a DIV element for each matching element:*/
        b = document.createElement("DIV");
        /*make the matching letters bold:*/
        b.innerHTML =
          "<strong>" + arr[i].fullName.substr(0, val.length) + "</strong>";
        b.innerHTML += arr[i].fullName.substr(val.length);
        /*insert a input field that will hold the current array item's value:*/
        b.innerHTML +=
          "<input type='hidden' name='" +
          arr[i].id +
          "' value='" +
          arr[i].fullName +
          "'>";
        /*execute a function when someone clicks on the item value (DIV element):*/
        b.addEventListener("click", function (e) {
          /*insert the value for the autocomplete text field:*/
          inp.value = this.getElementsByTagName("input")[0].value;
          profileVM.$data.client.inchargeEmployeeName = inp.value;
          profileVM.$data.client.inchargeEmployeeID =
            this.getElementsByTagName("input")[0].name;
          /*close the list of autocompleted values,
              (or any other open lists of autocompleted values:*/
          closeAllLists();
        });
        b.setAttribute("v-model", "client.inchargeEmployeeName");
        a.appendChild(b);
      }
    }
  });
  /*execute a function presses a key on the keyboard:*/
  inp.addEventListener("keydown", function (e) {
    var x = document.getElementById(this.id + "autocomplete-list");
    if (x) x = x.getElementsByTagName("div");
    if (e.keyCode == 40) {
      /*If the arrow DOWN key is pressed,
        increase the currentFocus variable:*/
      currentFocus++;
      /*and and make the current item more visible:*/
      addActive(x);
    } else if (e.keyCode == 38) {
      //up
      /*If the arrow UP key is pressed,
        decrease the currentFocus variable:*/
      currentFocus--;
      /*and and make the current item more visible:*/
      addActive(x);
    } else if (e.keyCode == 13) {
      /*If the ENTER key is pressed, prevent the form from being submitted,*/
      e.preventDefault();
      if (currentFocus > -1) {
        /*and simulate a click on the "active" item:*/
        if (x) x[currentFocus].click();
      }
    }
  });
  function addActive(x) {
    /*a function to classify an item as "active":*/
    if (!x) return false;
    /*start by removing the "active" class on all items:*/
    removeActive(x);
    if (currentFocus >= x.length) currentFocus = 0;
    if (currentFocus < 0) currentFocus = x.length - 1;
    /*add class "autocomplete-active":*/
    x[currentFocus].classList.add("autocomplete-active");
  }
  function removeActive(x) {
    /*a function to remove the "active" class from all autocomplete items:*/
    for (var i = 0; i < x.length; i++) {
      x[i].classList.remove("autocomplete-active");
    }
  }
  function closeAllLists(elmnt) {
    /*close all autocomplete lists in the document,
    except the one passed as an argument:*/
    var x = document.getElementsByClassName("autocomplete-items");
    for (var i = 0; i < x.length; i++) {
      if (elmnt != x[i] && elmnt != inp) {
        x[i].parentNode.removeChild(x[i]);
      }
    }
  }
  /*execute a function when someone clicks in the document:*/
  document.addEventListener("click", function (e) {
    closeAllLists(e.target);
  });
}

let profileVM = new Vue({
  el: "#page",
  data: {
    client: {
      name: "",
      stage: "",
      email: "",
      phone: "",
      city: "",
      town: "",
      address: "",
      inchargeEmployeeName: "",
      inchargeEmployeeID: "",
      historyActivity: [
        {
          title: "??????????????????",
          type: "call",
          content:
            "???????????????6???30?????????EUA????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????6562??????????????????????????????????????????200????????????2??????????????????16??????????????????140????????????????????????70??????",
          emp: "?????????",
          date: "2021-08-01",
        },
        {
          title: "?????????",
          type: "testDrive",
          content:
            "Netflix ??????????????? 8 ??? 23 ????????????????????????????????????????????????????????????????????????????????????????????????????????????????????? ROTTENGRAFFTY ?????????????????????????????????Hallelujah????????????????????????????????????????????????",
          emp: "?????????",
          date: "2021-07-10",
        },
        {
          title: "????????????",
          type: "walkIn",
          content:
            "?????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????",
          emp: "?????????",
          date: "2021-07-12",
        },
        {
          title: "???????????????",
          type: "note",
          content:
            "???????????????????????????Kabul????????????????????????????????????Ashraf Ghani??????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????",
          emp: "?????????",
          date: "2021-07-21",
        },
      ],
    },
    stageList: [
      "NEW",
      "ATTEMPT_TO_ENGAGE",
      "ENGAGED",
      "TEST_DRIVE",
      "FOLLOW_UP",
      "LONG_TERM",
      "ORDERED",
      "CLOSED_LOST",
    ],
    clientForm: {
      showName: false,
      showPhone: false,
      showCity: false,
      showTown: false,
      showAddress: false,
      showEmployeeName: false,
      showError: false,
    },
    tabArea: {
      showActivity: true,
      showHistory: false,
      activityForm: {
        title: "",
        type: "note",
        content: "",
      },
    },
    inputSearch: {
      employeeAllSales: [
        {
          id: "1",
          fullName: "Andy Chen",
        },
      ],
    },
  },
  computed: {
    inputOptions() {
      let options = [];
      let curQuery = this.client.inchargeEmployeeName.toLowerCase();
      let salesList = this.inputSearch.employeeAllSales;
      for (let i = 0; i < salesList.length; i++) {
        if (salesList[i].fullName.toLowerCase().includes(curQuery)) {
          options.push(salesList[i]);
        }
      }
      return options;
    },
  },
  watch: {
    client: {
      handler: "showStage",
      deep: true,
      immediate: true,
    },
  },
  methods: {
    showToggle(target) {
      if (target == "name") {
        this.clientForm.showName = !this.clientForm.showName;
      }
      if (target == "phone") {
        this.clientForm.showPhone = !this.clientForm.showPhone;
      }
      if (target == "city") {
        this.clientForm.showCity = !this.clientForm.showCity;
      }
      if (target == "town") {
        this.clientForm.showTown = !this.clientForm.showTown;
      }
      if (target == "address") {
        this.clientForm.showAddress = !this.clientForm.showAddress;
      }
      if (target == "emp") {
        this.clientForm.showEmployeeName = !this.clientForm.showEmployeeName;
      }
    },
    showStage() {
      let index;
      for (let i = 0; i < this.stageList.length; i++) {
        if (this.client.stage === this.stageList[i]) {
          index = i;
        }
      }
      let stepsNode = document.querySelectorAll(".step");

      for (let k = 0; k < stepsNode.length; k++) {
        stepsNode[k].classList.remove("selected");
        stepsNode[k].classList.remove("completed");
      }

      for (let j = 0; j < index + 1; j++) {
        stepsNode[j].classList.add("selected");
        if (j < index) {
          stepsNode[j].classList.add("completed");
        }
      }
      this.progress(index);
    },
    changeStage(index) {
      var yes = confirm("????????????????????????????????????");
      let self = this;
      if (yes) {
        let clientID = getCookie("cliID");
        let newStage = this.stageList[index];
        let formData = {
          stage: newStage,
        };

        $.ajax({
          type: "POST",
          url: `/FinalProject/inner/sales/api/v1/client/update/${clientID}`,
          contentType: "application/json",
          dataType: "text",
          data: JSON.stringify(formData),
          success: function (res) {
            if (res == "fail") {
              return false;
            }
            let selectedStage = newStage;
            self.progress(index);
            self.client.stage = selectedStage;
          },
          error: function () {
            alert("Fail.");
          },
        });
      } else {
        return;
      }
    },
    progress(stepNum) {
      let steps = [];
      let p = stepNum * 14.2;
      let els = document.getElementsByClassName("step");
      document.getElementsByClassName("percent")[0].style.width = `${p}%`;
      steps.forEach((e) => {
        if (e.id === stepNum) {
          e.classList.add("selected");
          e.classList.remove("completed");
        }
        if (e.id < stepNum) {
          e.classList.add("completed");
        }
        if (e.id > stepNum) {
          e.classList.remove("selected", "completed");
        }
      });
    },
    showTab(name) {
      this.tabArea.showActivity = false;
      this.tabArea.showHistory = false;
      if (name == "history") {
        this.tabArea.showHistory = true;
      } else {
        this.tabArea.showActivity = true;
      }
    },
    submitInfoForm() {
      let clientID = getCookie("cliID");
      let formData = {
        fullName: this.client.name,
        fullAddress: this.client.address,
        city: this.client.city,
        phone: this.client.phone,
        town: this.client.towns,
        inchargeEmployeeID: this.client.inchargeEmployeeID,
      };
      $.ajax({
        url: `/FinalProject/inner/sales/api/v1/client/update/${clientID}`,
        type: "POST",
        contentType: "application/json",
        dataType: "text",
        data: JSON.stringify(formData),
        success: function (res) {
          if (res == "ok") {
            alert("ok");
          }
          window.location.reload();
        },
        error: function (err) {
          window.location.reload();
        },
      });
    },
    submitActivity() {
      let self = this;
      let clientID = getCookie("cliID");
      let formData = {
        id: clientID,
        title: self.tabArea.activityForm.title,
        type: self.tabArea.activityForm.type,
        content: self.tabArea.activityForm.content,
      };
      $.ajax({
        url: "/FinalProject/inner/sales/api/v1/clientActivity/insert",
        type: "POST",
        contentType: "application/json",
        dataType: "text",
        data: JSON.stringify(formData),
        success: function (res) {
          if (res == "ok") {
            self.tabArea.activityForm.title = "";
            self.tabArea.activityForm.type = "";
            self.tabArea.activityForm.content = "";
            alert("ok");
            window.location.reload();
          }
        },
        error: function () {
          alert("failure");
        },
      });
    },
    loadNewActivities() {
      let self = this.client;
      let clientID = getCookie("cliID");
      let processDefaultClientActivity = function (data) {
        let newActivities = [];
        for (let i = 0; i < data.length; i++) {
          let curActivity = {
            title: data[i].title,
            type: data[i].activityType,
            content: data[i].content,
            emp: data[i].employee.fullName,
            date: data[i].createdDate,
          };
          newActivities.push(curActivity);
        }
        self.historyActivity = newActivities;
      };
      let data = {
        id: clientID,
      };
      $.ajax({
        type: "POST",
        url: "/FinalProject/inner/sales/api/v1/clientActivity/query",
        contentType: "application/json; charset=UTF-8",
        dataType: "json",
        data: JSON.stringify(data),
        success: function (res) {
          processDefaultClientActivity(res);
        },
        error: function () {
          console.log("failure");
        },
      });
    },
    checkEmployeeName() {
      if (this.clientForm.showEmployeeName) {
        autocomplete(
          document.getElementById("myInput"),
          this.inputSearch.employeeAllSales
        );
      } else {
        let salesList = this.inputSearch.employeeAllSales;
        let result = "fail";
        for (let i = 0; i < salesList.length; i++) {
          if (
            this.client.inchargeEmployeeName.toLowerCase() ==
              salesList[i].fullName.toLowerCase() ||
            this.client.inchargeEmployeeName == "" ||
            this.client.includes(this.client.inchargeEmployeeName)
          ) {
            result = "ok";
          }
        }

        if (result == "fail") {
          this.clientForm.showError = true;
        } else {
          this.clientForm.showError = false;
        }
      }
    },
    toShowEmployeeError() {
      let curInput = this.client.inchargeEmployeeName;
      let options = this.inputOptions;
      let result = true;
      for (let i = 0; i < options.length; i++) {
        if (curInput.includes(options[i].fullName)) {
          result = false;
        }
      }
      return result;
    },
  },
  watch: {
    client: {
      handler: "showStage",
      deep: true,
      immediate: true,
    },
  },
  beforeMount: function () {
    let self = this;
    this.loadNewActivities();

    let processDefaultCLientData = function (data) {
      self.client.address = data.fullAddress;
      self.client.city = data.city;
      self.client.email = data.email;
      if (data.inchargedEmployee != null) {
        self.client.inchargeEmployeeID = data.inchargedEmployee.id;
        self.client.inchargeEmployeeName = data.inchargedEmployee.fullName;
      } else {
        self.client.inchargeEmployeeID = "";
        self.client.inchargeEmployeeName = "";
      }
      self.client.name = data.fullName;
      self.client.phone = data.phone;
      self.client.stage = data.salesStage;
      self.client.town = data.town;
    };

    let clientID = getCookie("cliID");
    $.ajax({
      type: "get",
      url: `/FinalProject/inner/sales/api/v1/client/${clientID}`,
      contentType: "application/json",
      dataType: "json",
      success: function (res) {
        processDefaultCLientData(res);
      },
      error: function () {
        console.log("failure");
      },
    });
    $.ajax({
      url: "/FinalProject/inner/sales/api/v1/employee/query/SALES",
      type: "GET",
      dataType: "json",
      success: function (response) {
        self.inputSearch.employeeAllSales = response;
      },
    });
  },
  updated: function () {
    this.checkEmployeeName();
  },
  mounted: function () {
    this.checkEmployeeName();
  },
});
