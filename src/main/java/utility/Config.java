/**
 * 
 */
package utility;

import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.io.InputStream;
import java.util.Properties;

import basePackage.BaseUtils;


public class Config extends BaseUtils{
	InputStream inputStream;
	private static Properties prop;
	
	

	public void setUpConfig() throws FileNotFoundException, IOException
	{
		prop = new Properties();

		inputStream = getClass() .getClassLoader().getResourceAsStream("Config.properties");

		if(inputStream!=null)
		{
			try {
				prop.load(inputStream);
				System.out.println(prop);
			} catch (IOException e) {
				System.out.println(e);
			}
		}
		prop.load(new FileReader(BaseUtils.testResourcePath + "Config.Properties"));
		for (Object propKey : prop.keySet()) {
			System.setProperty(propKey.toString(), prop.get(propKey).toString());
		}
	}
	
	public void tearConfig()
	{
		try {
			inputStream.close();
		} catch (IOException e) {
			System.out.println(e);
		}
	}
	

}
