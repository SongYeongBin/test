package kr.co.wonder.mypage;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.method.annotation.ModelAndViewMethodReturnValueHandler;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.mysql.cj.log.Log;

import kr.co.wonder.HomeController;
import kr.co.wonder.member.MemberDTO;
import kr.co.wonder.member.MemberService;
import kr.co.wonder.product.CartDTO;
import kr.co.wonder.product.ProductDTO;


@Controller
public class MypageController {
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	@Autowired
	MypageService mservice;
	@Autowired
	MemberService service;
	
	//프로필 수정 폼
	@RequestMapping (value = "mypage/profileUpdateView", method=RequestMethod.GET)
 	public String profileUpdateView() throws Exception {
		
		
	return "mypage/profileUpdateView";
	}
	
	//프로필 수정
	@RequestMapping(value="mypage/profileUpdate", method=RequestMethod.POST)
	public String profileUpdate(MemberDTO memberDTO, HttpSession session,HttpServletRequest request) throws Exception{
		logger.info("수정내용"+memberDTO);
		int r = service.profileUpdate(memberDTO);
		 session.invalidate();
		logger.info("변경"+r);
			return "redirect:/";
	}
	
	//회원탈퇴 뷰
	@RequestMapping(value="mypage/deleteView", method=RequestMethod.GET)
	public String deleteView()throws Exception{
		
		return "mypage/deleteView";
	}
	
	//회원탈퇴
	@RequestMapping(value="memberDelete", method=RequestMethod.POST)
	public String memberDelete(MemberDTO memberDTO, RedirectAttributes rttr, HttpSession session)throws Exception{
			
		MemberDTO user = (MemberDTO) session.getAttribute("user");
		
		String sessionPass = user.getMem_password();
		
		String DTOpass= memberDTO.getMem_password();
		
		if(!(sessionPass.equals(DTOpass))) {
			logger.info("안됨");
			rttr.addAttribute("msg", false);
			return "redirect:deleteView";
		}
		
		service.memberDelete(memberDTO);
		session.invalidate();
		logger.info("회원탈퇴완료");
		rttr.addAttribute("msg","그동안 이용해주셔서 감사합니다.");
		return "redirect:home";
	}
	
	//캐쉬충전 뷰
		@RequestMapping(value="mypage/cashChargeView", method=RequestMethod.GET)
		public String cashCharge()throws Exception{
			
			return "mypage/cashChargeView";
		}
	
	//캐쉬충전
		
		@RequestMapping(value="mypage/charge",method=RequestMethod.POST)
		public String charge(MemberDTO memberDTO,HttpSession session) throws Exception{
			MemberDTO user = (MemberDTO) session.getAttribute("user");
			memberDTO.setMem_id(user.getMem_id());
			int r = service.charge(memberDTO);
			logger.info(""+memberDTO);
			return "mypage/mypage";
		}
			
	//캐쉬충전 내역
		@ResponseBody
		@RequestMapping(value="mypage/chargelist",method=RequestMethod.POST)
		public List<MemberDTO> chargelist(MemberDTO memberDTO,HttpSession session) throws Exception{
			MemberDTO user=(MemberDTO) session.getAttribute("user");
			memberDTO.setMem_id(user.getMem_id());
			logger.info("내역"+service.chargelist(memberDTO.getMem_id()));
			
			return service.chargelist(memberDTO.getMem_id());
		}
		
		//캐쉬출금 뷰
				@RequestMapping(value="mypage/cashWithdrawView", method=RequestMethod.GET)
				public String cashWithdraw()throws Exception{
					
					return "mypage/cashWithdrawView";
				}
		
		//캐쉬출금
		
				@RequestMapping(value="mypage/withdraw",method=RequestMethod.POST)
				public String withdraw(MemberDTO memberDTO,HttpSession session) throws Exception{
					MemberDTO user = (MemberDTO) session.getAttribute("user");
					memberDTO.setMem_id(user.getMem_id());
				
					
					int r = service.withdraw(memberDTO);
					logger.info(""+memberDTO);
//					if(r < 0) {
//						logger.info("출금할 캐쉬가 부족합니다");
//						return "mypage/cashWithdrawView";
//					}
				
					return "mypage/mypage";
				}
					
			//캐쉬출금 내역
				@ResponseBody
				@RequestMapping(value="mypage/drawlist",method=RequestMethod.POST)
				public List<MemberDTO> drawlist(MemberDTO memberDTO,HttpSession session) throws Exception{
					MemberDTO user=(MemberDTO) session.getAttribute("user");
					memberDTO.setMem_id(user.getMem_id());
					logger.info("내역"+service.drawlist(memberDTO.getMem_id()));
					
					return service.drawlist(memberDTO.getMem_id());
				}
			
			//비밀번호 변경 전 테스트뷰
				
				@RequestMapping(value="mypage/pwsTest", method=RequestMethod.GET)
				public String pwsTest()throws Exception{
					
					return "mypage/pwsTest";
				}
				
			
				
				

	
}
	

