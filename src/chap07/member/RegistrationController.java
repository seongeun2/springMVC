package chap07.member;

import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/member/regist")
public class RegistrationController {
	private static final
	String MEMBER_REGISTRATION_FORM = "member/registrationForm";
	private MemberService memberService;
	
	@RequestMapping(method = RequestMethod.GET)//get방식이면 form을 찍어라
	public String form(@ModelAttribute("memberInfo") MemberRegistRequest memRegReq) {
		return MEMBER_REGISTRATION_FORM;
	}
	
	@RequestMapping(method = RequestMethod.POST)
	public String regist(@ModelAttribute("memberInfo") MemberRegistRequest memRegReq, BindingResult bindingResult) {
		new MemberRegistValidator().validate(memRegReq, bindingResult);	//memRegReq : View에서 날아온 데이터
		if(bindingResult.hasErrors()) {
			return MEMBER_REGISTRATION_FORM;
		}
		memberService.registNewMember(memRegReq);
		return "member/registered";
	}
	
	public void setMemberService(MemberService memberService) {
		this.memberService = memberService;
	}
}
