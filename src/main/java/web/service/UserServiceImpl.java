package web.service;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import web.dao.UserDao;
import web.model.User;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional
public class UserServiceImpl implements UserService {

    private final UserDao userDao;

    @Autowired
    public UserServiceImpl(UserDao userDao) {
        this.userDao = userDao;
    }

    @Override
    @Transactional(readOnly = true)
    public List<User> findAll() {
        return userDao.findAll();
    }
    @Override
    @Transactional(readOnly = true)
    public User findById(Long id) {
        return userDao.findById(id);
    }
    @Override
    @Transactional
    public void save(User user) {
        if (user.getId() == null) {
            userDao.save(user);
        } else {
            userDao.update(user);
        }
    }
    @Override
    @Transactional
    public void update(User user) {
        userDao.update(user);
    }
    @Override
    @Transactional
    public void delete(Long id) {
        User user = userDao.findById(id);
        if (user!= null) {
            userDao.delete(user);
        }
    }
}