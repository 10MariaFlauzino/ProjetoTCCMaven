<%-- 
    Document   : newjsp
    Created on : 05/05/2014, 12:51:55
    Author     : Maria
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="br.facens.fpmaven.Pagamento" %>

<!DOCTYPE html>
<html>
    <head>
        <%
            String valINSS = "";
            String valIRRF = "";
            String salario = (request.getParameter("txtSalario") == null? "0" : request.getParameter("txtSalario"));
            Pagamento pag = new Pagamento(Double.parseDouble(salario));
            Double perinss = (pag.Aliquota_INSS()*100);
            Double perirrf = (pag.Aliquota_IRRF()*100);
            
                
                valINSS = String.valueOf(pag.Aliquota_INSS()*Double.parseDouble(salario));
                valIRRF = String.valueOf(pag.Aliquota_IRRF() *Double.parseDouble(salario));

                String ValReceber = String.valueOf(pag.Calcular_Pagamento());
        %>   
        
        
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
        <title>JSP Page</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
            <!-- Latest compiled and minified CSS -->
           <link rel="stylesheet" href="//netdna.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap.min.css">
           <!--<link rel='stylesheet' href='%= org.webjars.AssetLocator.getWebJarPath("css/bootstrap.min.css") %>'>-->

           <!-- Optional theme -->
           <link rel="stylesheet" href="//netdna.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap-theme.min.css">
           <!--<link rel='stylesheet' href='%= org.webjars.AssetLocator.getWebJarPath("css/bootstrap-theme.min.css") %>'>-->
           <script src="//code.jquery.com/jquery-1.11.0.min.js"></script>
           <!-- Latest compiled and minified JavaScript -->
           <script src="//netdna.bootstrapcdn.com/bootstrap/3.1.1/js/bootstrap.min.js"></script>
           <!--<script type='text/javascript' src='%= org.webjars.AssetLocator.getWebJarPath("js/bootstrap.min.js") %>'></script>-->
    </head>
    <body>
        <form action="newjsp.jsp" method="POST" class="well">
            <div class="page-header">
                 <h1>Folha de Pagamento</h1>
              
                Nome Funcionário:<br/> 
                <input type="text" name="txtFuncionario" class="form-control" style="width: 250px;" required>
                Salário Bruto: <br/>
                <input  type="text" name="txtSalario" id="salario" class="form-control" style="width: 250px;" required value=" <%= salario %>" >
                %INSS: <%= perinss %>  Valor: <%= valINSS %><br>
                %IRRF: <%= perirrf %> Valor: <%= valIRRF %><br>
                Valor Descontos: <%= valINSS %><br>
                Valor a Receber: <%= ValReceber %><br>
                <input type="submit" value="Calcular" class=" btn btn-primary btn-large">
             </div> 
        </form>
    </body>
</html>
