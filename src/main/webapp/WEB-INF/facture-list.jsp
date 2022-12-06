<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Client List</title>
  <style><%@include file="/css/signin.css"%></style>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
</head>
<body>

<%@ include file="navbar.jsp"%>

<div class="container">

  <button class="btn-add d-flex">
    <a href="../facture/add">Ajouter une facture</a>
  </button>
  <div class="row flex-lg-nowrap">
    <div class="col">
      <div class="row flex-lg-nowrap">
        <div class="col mb-3">
          <div class="e-panel card">
            <div class="card-body">
              <div class="card-title">
                <h6 class="mr-2"><span>Liste des Factures du client :  </span></h6>
              </div>
              <div class="e-table">
                <div class="table-responsive table-lg mt-3">
                  <table class="table table-bordered">
                    <thead>
                    <tr>
                      <th class="max-width text-center">Id</th>
                      <th class="max-width text-center">Date</th>
                      <th class="max-width text-center">Service</th>
                      <th class="sortable text-center">Montant HT</th>
                      <th class="max-width text-center">Montant TTC</th>
                      <th class="text-center">Actions</th>
                    </tr>
                    </thead>
                    <tbody>
                      <tr>
                        <td class="text-nowrap align-middle">1</td>
                        <td class="text-nowrap align-middle">22/10/2022</td>
                        <td class="text-nowrap align-middle">Menage</td>
                        <td class="text-nowrap align-middle">95€</td>
                        <td class="text-nowrap align-middle">110€</td>
                        <td class="text-center align-middle">
                          <div class="btn-group align-top">
                            <button class="btn btn-sm btn-outline-secondary badge text-primary" type="button"><a href="${pageContext.request.contextPath}/client/edit?id=${client.idClient}"/>Edit</button>
                            <button class="btn btn-sm btn-outline-secondary badge text-danger" type="button">Supprimer</button>
                          </div>
                        </td>
                      </tr>
                    </tbody>
                  </table>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
</body>
</html>