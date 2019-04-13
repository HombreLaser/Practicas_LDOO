package fcfm.doo.services;

import javax.transaction.Transactional;
import org.springframework.stereotype.Service;
import fcfm.doo.model.User;
import fcfm.doo.repo.UserRepository;

@Service
@Transactional
public class UserService {
	private final UserRepository userRepository;
	
	public UserService(UserRepository userRepository) {
		this.userRepository = userRepository;
	}
	
	public void saveUser(User user) {
		userRepository.save(user);
	}
	
	public User findByUsernameAndPassword(String username, String password) {
		return userRepository.findByUsernameAndPassword(username, password);
	}
}
