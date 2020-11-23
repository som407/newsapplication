
package news;

import java.io.IOException;

import java.io.PrintWriter;

import java.util.ArrayList;

import java.util.List;

import org.jsoup.Jsoup;

import org.jsoup.nodes.Document;

import org.jsoup.Connection;

import org.jsoup.nodes.Element;

import org.jsoup.select.Elements;

import org.jsoup.*;

import java.io.BufferedReader;

import java.io.File;

import java.io.FileNotFoundException;

import java.io.FileReader;

public class test1 {

	public static void main(String[] args) {

		String[] news1 = new String[50];

		 BufferedReader br = null;

		try {String[] news = new String[50];

			int i = 0;

			br = new BufferedReader(new FileReader("C:/Users/USER/text/Input3.txt"));

			String line = "";

			while((line = br.readLine()) != null){

				news[i]=line;

				i++;

			}

			for (int j=0; j<=19; j++){

				news1[j]=news[j];

			}

			PrintWriter output = new PrintWriter("C:/Users/USER/text/Input1.txt");

			for(int k=0; k<19; k++) {

			String URL = news1[k];

			Document doc =Jsoup.connect(URL).get();

			Elements elements = doc.select("div#realArtcContents");

			String ele = elements.text();

			output.println(ele);	

			}

			output.close();

			System.out.println("done");

		}  

		catch(IOException e) {

			e.printStackTrace();

		}

	}

}
