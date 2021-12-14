from selenium import webdriver 

driver = webdriver.Chrome()
driver.get('http://saucedemo.com')

CAMPO_USARNAME = driver.find_element_by_css_selector("#user-name").send_keys('standard_user')
CAMPO_PASSWORD = driver.find_element_by_css_selector("#password").send_keys('secret_sauce')
BOTAO_LOGIN = driver.find_element_by_css_selector("#login-button").click()