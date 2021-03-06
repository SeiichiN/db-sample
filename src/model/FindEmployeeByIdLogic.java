package model;

import dao.EmployeeDAO;
import model.bean.Employee;

public class FindEmployeeByIdLogic implements CommandInterface {
	public void execute() {}
	
	public void execute(int id, Employee emp) {
		EmployeeDAO dao = new EmployeeDAO();
		Employee _emp = dao.findEmployeeById(id);
		emp.setId(_emp.getId());
		emp.setPass(_emp.getPass());
		emp.setName(_emp.getName());
		emp.setGender(_emp.getGender());
		emp.setBirthday(_emp.getBirthday());
		emp.setState(_emp.getState());
		emp.setDept(_emp.getDept());
	}
}
