package service;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.github.pagehelper.PageInfo;

import pojo.Hotel;

public interface HotelService {
	public List<Hotel> queryHotel(@Param("hotelRating") int hotelRating,@Param("level1") int level1
			,@Param("level2") int level2,@Param("bigPrice") int bigPrice,@Param("smallPrice") int smallPrice
			,@Param("sort") String sort,@Param("desc") String desc	);
	 public PageInfo<Hotel> findHotelList(@Param("hotelRating") int hotelRating,@Param("level1") int level1
				,@Param("level2") int level2, @Param("bigPrice") int bigPrice,@Param("smallPrice") int smallPrice
				,@Param("sort") String sort,@Param("desc") String desc,int page, int size) ;
}
