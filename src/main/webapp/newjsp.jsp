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
            String resposta = "";
            String salario = (request.getParameter("txtSalario") == null ? "0" : request.getParameter("txtSalario"));
            Pagamento pag = new Pagamento(Double.parseDouble(salario));
            Double perinss = (pag.Aliquota_INSS() * 100);
            Double perirrf = (pag.Aliquota_IRRF() * 100);

            valINSS = String.valueOf(pag.Aliquota_INSS() * Double.parseDouble(salario));
            valIRRF = String.valueOf(pag.Aliquota_IRRF() * Double.parseDouble(salario));

            String ValReceber = String.valueOf(pag.Calcular_Pagamento());
            if (!ValReceber.equals("0.0")) {
                resposta = "Cálculo realizado com sucesso";
            }
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
        
           <script type="text/javascript">
            function Limpar()
            {
             $("#INSS").html('0.0');
             $("#IRRF").html('0.0');
             $("#DESCONTO").html('0.0');
             $("#RECEBER").html('0.0');
             $("#teste").css("display","none");

            }
        </script>
    </head>
    <body>
        <form action="newjsp.jsp" method="POST" class="well" style="width: 600px; margin-left:25%; ">
            <h3>Folha de Pagamento</h3>
            <div class="page-header" id="principal" style="padding: 10px;">
                Nome Funcionário:<br/> 
                <input type="text" name="txtFuncionario" id="funcionario" class="form-control" style="width: 250px;" required>
                Salário Bruto: <br/>
                <input  type="text" name="txtSalario" id="salario" class="form-control" style="width: 250px;" required value="<%= salario%>" ><br>
                <input type="submit" value="Calcular" class=" btn btn-primary btn-large">
                <button type="button" onclick="Limpar()" value="Limpar" class=" btn btn-primary btn-large">Limpar</button><br>
                <div>
                    <label>
                        INSS: <%= perinss%>
                         Valor:R$ <span id="INSS"><%= valINSS%> </span>
                    </label>

                </div>
                <div>
                    <label>
                        IRRF: <%= perirrf%>
                        Valor:R$ <span id="IRRF"><%= valIRRF%></span>
                    </label>
                </div>
                <div>
                    <label>
                        Valor Descontos:R$ <span id="DESCONTO"><%= valINSS%></span>
                    </label>
                </div>
                <div>
                    <label>
                        Valor a Receber:R$ <span id="RECEBER"><%= ValReceber%></span><br>
                    </label>
                </div>
                <div id="teste" class="alert alert-success">
                    <%=resposta%>
                </div>

            </div> 
        </form>
    </body>
</html>
