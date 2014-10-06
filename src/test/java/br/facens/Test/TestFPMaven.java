/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.facens.Test;

import br.facens.fpmaven.Pagamento;
import org.junit.After;
import org.junit.AfterClass;
import org.junit.Before;
import org.junit.BeforeClass;
import org.junit.Test;
import static org.junit.Assert.*;

/**
 *
 * @author Maria
 */
public class TestFPMaven {
    
    public TestFPMaven() {
    }
    
    @BeforeClass
    public static void setUpClass() {
    }
    
    @AfterClass
    public static void tearDownClass() {
    }
    
    @Before
    public void setUp() {
    }
    
    @After
    public void tearDown() {
    }

    // TODO add test methods here.
    // The methods must be annotated with annotation @Test. For example:
    //
    // @Test
    // public void hello() {}
    @Test
    public void testAliquota_INSS_input_1317_result_8_() {
        Pagamento instance = new Pagamento(1317.07);
        double expResult = 0.08;
        double result = instance.Aliquota_INSS();
        assertEquals(expResult, result,0.0);
    }
    
    @Test
    public void testAliquota_INSS_input_2195_result_9_() {
        Pagamento instance = new Pagamento(2195.12);
        double expResult = 0.09;
        double result = instance.Aliquota_INSS();
        assertEquals(expResult, result,0.0);
    }
    
    @Test
    public void testAliquota_INSS_input_3500_result_11_() {
        Pagamento instance = new Pagamento(3500.00);
        double expResult = 0.11;
        double result = instance.Aliquota_INSS();
        assertEquals(expResult, result,0.0);
    }

    @Test
    public void testAliquota_IRRF_input_1317_result_0_() {
        Pagamento instance = new Pagamento(1317.07);
        double expResult = 0.0;
        double result = instance.Aliquota_IRRF();
        assertEquals(result, expResult, 0.0);
    }
    
     @Test
    public void testAliquota_IRRF_input_2670_result_0075_() {
        Pagamento instance = new Pagamento(2670.29);
        double expResult = 0.075;
        double result = instance.Aliquota_IRRF();
        assertEquals(result, expResult, 0.0);
    }
    
     @Test
    public void testAliquota_IRRF_input_3500_result_015_() {
        Pagamento instance = new Pagamento(3500);
        double expResult = 0.15;
        double result = instance.Aliquota_IRRF();
        assertEquals(result, expResult, 0.0);
    }
}
