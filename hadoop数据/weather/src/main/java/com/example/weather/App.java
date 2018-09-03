package com.example.weather;

import java.io.BufferedWriter;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.LinkedList;
import java.util.List;

import net.sf.json.JSONObject;

/**
 * Hello world!
 *
 */
public class App 
{
    public static void main( String[] args )
    {
    	/*String str = "";
    	java.text.SimpleDateFormat format = new java.text.SimpleDateFormat("yyyy-MM-dd");
    	Calendar cal = Calendar.getInstance();// 取当前日期。
    	cal = Calendar.getInstance();
    	cal.add(Calendar.DAY_OF_MONTH, -382);// 取当前日期的前N天.-606,-242
    	str =format.format(cal.getTime());
    	System.out.println("yesterday is:" + str);*/
    	
    	String str = "";
    	
    	for(int dtime=-5;dtime<-1;dtime++){
    	java.text.SimpleDateFormat format = new java.text.SimpleDateFormat("yyyy-MM-dd");
    	Calendar cal = Calendar.getInstance();// 取当前日期。
    	cal = Calendar.getInstance();
    	cal.add(Calendar.DAY_OF_MONTH, dtime);// 取当前日期的前N天.
    	str =format.format(cal.getTime());
    	System.out.println("yesterday is:" + str);
        
    	
    	String res= GetCityList.weather("134", str);
    	
    	JSONObject obj=JSONObject.fromObject(res);
    	
    	String result=obj.getString("result");
         //此时result中数据有多个key,可以对其key进行遍历,得到对个属性
         obj=JSONObject.fromObject(result);
         //今日温度对应的key是today
         String city_id=obj.getString("city_id");//城市地区ID
         String city_name=obj.getString("city_name");//城市地区名称
         String weather_date=obj.getString("weather_date");//天气日期
         String day_weather=obj.getString("day_weather");//	白天天气
         String night_weather=obj.getString("night_weather");//夜间天气
         String day_temp=obj.getString("day_temp");//白天最高温度
         String night_temp=obj.getString("night_temp");//	夜间最低温度
         String day_wind=obj.getString("day_wind");//	白天风向
         String day_wind_comp=obj.getString("day_wind_comp");//	白天风力
         String night_wind=obj.getString("night_wind");//		夜间风向
         String night_wind_comp=obj.getString("night_wind_comp");//	夜间风力
         String day_weather_id=obj.getString("day_weather_id");//	白天天气标识
         String night_weather_id=obj.getString("night_weather_id");//	夜间天气标识
         System.out.println(city_name+" "+weather_date+" "+day_weather+" "+night_weather+" "+
        		 day_temp+" "+night_temp+" "+day_wind+" "+day_wind_comp+" "+night_wind+" "+
        		 night_wind_comp+" "+day_weather_id+" "+night_weather_id);
         
         List<String> list = new LinkedList<String>();
         list.add(city_id);
         list.add(city_name);
         list.add(weather_date);
         list.add(day_weather);
         list.add(night_weather);
         list.add(day_temp);
         list.add(night_temp);
         list.add(day_wind);
         list.add(day_wind_comp);
         list.add(night_wind);
         list.add(night_wind_comp);
         list.add(day_weather_id);
         list.add(night_weather_id);
         
         File file1 = new File("F:\\WEATHER4.txt");
         try {
             FileWriter fw = new FileWriter(file1,true);
             BufferedWriter bw = new BufferedWriter(fw);
          
             for(int i = 0; i<list.size();i++){
                 bw.write(list.get(i).toString()+" ");
                 bw.flush();
                 //System.out.println(list.size());
             }
             bw.newLine();     
             bw.close();
             fw.close();
  
         } catch (IOException e) {
             e.printStackTrace();
         }
    }
    	}
}
