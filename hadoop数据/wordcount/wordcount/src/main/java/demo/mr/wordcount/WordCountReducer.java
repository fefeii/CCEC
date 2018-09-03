package demo.mr.wordcount;

import java.io.IOException;

import org.apache.commons.lang.StringUtils;
import org.apache.hadoop.io.*;
import org.apache.hadoop.mapreduce.Mapper;
import org.apache.hadoop.mapreduce.Reducer;

import com.sun.tools.javac.util.Convert;

public class WordCountReducer extends Reducer<Text, Text , Text, Text> {

	@Override
	protected void reduce(Text key, Iterable<Text> values,
			Reducer<Text, Text, Text, Text>.Context context) throws IOException, InterruptedException {
		
		/*Integer count = 0;
		for(IntWritable value :  values) {
			count+=value.get();
		}
		context.write(key, new IntWritable(count));*/
		
		Integer sum=0;String s=null;Integer night=0;
		int avgtemperture=0;
		int niavgtemperture=0;
		int hightemperture=0;
		int lowtemperture=1000;
		int highnitemperture=0;
		int lownitemperture=1000;
		Text t=null;
		String[] strs=null;
		int i=0;
		for(Text value :  values) {
			s=value.toString();
			 strs=s.split(" ");
           
			 if(hightemperture<Integer.parseInt(strs[0])){
			    	hightemperture=Integer.parseInt(strs[0]);
			    }
			 
			if(lowtemperture>Integer.parseInt(strs[0])){
					lowtemperture=Integer.parseInt(strs[0]);
				}
				
			if(highnitemperture<Integer.parseInt(strs[1])){
				highnitemperture=Integer.parseInt(strs[1]);
			}
			if(lownitemperture>Integer.parseInt(strs[1])){
				lownitemperture=Integer.parseInt(strs[1]);
			}
			sum += Integer.parseInt(strs[0]);
			night +=Integer.parseInt(strs[1]);
			i++;
			
			
		}
		avgtemperture=sum/i;
		niavgtemperture=night/i;
		
		
//		for(Text value :  values) {
//			s=value.toString();
//			 strs=s.split(" ");
//           
//		    
//			
//			
//			
//		}
//		
		Text d = null;
		d =new Text("白天平均温度："+avgtemperture+"℃      夜晚平均温度： "+niavgtemperture+"℃        白天最高温度："+hightemperture+"℃   白天最低温度："+lowtemperture+"℃  夜晚最高温度："+highnitemperture+"℃   "+"℃  夜晚最低温度："+lownitemperture+"℃");
		//String e = Integer.toString(niavgtemperture);
		
		//StringBuilder stringBuilder=new StringBuilder().append(d).append("  ").append(e);
		
		context.write(key,new Text(d));
		

		/*for(Text value :  values) {
			t=value;
		}*/
		
		
	}


}
