package modelDAO;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.util.LinkedList;

public class LoggerDAO {

	public static LinkedList<String> devolverLogUsuario(String dni_cliente) {
		// Leer fichero
		File file = new File("C:/SerbaticLogs/" + dni_cliente + "_log.txt");
		if (file.exists()) {
			System.out.print("el fichero existe");

			LinkedList<String> lineasLog = new LinkedList<String>();
			try {

				String cadena;
				FileReader f;

				f = new FileReader(file.getAbsolutePath());

				BufferedReader b = new BufferedReader(f);
				while ((cadena = b.readLine()) != null) {
					lineasLog.add(cadena);
				}
				b.close();

				
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			return lineasLog;
		} else {
			System.out.println("El fichero no existe");

			return null;
		}

	}

}
