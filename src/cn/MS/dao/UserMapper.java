package cn.MS.dao;

import java.util.List;

import cn.MS.bean.User;
/**
 * �û�����dao��ӿ�
 * @author wan-ls
 *
 */
public interface UserMapper {
	/**
	 * ����id��ѯ�û�
	 * @param id
	 * @return
	 */
	User getUserById(int id);
	/**
	 * ���ݵ�¼����ѯ�û�
	 * @param name
	 * @return
	 */
	User getUserByLoginname(String name);
	/**
	 * ��ѯ�����û�
	 * @return
	 */
	List<User> getAllUser();
	/**
	 * ��ѯ�����Ѽ����û�
	 * @return
	 */
	List<User> getAllActiveUser();
	/**
	 * ����id���޸��û���Ϣ
	 * @param user ֻ�������б�����Ҫ�޸ĵ����Լ���
	 */
	void modifyUserByid(User user);
	/**
	 * ����û�
	 * @param user
	 */
	void addUser(User user);
	/**
	 * ���ݲ���id��ѯ�û�
	 * @param departmentId
	 * @return
	 */
	List<User> getUsersByDepartment(int departmentId);
	/**
	 * ���ݽ�ɫid��ѯ�û�
	 * @param roleId
	 * @return
	 */
	List<User> getUsersByRole(int roleId);
	
}
