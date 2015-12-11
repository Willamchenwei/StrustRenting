package com.strustrenting.action;

import java.sql.ResultSet;
import java.sql.SQLException;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.strustrenting.dao.Dao;
import com.strustrenting.table.Orders;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

public class ManageUsersOrders extends ActionSupport{
	private String manage;
	private String id;
	public String getManage() {
		return manage;
	}
	public void setManage(String manage) {
		this.manage = manage;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String manageUserdOrders () {
		Dao dao = new Dao();
		Orders orders = new Orders();
		orders.setId(Long.parseLong(id));
		System.out.println (id);
		try {
			dao.deleteHouse(orders);
		} catch (NumberFormatException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		String ordersInformation = getUsersOrdersInformation();	
		System.out.println ("usersorder" + ordersInformation);
		ActionContext.getContext().getSession().put("usersOrdersInformation", ordersInformation);
		return SUCCESS;
	}
	public String getUsersOrdersInformation () {
		Dao dao = new Dao();
		long id = (long)ActionContext.getContext().getSession().get("user_id");
		try {
			ResultSet result = dao.get(id);
			JSONArray jsonArray = new JSONArray();
			JSONObject jsonObject = new JSONObject();
			while (result.next()) {
				JSONObject obj = new JSONObject();
				obj.accumulate("order_id", result.getLong("orders.id"));
				obj.accumulate("house_id", result.getLong("house.id"));
				obj.accumulate("order_state", result.getString("orders.state"));
				obj.accumulate("mobile", result.getString("house.mobile"));
				obj.accumulate("house_name", result.getString("house.house_name"));
				obj.accumulate("house_address", result.getString("house.house_address"));
				obj.accumulate("house_price", result.getDouble("house.house_price"));
				obj.accumulate("checkindate", result.getString("orders.checkindate"));
				obj.accumulate("checkoutdate", result.getString("orders.checkoutdate"));
				jsonArray.put(obj);
			}
			jsonObject.accumulate("data", jsonArray);
			
			return jsonObject.toString();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}
}
