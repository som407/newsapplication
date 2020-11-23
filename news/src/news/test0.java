
package news;

import java.io.IOException;

import org.jsoup.Jsoup;

import org.jsoup.nodes.Document;

import org.jsoup.nodes.Element;

import org.jsoup.select.Elements;

import java.util.List;

import java.util.ArrayList;

import java.util.Collections;

import java.util.ArrayList;

import java.util.Collections;

import java.util.List;

import java.io.OutputStream;

import java.io.PrintWriter;


public class test0 {

	private static String URL = "https://news.nate.com/recent?mid=n0101";

	public static void main(String[] args) {

		String[] news = new String[50];//정보를 가져와서 쓰는 저장소

		String[] news1 = new String[50];//중복되는 기사를 제거하기 위한 저장소

		String[] url1 = new String[50];

		String[] url2 = new String[50];

		try {

			Document doc =Jsoup.connect(URL).get();

			Elements elements = doc.select(".mlt01");

			int i = 0;

			for(Element e : elements) {

				String title = e.select("strong").text();

				String url0 = e.getElementsByAttribute("href").attr("href");

				news[i]=title;

				url1[i]="http:"+url0;

				i++;

			}

			//nate에서의 정보를 가져와 순서대로 news에 저장

			List<String> list = new ArrayList<String>();

			for(int j=0; j<19; j++) {

				if(!list.contains(news[j]))	{

					list.add(news[i]);

					news1[j] = news[j];	

					url2[j]=url1[j];

					}

			}

			//받아온 기사 제목들을 리스트에 저장하고 이때까지 리스트에 저장한 것 중 같은 것이 없으면 news1에 저장

			PrintWriter output = new PrintWriter("C:/Users/USER/text/Input2.txt");

			for(int k=0; k<19; k++) {

			    output.println(news1[k]);

			}output.close();

			PrintWriter output1 = new PrintWriter("C:/Users/USER/text/Input3.txt");

			for(int m=0; m<19; m++) {

			    output1.println(url2[m]);
			}

			output1.close();

			System.out.println("done");

			}  catch(IOException e) {

			e.printStackTrace();

		}

	}

}













