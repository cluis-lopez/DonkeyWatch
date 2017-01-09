package com.clopez;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Date;

import javax.servlet.http.*;

import com.google.appengine.api.datastore.DatastoreServiceFactory;
import com.google.appengine.api.datastore.DatastoreService;
import com.google.appengine.api.datastore.Entity;


@SuppressWarnings("serial")
public class PostServlet extends HttpServlet {
	public void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws IOException {
		
		/** Declaramos los componentes que van a almacenarse en la Entidad del Datastore en GAE
		 * 
		 */
		Date ts = new Date(); // Timestamp: cuando el servidor actualiza el dato
		String stat; // El estado global del servidor (bandwith, etc.)
		ArrayList<String> ficheros = new ArrayList<String>(); // ArrayList con el listado de ficheros en descarga

		stat=req.getParameter("status");
		
		String line="linea1";
		int count=1;
			while (req.getParameter(line)!= null){
				ficheros.add(req.getParameter(line));
				count++;
				line="linea"+Integer.toString(count);
			}
				
			
			resp.setContentType("text/plain");
			resp.getWriter().println("");
			resp.getWriter().println("status:"+stat);
			resp.getWriter().println("");
			resp.getWriter().println("Ficheros en descarga:");
			resp.getWriter().println("");
			for (count=0; count<ficheros.size(); count++){
				resp.getWriter().println(ficheros.get(count));
			}
			
			/** Ahora nos conectamos al datastore creamos (si no existe ya) la entidad y actualizamos sus compenentes
			 * 
			 */
			
			DatastoreService ds = DatastoreServiceFactory.getDatastoreService();
			Entity serverstat = new Entity("ServerStatus","status");
		    
			serverstat.setProperty("Status", stat);
			serverstat.setProperty("TimeStamp", ts);
			serverstat.setProperty("Ficheros", ficheros);
			ds.put(serverstat);
				
			resp.getWriter().println("OK. Datastore actualizado");
			
	}
}
