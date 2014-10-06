package br.facens.fpmaven;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author Maria
 */
public class Pagamento {
     private double salario;

        public Pagamento(double salario)
        {
            this.salario = salario;
        }

        public double Aliquota_INSS()
        {
            double aliquota = 0;
            if (salario <= 1317.07)
            {
                aliquota = 0.08;
            }
            else if (salario <= 2195.12)
            {
                aliquota = 0.09;
            }
            else
            {
                aliquota = 0.11;
            }
            return aliquota;
        }

        public double Aliquota_IRRF()
        {
            double aliquota = 0;
            if (salario <= 1317.07)
            {
                aliquota = 0;
            }
            else if (salario <= 2670.29)
            {
                aliquota = 0.075;
            }
            else
            {
                aliquota = 0.15;
            }
            return aliquota;
        }

        public double Calcular_Pagamento()
        {
            double descontoINSS = 0, descontoIRRF = 0;

            descontoINSS = salario * Aliquota_INSS();
            descontoIRRF = salario * Aliquota_IRRF();

            return salario - (descontoINSS + descontoIRRF);
        }    
}

