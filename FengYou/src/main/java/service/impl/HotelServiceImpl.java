package service.impl;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

import dao.hotel.HotelDao;
import pojo.Hotel;
import service.HotelService;
import util.PinYinUtil;

@Service
public class HotelServiceImpl implements HotelService {
	@Autowired
	private HotelDao hotelDao;

	public List<Hotel> queryHotel(@Param("hotelRating") int hotelRating, @Param("level1") int level1,
			@Param("level2") int level2, @Param("bigPrice") int bigPrice, @Param("smallPrice") int smallPrice,
			@Param("sort") String sort, @Param("desc") String desc) {
		List<Hotel> queryHotel = hotelDao.queryHotel(hotelRating, level1, level2, bigPrice, smallPrice, sort, desc);
		for (int i = 0; i < queryHotel.size(); i++) {
			if (queryHotel.get(i).getHotelServe().equals("WiFi上网")) {
				queryHotel.get(i).setHotelServePy(PinYinUtil.getPinYinHeadChar("WiFi"));
			}
			queryHotel.get(i).setHotelServePy(PinYinUtil.getPinYinHeadChar(queryHotel.get(i).getHotelServe()));
		}
		return queryHotel;
	}

	public PageInfo<Hotel> findHotelList(@Param("hotelRating") int hotelRating, @Param("level1") int level1,
			@Param("level2") int level2, @Param("bigPrice") int bigPrice, @Param("smallPrice") int smallPrice,
			@Param("sort") String sort, @Param("desc") String desc, int page, int size) {

		String orderBy = sort + " " + desc;
		PageHelper.startPage(page, size, orderBy);
		List<Hotel> users = queryHotel(hotelRating, level1, level2, bigPrice, smallPrice, sort, desc);
		PageInfo<Hotel> pageInfoUser = new PageInfo<>(users);
		return pageInfoUser;
	}

	@Override
	public List<Hotel> queryHotelByName(String keywords, int destination) {
		List<Hotel> queryHotel = hotelDao.queryHotelByName(keywords, destination);
		for (int i = 0; i < queryHotel.size(); i++) {
			if (queryHotel.get(i).getHotelServe().equals("WiFi上网")) {
				queryHotel.get(i).setHotelServePy(PinYinUtil.getPinYinHeadChar("WiFi"));
			}
			queryHotel.get(i).setHotelServePy(PinYinUtil.getPinYinHeadChar(queryHotel.get(i).getHotelServe()));
		}
		return queryHotel;
	}

	@Override
	public PageInfo<Hotel> findHotelListByName(String keywords, int destination, String sort, String desc, int page,
			int size) {
		String orderBy = sort + " " + desc;
		PageHelper.startPage(page, size, orderBy);
		List<Hotel> users = queryHotelByName(keywords, destination);
		PageInfo<Hotel> pageInfoUser = new PageInfo<>(users);
		return pageInfoUser;
	}

}
