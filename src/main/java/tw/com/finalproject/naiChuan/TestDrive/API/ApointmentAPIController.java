package tw.com.finalproject.naiChuan.TestDrive.API;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Arrays;
import java.util.Calendar;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.commons.lang3.RandomStringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;

import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.ObjectMapper;

import tw.com.finalproject.naiChuan.Model.Model;
import tw.com.finalproject.naiChuan.Model.Service.ModelService;
import tw.com.finalproject.naiChuan.TestDrive.TestDriveApointment;
import tw.com.finalproject.naiChuan.TestDrive.Service.TestDriveApointmentService;

@RestController
public class ApointmentAPIController {

	@Autowired
	private TestDriveApointmentService tdriveService;
	@Autowired
	private ModelService modelService;
	
	// 找全部
	@GetMapping("/getAllTestdrive")
	public List<TestDriveApointment> getAllTestdrive() {
		return tdriveService.findAllTestdrive();
	}
	
	// 找某日所有資料
	@GetMapping("/findByDriveDateAPI/{driveDate}")
	public Map<String, Object> findByDriveDate(@PathVariable String driveDate) {
		Map<String, Object> resultMap = new HashMap<String, Object>();
		
		List<TestDriveApointment> findResult = tdriveService.findByDriveDate(driveDate);
		if (findResult == null) {
			resultMap.put("data", "fail");
		} else {
			resultMap.put("data", findResult);
		}
		
		return resultMap;
	}

	// 找單一筆
	@GetMapping("/findByIdTestdriveAPI/{formId}")
	public TestDriveApointment findByIdTestdriveAPI(@PathVariable String formId) throws Exception {
		return tdriveService.findByIdTestdrive(formId);
	}

	// 新增
	@PostMapping(path = "/addTestdrive")
	public String addTestdrive(String json) throws IOException {
		
		ObjectMapper objectMapper = new ObjectMapper();
		
		Map<String, String> map = objectMapper.readValue(json, new TypeReference<Map<String, String>>() {
		});
		
		String formId;
		String sales;
		String formTime;

		// 製造亂數做為formId
		String formIdSuffix = new SimpleDateFormat("mmddss").format(Calendar.getInstance().getTime());
		formId = RandomStringUtils.random(5, true, true) + formIdSuffix;

		// 系統分配sales
		// TODO: 系統分配sales
		// 先暫時以隨機 // shuffle 打亂順序
		List<String> salesList = Arrays.asList("Dylan", "Cara", "Beth");
		Collections.shuffle(salesList);
		sales = salesList.get(0);

		// 抓系統時間做為formTime
		formTime = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss").format(Calendar.getInstance().getTime());
		
		TestDriveApointment testdrive = new TestDriveApointment();
		
		// 從車型名稱抓車型，作為屬性車型
		String carModString = map.get("carMod");
		Model carMod = modelService.findByIdModel(carModString);
		testdrive.setCarMod(carMod);
		
		// 把TimCli得到的 checkbox 轉成 無逗號字串
		testdrive.setTimCli(map.get("timCli").replace(",", ""));
		
		testdrive.setFormId(formId);
		testdrive.setSales(sales);
		testdrive.setFormTime(formTime);
		
		testdrive.setNameCli(map.get("nameCli").trim());
		testdrive.setMailCli(map.get("mailCli").trim());
		testdrive.setTelCli(map.get("telCli").trim());
		testdrive.setRemark(map.get("remark").trim());

		tdriveService.createTestdrive(testdrive);
		return "success";
	}

	// 修改
	@PostMapping(path = "/updateTestdriveAPI", produces = "text/plain;charset=UTF-8")
	public String updateTestdriveAPI(TestDriveApointment testdrive) throws Exception {

		testdrive.setTimCli(testdrive.getTimCli().replace(",", ""));
		testdrive.setNameCli(testdrive.getNameCli().trim());
		testdrive.setMailCli(testdrive.getMailCli().trim());
		testdrive.setTelCli(testdrive.getTelCli().trim());
		testdrive.setRemark(testdrive.getRemark().trim());

		tdriveService.updateTestdrive(testdrive);

		return "success";
	}

	// 刪除
	@PostMapping("/deleteByIdTestdriveAPI/{formId}")
	public Map<String, String> deleteByIdTestdriveAPI(@PathVariable String formId) {
		Map<String, String> map = new HashMap<String, String>();
		boolean result = tdriveService.deleteByIdTestdrive(formId);
		if (result) {
			map.put("msg", "成功刪除id:" + formId);
		} else {
			System.err.println("刪除失敗");
		}
		return map;
	}

}
