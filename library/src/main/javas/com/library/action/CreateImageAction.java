package com.library.action;

import java.awt.Color;
import java.awt.Graphics;
import java.awt.image.BufferedImage;
import java.io.OutputStream;
import java.util.Map;
import java.util.Random;

import javax.imageio.ImageIO;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;
import org.apache.struts2.StrutsStatics;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

@Component
@Scope ("prototype")
public class CreateImageAction extends ActionSupport{
	private HttpServletRequest request;
	private HttpServletResponse response;
	@Override
	public String execute() throws Exception {
		request = (HttpServletRequest)ActionContext.getContext().get(ServletActionContext.HTTP_REQUEST);
		response = (HttpServletResponse)ActionContext.getContext().get(ServletActionContext.HTTP_RESPONSE);
		OutputStream out = response.getOutputStream();
		BufferedImage image = new BufferedImage(68, 22, BufferedImage.TYPE_INT_RGB);
		Graphics gra = image.getGraphics();
		Color color = new Color(200, 150, 220);
		gra.setColor(color);
		gra.fillRect(0, 0, 68, 22);
		StringBuffer sb = new StringBuffer();
		char[] ch = "ABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890".toCharArray();
		int len = ch.length, index;
		Random random = new Random();
		for (int i = 0; i < 4; i ++) {
			index = random.nextInt(len);
			gra.setColor(new Color(random.nextInt(200), random.nextInt(155), random.nextInt(222)));
			gra.drawString(ch[index]+"", (i*15)+3, 18);
			sb.append(ch[index]);
		}
		request.getSession().setAttribute("piccode", sb.toString());
		ImageIO.write(image, "JPG", out);
		out.close();
		return null;
	}

}
