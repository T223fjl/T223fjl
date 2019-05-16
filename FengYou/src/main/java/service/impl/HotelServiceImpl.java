package service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.hotel.HotelDao;
import pojo.Hotel;
import service.HotelService;
import util.PinYinUtil;
@Service
public class HotelServiceImpl implements HotelService{
	@Autowired
	private HotelDao hotelDao ;
	
	public List<Hotel> queryHotel() {
		List<Hotel> queryHotel=hotelDao.queryHotel();
		for (int i = 0; i < queryHotel.size(); i++) {
			if(queryHotel.get(i).getHotelServe().equals("WiFi上网")){
				queryHotel.get(i).setHotelServePy(PinYinUtil.getPinYinHeadChar("WiFi"));
			}
			queryHotel.get(i).setHotelServePy(PinYinUtil.getPinYinHeadChar(queryHotel.get(i).getHotelServe()));
		}
		return queryHotel;
	}
	
}
