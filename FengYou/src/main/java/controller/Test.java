package controller;

import java.awt.*;
import java.applet.*;
import java.awt.event.*;
import java.util.*;
import java.awt.geom.*;

public class Test extends Applet implements Runnable {
	Thread tHour = null, tMinute = null, tSecond = null;// 表示时针，分针和秒针的线程
	int hour_a, hour_b, minute_a, minute_b, second_a, second_b;// 表示时针，分针，秒针端点的整型变量
	int hour = 0, minute = 0, second = 0;// 获取当前时间的整型变量

	// 绘制时针，分针和秒针的Graphics对象
	Graphics g_second = null, g_minute = null, g_hour = null;
	// 存放表盘刻度的数组，供指针走动时使用
	double point_x[] = new double[61], point_y[] = new double[61];
	// 存放表盘刻度的数组，供绘制表盘使用
	double scaled_x[] = new double[61], scaled_y[] = new double[61];
	// 判断小程序是否重新开始的变量
	int start_count = 0;

	public static void main(String[] args) {
		Test t=new Test();
		t.init();
		t.start();
		t.run();
	}
	
	public void init() {
		g_hour = this.getGraphics();
		g_hour.setColor(Color.CYAN);
		g_second = this.getGraphics();
		g_second.setColor(Color.RED);
		g_minute = this.getGraphics();
		g_minute.setColor(Color.blue);
		g_second.translate(200, 200);// 进行坐标系统变换，将新坐标系原点设在（200，200）处
		g_minute.translate(200, 200);
		g_hour.translate(200, 200);
		point_x[0] = 0;
		point_y[0] = -120;// 各个时针12点处的位置坐标（按新坐标系的坐标）
		scaled_x[0] = 0;
		scaled_y[0] = -140;// 12点处的刻度位置坐标（按新坐标系的坐标）
		double jiaodu = 6 * Math.PI / 180;
		// 表盘分割成60分，将分割点的坐标存放在数组中
		for (int i = 0; i < 60; i++) {
			point_x[i + 1] = point_x[i] * Math.cos(jiaodu) - Math.sin(jiaodu) * point_y[i];
			point_y[i + 1] = point_y[i] * Math.cos(jiaodu) + point_x[i] * Math.sin(jiaodu);
		}

		point_x[60] = 0;
		point_y[60] = -120;

		for (int i = 0; i < 60; i++) {
			scaled_x[i + 1] = scaled_x[i] * Math.cos(jiaodu) - Math.sin(jiaodu) * scaled_y[i];
			scaled_y[i + 1] = scaled_y[i] * Math.cos(jiaodu) + Math.sin(jiaodu) * scaled_x[i];
		}
		scaled_x[60] = 0;
		scaled_y[60] = -140;
	}

	public void start() {
		// 每当小程序重新开始时，首先消灭线程，然后重新开始创建线程
		if (start_count >= 1) {
			tSecond.interrupt();
			tMinute.interrupt();
			tHour.interrupt();
		}
		tSecond = new Thread(this);
		tMinute = new Thread(this);
		tHour = new Thread(this);
		tSecond.start();
		tMinute.start();
		tHour.start();
		start_count++;
		if (start_count >= 2)
			start_count = 1;
	}

	public void stop() {
		tSecond.interrupt();
		tMinute.interrupt();
		tHour.interrupt();
	}

	public void paint(Graphics g) {
		this.start();
		g.drawOval(50, 50, 300, 300);// 表盘的外圈
		g.translate(200, 200);
		// 绘制表盘的小刻度和大刻度
		for (int i = 0; i < 60; i++) {
			if (i % 5 == 0) {
				g.setColor(Color.BLACK);
				g.fillOval((int) scaled_x[i], (int) scaled_y[i], 10, 10);
			} else
				g.fillOval((int) scaled_x[i], (int) scaled_y[i], 5, 5);
		}
	}

