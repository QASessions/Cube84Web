package utility;

import java.util.Random;

import org.apache.commons.lang3.RandomStringUtils;

public class RandomTestDataGenerator {

	public static void main(String[] args) {
		generate_RandomStringName(4,true,true);
	}
	
	public static String generate_RandomStringName(int length, boolean letters, boolean numbers) {

	    String generatedString = RandomStringUtils.random(length, letters, numbers);
	    
	    //String generatedString = RandomStringUtils.randomAlphabetic(length);

		    System.out.println(generatedString);
		    return generatedString;
	}

	public static String getPhoneNumber() {
		Random rnd = new Random();
		int number = rnd.nextInt(999999999);
		int number2 = rnd.nextInt(9);
		String concatNumber = number + "" + number2;
		long combinedNumbr = Long.parseLong(concatNumber);

		String mobileNumber = String.format("%10d", combinedNumbr);
		System.out.println("mobile number befor If " + mobileNumber);
		char FirstDigit = mobileNumber.charAt(0);
		if (FirstDigit == '0') {
			mobileNumber = mobileNumber.substring(1);
			String mobileNumber1 = String.format("%0" + 1 + "d", number2);
			mobileNumber = mobileNumber.replaceAll(mobileNumber, mobileNumber1 + "" + mobileNumber);
			System.out.println("mobile number after If " + mobileNumber);
		}
		System.out.println("mobile number out of If " + mobileNumber);
		return mobileNumber;
	}

	public static String getPhoneNumber(int digits) {
		Random rnd = new Random();
		int number = rnd.nextInt(999999999);
		int number2 = rnd.nextInt(9);
		String concatNumber = number + "" + number2;
		long combinedNumbr = Long.parseLong(concatNumber);
		String mobileNumber = String.format("%0" + digits + "d", combinedNumbr);
		System.out.println("mobile number befor If " + mobileNumber);
		char FirstDigit = mobileNumber.charAt(0);
		if (FirstDigit == '0') {
			mobileNumber = mobileNumber.substring(1);
			String mobileNumber1 = String.format("%0" + 1 + "d", number2);
			mobileNumber = mobileNumber.replaceAll(mobileNumber, mobileNumber1 + "" + mobileNumber);
			System.out.println("mobile number after If " + mobileNumber);
		}
		System.out.println("mobile number out of If " + mobileNumber);
		return mobileNumber;
	}

	public static String getInvalidOTP(int digits) {
		Random rnd = new Random();
		int number = rnd.nextInt(999999);
		String randomOTP = String.format("%0" + digits + "d", number);
		return randomOTP;
	}

	public static String getCompany_RegisterNo() {
		Random rnd = new Random();
		int number = rnd.nextInt(999999999);
		int number2 = rnd.nextInt(9);
		String concatNumber = number + "" + number2;
		long combinedNumbr = Long.parseLong(concatNumber);
		String randomCmpny_RegstrNo = String.format("%10d", combinedNumbr);
		return randomCmpny_RegstrNo;
	}

	public static String getCompany_InvalidRegisterNo(int digits) {
		Random rnd = new Random();
		int number = rnd.nextInt(9999999);
		String randomCmpny_RegstrNo = String.format("%0" + digits + "d", number);
		return randomCmpny_RegstrNo;
	}

	

}
