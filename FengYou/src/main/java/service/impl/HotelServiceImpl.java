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
			@Param("level2") int level2,@Param("level3") int level3, @Param("bigPrice") int bigPrice, @Param("smallPrice") int smallPrice,
			@Param("sort") String sort, @Param("desc") String desc) {
		List<Hotel> queryHotel = hotelDao.queryHotel(hotelRating, level1, level2,level3, bigPrice, smallPrice, sort, desc);
		for (int i = 0; i < queryHotel.size(); i++) {
			queryHotel.get(i).setHotelServePy(PinYinUtil.getPinYinHeadChar(queryHotel.get(i).getHotelServe()));
		}
		return queryHotel;
	}

	public PageInfo<Hotel> findHotelList(@Param("hotelRating") int hotelRating, @Param("level1") int level1,
			@Param("level2") int level2, @Param("level3") int level3,@Param("bigPrice") int bigPrice, @Param("smallPrice") int smallPrice,
			@Param("sort") String sort, @Param("desc") String desc, int page, int size) {

		String orderBy = sort + " " + desc;
		PageHelper.startPage(page, size, orderBy);
		List<Hotel> users = queryHotel(hotelRating, level1, level2,level3, bigPrice, smallPrice, sort, desc);
		PageInfo<Hotel> pageInfoUser = new PageInfo<>(users);
		return pageInfoUser;
	}

	public List<Hotel> queryHotelByName(String keywords, int destination) {
		List<Hotel> queryHotel = hotelDao.queryHotelByName(keywords, destination);
		for (int i = 0; i < queryHotel.size(); i++) {
			queryHotel.get(i).setHotelServePy(PinYinUtil.getPinYinHeadChar(queryHotel.get(i).getHotelServe()));
		}
		return queryHotel;
	}

	public PageInfo<Hotel> findHotelListByName(String keywords, int destination, String sort, String desc, int page,
			int size) {
		String orderBy = sort + " " + desc;
		PageHelper.startPage(page, size, orderBy);
		List<Hotel> users = queryHotelByName(keywords, destination);
		PageInfo<Hotel> pageInfoUser = new PageInfo<>(users);
		return pageInfoUser;
	}

	// 通过id查询一个酒店
	@Override
	public Hotel getHotelById(int hid) {
		return hotelDao.getHotelById(hid);
	}
	

	public List<Hotel> query( String hotel){
		return hotelDao.query(hotel);
	}

}
