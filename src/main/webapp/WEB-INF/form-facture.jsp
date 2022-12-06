<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>Create Facture</title>
    <link href="<c:url value="/css/signin.css" />" rel="stylesheet" type="text/css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
</head>
<body>
<%@ include file="navbar.jsp"%>
<main class="container">

    <div class="py-5 text-center">

        <h2>Nouvelle facture pour le client : </h2>
        <p class="lead">Merci de renseigner les données nécessaires pour établir une nouvelle facture</p>
    </div>
    <div class="row g-5 d-flex justify-content-center">
        <div class="col-md-7 col-lg-8">
            <h4 class="mb-3"></h4>
            <form class="needs-validation" novalidate>
                <div class="row g-3">

                    <div class="col-6">
                        <label for="service" class="form-label">Service</label>
                        <select class="form-select" id="service" >
                            <option value="">Choisir...</option>
                            <option value="Menage">Menage</option>
                        </select>
                    </div>
                    <div class="col-6">
                        <label for="serviceQuantity" class="form-label">Quantité</label>
                        <input type="number" class="form-control" id="serviceQuantity" name="serviceQuantity" min="1" max="100" value="">
                    </div>

                    <div class="col-12">
                        <label for="priceHT" class="form-label">Montant HT</label>
                        <input step=".01" type="number" class="form-control" id="priceHT">
                    </div>

                    <div class="col-12">
                        <label for="priceTTC" class="form-label">Montant TTC</label>
                        <input step=".01" type="number" class="form-control" id="priceTTC">
                    </div>

                </div>
                <hr class="my-4">
                <button class="w-100 btn btn-primary btn-lg" type="submit">Valider</button>
            </form>
        </div>
    </div>
</main>
</body>
</html>