	public void run() {
		// 获取本地时间
		Date date = new Date();
		String s = date.toString();
		hour = Integer.parseInt(s.substring(11, 13));
		minute = Integer.parseInt(s.substring(14, 16));
		second = Integer.parseInt(s.substring(17, 19));
		if (Thread.currentThread() == tSecond) {
			second_a = (int) point_x[second];
			second_b = (int) point_x[second];
			g_second.drawLine(0, 0, second_a, second_b);// 秒针的初始位置
			g_second.drawString("秒", second_a, second_b);
			int i = second;
			while (true) {
				try {
					tSecond.sleep(1000);
					Color c = getBackground();
					g_second.setColor(c);
					g_second.drawLine(0, 0, second_a, second_b);// 用背景色清除前一秒时的秒针
					g_second.drawString("秒", second_a, second_b);
					// 如果秒针与分针重合，恢复分针的显示
					if ((second_a == minute_a) && (second_b == minute_b)) {
						g_minute.drawLine(0, 0, minute_a, minute_b);
						g_minute.drawString("分", minute_a, minute_b);
					}
					// 如果秒针与时针重合，恢复时针的显示
					if ((second_a == hour_a) && (second_b == hour_b)) {
						g_hour.drawLine(0, 0, hour_a, hour_b);
						g_hour.drawString("时", hour_a, hour_b);
					}
				} catch (InterruptedException e) {
					Color c = getBackground();
					g_second.setColor(c);
					g_second.drawLine(0, 0, second_a, second_b);// 用背景色清除秒针
					g_second.drawString("秒", second_a, second_b);
					return;
				}
				// 秒针向前走一个单位
				second_a = (int) point_x[(i + 1) % 60];
				second_b = (int) point_y[(i + 1) % 60]; // 每一秒走6度（一个单位格）
				g_second.setColor(Color.red);
				g_second.drawLine(0, 0, second_a, second_b);
				g_second.drawString("秒", second_a, second_b);
				i++;
			}
		}
		if (Thread.currentThread() == tMinute) {
			minute_a = (int) point_x[minute];
			minute_b = (int) point_y[minute];
			g_minute.drawLine(0, 0, minute_a, minute_b);
			int i = minute;
			while (true) {
				// 第一次过60-second秒就前进一分钟，以后每过60秒前进一分钟
				try {
					tMinute.sleep(1000 * 60 - second * 1000);
					second = 0;
					Color c = getBackground();
					g_minute.setColor(c);

					g_minute.drawLine(0, 0, minute_a, minute_b);
					g_minute.drawString("分", minute_a, minute_b);

					if ((hour_a == minute_a) && (hour_b == minute_b)) {
						g_hour.drawLine(0, 0, minute_a, minute_b);
						g_hour.drawString("时", hour_a, hour_b);
					}
				} catch (InterruptedException e) {
					return;
				}
				minute_a = (int) point_x[(i + 1) % 60];
				minute_b = (int) point_y[(i + 1) % 60];
				g_minute.setColor(Color.BLUE);
				g_minute.drawLine(0, 0, minute_a, minute_b);
				g_minute.drawString("分", minute_a, minute_b);
				i++;
				second = 0;
			}
		}

		if (Thread.currentThread() == tHour) {
			int h = hour % 12;
			hour_a = (int) point_x[h * 5 + minute / 12];
			hour_b = (int) point_y[h * 5 + minute / 12];
			int i = h * 5 + minute / 12;
			g_hour.drawLine(0, 0, hour_a, hour_b);
			g_hour.drawString("时", hour_a, hour_b);
			while (true) {
				// 第一次过12-minute%12分钟就前进一个刻度，以后每过12分钟前进一个刻度
				try {
					tHour.sleep(1000 * 60 * 12 - 1000 * 60 * (minute % 12) - second * 1000);
					minute = 0;
					Color c = getBackground();
					g_hour.setColor(c);
					g_hour.drawLine(0, 0, hour_a, hour_b);
					g_hour.drawString("时", hour_a, hour_b);
				} catch (InterruptedException e) {
					return;
				}
				hour_a = (int) point_x[(i + 1) % 60];
				hour_b = (int) point_y[(i + 1) % 60];
				g_hour.setColor(Color.CYAN);
				g_hour.drawLine(0, 0, hour_a, hour_b);
				g_hour.drawString("时", hour_a, hour_b);
				i++;
				minute = 0;
			}
		}
	}
}
