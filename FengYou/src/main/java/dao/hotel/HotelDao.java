package dao.hotel;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import pojo.Hotel;

public interface HotelDao {
	public List<Hotel> queryHotel(@Param("hotelRating") int hotelRating,@Param("level1") int level1
			,@Param("level2") int level2,@Param("bigPrice") int bigPrice,@Param("smallPrice") int smallPrice
			,@Param("sort") String sort,@Param("desc") String desc	);
}
