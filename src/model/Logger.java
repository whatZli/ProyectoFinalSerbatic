package model;

import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.util.Calendar;

public class Logger {
	static FileWriter archivo; // nuestro archivo log

	public static void añadirAlLog(String id_usuario, String mensaje) {

		try {
			File directorio = new File("/SerbaticLogs");
			if (!directorio.exists()) {
				if (directorio.mkdirs()) {
					System.out.println("Directorio creado");
				}
			}
			System.out.println(directorio.getAbsolutePath());
			// Pregunta el archivo existe, caso contrario crea uno con el nombre log.txt
			if (new File("C:/SerbaticLogs/" + id_usuario + "_log.txt").exists() == false) {
				archivo = new FileWriter(new File("C:/SerbaticLogs/" + id_usuario + "_log.txt"), false);
			}
			archivo = new FileWriter(new File("C:/SerbaticLogs/" + id_usuario + "_log.txt"), true);
			Calendar fechaActual = Calendar.getInstance(); // Para poder utilizar el paquete calendar
			// Empieza a escribir en el archivo

			archivo.write((String.valueOf(fechaActual.get(Calendar.DAY_OF_MONTH)) + "/"
					+ String.valueOf(fechaActual.get(Calendar.MONTH) + 1) + "/"
					+ String.valueOf(fechaActual.get(Calendar.YEAR)) + ";"
					+ String.valueOf(fechaActual.get(Calendar.HOUR_OF_DAY)) + ":"
					+ String.valueOf(fechaActual.get(Calendar.MINUTE)) + ":"
					+ String.valueOf(fechaActual.get(Calendar.SECOND))) + ";" + mensaje + "\r\n");

			archivo.close(); // Se cierra el archivo

		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}// Fin del metodo crearLog

}
