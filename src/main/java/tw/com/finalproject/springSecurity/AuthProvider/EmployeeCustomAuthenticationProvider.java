package tw.com.finalproject.springSecurity.AuthProvider;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.AuthenticationProvider;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.AuthenticationException;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Component;

import tw.com.finalproject.springSecurity.Token.EmployeeUsernamePasswordAuthenticationToken;
import tw.com.finalproject.yumyu.InternalUse.Employee;
import tw.com.finalproject.yumyu.InternalUse.Service.EmployeeService;

@Component
public class EmployeeCustomAuthenticationProvider implements AuthenticationProvider {

	@Autowired
	private EmployeeService employeeService;
	
	@Autowired
	private PasswordEncoder passwordEncoder;
	
	@Override
	public Authentication authenticate(Authentication authentication) throws AuthenticationException {
		String username = authentication.getName();
		String rawPassword = authentication.getCredentials().toString();
		
		Employee employee = employeeService.findbyUsername(username);
		if (employee != null) {
			String encodedPassword = employee.getPassword();
			if (passwordEncoder.matches(rawPassword, encodedPassword)) {
				List<GrantedAuthority> authorityList = new ArrayList<>();
				GrantedAuthority authority = new SimpleGrantedAuthority(employee.getRoles());
				authorityList.add(authority);

				return new EmployeeUsernamePasswordAuthenticationToken(username, rawPassword, authorityList);
			}
		}
		return null;
		
	}

	@Override
	public boolean supports(Class<?> authentication) {
		return authentication.equals(EmployeeUsernamePasswordAuthenticationToken.class);
	}

}