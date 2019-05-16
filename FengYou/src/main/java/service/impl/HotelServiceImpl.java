package service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.hotel.HotelDao;
import pojo.Hotel;
import service.HotelService;
@Service
public class HotelServiceImpl implements HotelService{
	@Autowired
	private HotelDao hotelDao ;
	
	public List<Hotel> queryHotel() {
		return hotelDao.queryHotel();
	}
	
}
