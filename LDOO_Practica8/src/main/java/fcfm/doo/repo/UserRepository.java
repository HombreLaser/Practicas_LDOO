package fcfm.doo.repo;

import org.springframework.data.repository.CrudRepository;
import fcfm.doo.model.User;

public interface UserRepository extends CrudRepository<User, Integer> {

	public User findByUsernameAndPassword(String username, String password);
}
