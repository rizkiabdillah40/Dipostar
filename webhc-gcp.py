from selenium import webdriver
from selenium.webdriver.common.by import By
from selenium.webdriver.support.ui import WebDriverWait
from selenium.webdriver.support import expected_conditions as EC


driver = webdriver.Chrome (executable_path=r"C:\Users\rizki.abdillah\Desktop\Selenium\chromedriver.exe")
# maximize with maximize_window()
driver.maximize_window()
driver.get("https://status.cloud.google.com/")
# identify element

tes1 = driver.find_elements_by_css_selector("td.service-status")
tes2 = driver.find_elements_by_xpath('//span[@class="end-bubble bubble ok" or @class="end-bubble bubble medium" or @class="end-bubble bubble high"]')
statusok = 'ok'
statuswarning = 'warning'
statuserror = 'error'

for x,y in zip(tes1,tes2):
    a = x.text
    b = y.get_attribute('class')
    if b == ("end-bubble bubble high"):
        print(a+","+statuserror)
    elif b == ("end-bubble bubble ok"):
        print(a+","+statusok)
    else:
        print(a+","+statuswarning)
driver.close()
exit()