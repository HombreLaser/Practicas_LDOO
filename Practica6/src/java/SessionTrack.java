/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.util.*;

/**
 *
 * @author luis
 */
public class SessionTrack extends HttpServlet {

      public void doGet(HttpServletRequest request, HttpServletResponse response)
      throws ServletException, IOException {
         
      // Create a session object if it is already not  created.
      HttpSession session = request.getSession(true);
         
      // Get session creation time.
      Date createTime = new Date(session.getCreationTime());
         
      // Get last access time of this web page.
      Date lastAccessTime = new Date(session.getLastAccessedTime());

      String title = "Bienvenido de nuevo";
      Integer visitCount = new Integer(0);
      String visitCountKey = new String("visitCount");
      String userIDKey = new String("userID");
      String userID = new String("ABCD");

      // Check if this is new comer on your web page.
      if (session.isNew()) {
         title = "Bienvenidos a practica 6 de laboratorio";
         session.setAttribute(userIDKey, userID);
      } else {
         visitCount = (Integer)session.getAttribute(visitCountKey);
         visitCount = visitCount + 1;
         userID = (String)session.getAttribute(userIDKey);
      }
      session.setAttribute(visitCountKey,  visitCount);

      // Set response content type
      response.setContentType("text/html");
      PrintWriter out = response.getWriter();

      String docType =
         "<!doctype html public \"-//w3c//dtd html 4.0 " +
         "transitional//en\">\n";

      out.println(docType +
         "<html>\n" +
              "<head><title>" +title + "</title></head>\n" +
                 
              "<body bgcolor = \"#f0f0f0\">\n" +
                "<h1 align = \"center\">" + title + "</h1>\n" +
                "<h2 align = \"center\">Informacion de session</h2>\n" +
                "table border \"1\" align = \"center\">\n" +
                 
                 "<tr bgcolor = \"#949494\">\n" +
                 " <th>Info de sesion</th><th>v<lue</th> </tr>\n" +
                 
                 "<tr>\n" + 
                 " <td>id</td>\n" +
                 " <td>" + session.getId() + "</td> </tr>\n" +
                 
                 "<tr>\n" +
                 " <td>Hora de Creacion</td>\n" + 
                 " <td>" + createTime + " </td> <\tr>\n" +
                 
                 "<tr>\n" + 
                 " <td>Hora del Ultimo Acceso</td>\n" +
                 " <td>" + lastAccessTime + " </td> </tr<\n" +
                 
                 "<tr>\n" + 
                 " <td>NUmero de visitas</td>\n" + 
                 " <td>" + visitCount + "</td> </tr>\n" +
                 "</table>\n" +
                 "</body>\n" + 
                 "</html>"
      );
    }
}
