package Presentation;

import BusinessLayer.GestionEmployee;
import Models.Employee;

import jakarta.servlet.*;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;
import java.io.IOException;
import java.util.List;


@WebServlet("/Presentation/TestEmployeeServlet")
public class TestEmployeeServlet extends HttpServlet {
    private GestionEmployee gestionEmployee;

    @Override
    public void init() throws ServletException {
        gestionEmployee = new GestionEmployee();
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        response.getWriter().write("<h1>Employee List</h1>");

        // Fetch employees from the JAR's GestionEmployee class
        List<Employee> employees = gestionEmployee.listerEmployes();
        for (Employee employee : employees) {
            response.getWriter().write("<p>" + employee.getNom() + " " + employee.getPrenom() + "</p>");
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Add a new employee using GestionEmployee from the JAR
        String nom = request.getParameter("nom");
        String prenom = request.getParameter("prenom");
        String matricule = request.getParameter("matricule");
        String addresse = request.getParameter("addresse");

        Employee employee = new Employee(nom, prenom, matricule, addresse);
        boolean success = gestionEmployee.ajouterEmploye(employee);

        response.setContentType("text/html");
        if (success) {
            response.getWriter().write("<p>Employee added successfully!</p>");
        } else {
            response.getWriter().write("<p>Failed to add employee.</p>");
        }
    }
}
