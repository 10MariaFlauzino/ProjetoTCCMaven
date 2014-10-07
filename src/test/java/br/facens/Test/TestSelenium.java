/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.facens.Test;

/**
 *
 * @author Maria
 */

import java.util.regex.Pattern;
import java.util.concurrent.TimeUnit;
import org.junit.*;
import static org.junit.Assert.*;
import static org.hamcrest.CoreMatchers.*;
import org.openqa.selenium.*;
import org.openqa.selenium.firefox.FirefoxDriver;
import org.openqa.selenium.support.ui.Select;

public class TestSelenium {
  private WebDriver driver;
  private String baseUrl;
  private boolean acceptNextAlert = true;
  private StringBuffer verificationErrors = new StringBuffer();

  @Before
  public void setUp() throws Exception {
    driver = new FirefoxDriver();
    baseUrl = "http://localhost:8081/";
    driver.manage().timeouts().implicitlyWait(30, TimeUnit.SECONDS);
  }

  @Test
  public void testESelenium() throws Exception {
    driver.get(baseUrl + "/FPMaven/newjsp.jsp");
    driver.findElement(By.name("txtFuncionario")).clear();
    driver.findElement(By.name("txtFuncionario")).sendKeys("maria");
    driver.findElement(By.name("txtFuncionario")).clear();
    driver.findElement(By.name("txtFuncionario")).sendKeys("maria");
    driver.findElement(By.id("salario")).clear();
    driver.findElement(By.id("salario")).sendKeys("1000");
    driver.findElement(By.id("salario")).clear();
    driver.findElement(By.id("salario")).sendKeys("1000");
    driver.findElement(By.xpath("//input[@value='Calcular']")).click();
    driver.findElement(By.xpath("//input[@value='Calcular']")).click();
    driver.findElement(By.xpath("//input[@value='Calcular']")).click();
    driver.findElement(By.xpath("//input[@value='Calcular']")).click();
    driver.findElement(By.name("txtFuncionario")).clear();
    driver.findElement(By.name("txtFuncionario")).sendKeys("maria elidia");
    driver.findElement(By.name("txtFuncionario")).clear();
    driver.findElement(By.name("txtFuncionario")).sendKeys("maria elidia");
    driver.findElement(By.id("salario")).clear();
    driver.findElement(By.id("salario")).sendKeys("4000");
    driver.findElement(By.id("salario")).clear();
    driver.findElement(By.id("salario")).sendKeys("4000");
    driver.findElement(By.xpath("//input[@value='Calcular']")).click();
    driver.findElement(By.xpath("//input[@value='Calcular']")).click();
  }

  @After
  public void tearDown() throws Exception {
    driver.quit();
    String verificationErrorString = verificationErrors.toString();
    if (!"".equals(verificationErrorString)) {
      fail(verificationErrorString);
    }
  }

  private boolean isElementPresent(By by) {
    try {
      driver.findElement(by);
      return true;
    } catch (NoSuchElementException e) {
      return false;
    }
  }

  private boolean isAlertPresent() {
    try {
      driver.switchTo().alert();
      return true;
    } catch (NoAlertPresentException e) {
      return false;
    }
  }

  private String closeAlertAndGetItsText() {
    try {
      Alert alert = driver.switchTo().alert();
      String alertText = alert.getText();
      if (acceptNextAlert) {
        alert.accept();
      } else {
        alert.dismiss();
      }
      return alertText;
    } finally {
      acceptNextAlert = true;
    }
  }
}

