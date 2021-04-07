from selenium import webdriver
from selenium.webdriver.common.by import By
from selenium.webdriver.support.ui import WebDriverWait
from selenium.webdriver.support import expected_conditions as EC


driver = webdriver.Chrome (executable_path=r"C:\Users\rizki.abdillah\Desktop\Selenium\chromedriver.exe")
# maximize with maximize_window()
driver.maximize_window()
driver.get("https://status.cloud.google.com/")
# identify element

namegcpsvc = driver.find_elements_by_css_selector("td.service-status")
classname = driver.find_elements_by_xpath('//span[@class="end-bubble bubble ok" or @class="end-bubble bubble medium" or @class="end-bubble bubble high"]')
statusok = 'ok'
statuswarning = 'warning'
statuserror = 'error'

for printname,printclass in zip(namegcpsvc,classname):
    nameservice = printname.text
    buttonname = printclass.get_attribute('class')
    if buttonname == ("end-bubble bubble high"):
        print(nameservice+","+statuserror)
    elif buttonname == ("end-bubble bubble ok"):
        print(nameservice+","+statusok)
    else:
        print(nameservice+","+statuswarning)
driver.close()
exit()