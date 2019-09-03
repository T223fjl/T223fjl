package service.backend.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.backend.BackendHotelDao;
import pojo.Hotel;
import service.backend.BackendHotelService;

@Service
public class BackendHotelServiceImpl implements BackendHotelService {
	@Autowired
	private BackendHotelDao hotelDao;

	/**
	 * 根据条件查询酒店信息列表hotelName
	 */
	public List<Hotel> gethotel(String hotelName, Integer hotelphone) throws Exception {
		return hotelDao.gethotel(hotelName, hotelphone);
	}

	/**
	 * 查询总记录数
	 */
	public int getCount(String hotelName, Integer hotelphone) throws Exception {
		return hotelDao.getCount(hotelName, hotelphone);
	}

	/**
	 * 根据id查询酒店信息
	 */
	public Hotel gethotelByid(Integer id) {
		return hotelDao.gethotelByid(id);
	}

	/**
	 * 新增信息
	 */
	public int addhotel(Hotel hotel) throws Exception {
		return hotelDao.addhotel(hotel);
	}

	/**
	 * 修改酒店信息
	 */
	public int updateHotel(Hotel hotel) {
		return hotelDao.updateHotel(hotel);
	}

	/**
	 * 删除酒店信息
	 */
	public int delete(Integer id) {
		return hotelDao.delete(id);
	}

	/**
	 * 批量删除
	 */
	public int delhotels(String[] ids) {
		return hotelDao.delhotels(ids);
	}

}
