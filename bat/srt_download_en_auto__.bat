from logging import exception
from re import search
from selenium import webdriver
from selenium.webdriver.common.keys import Keys
import selenium.webdriver.common.by
import os
import time
from selenium.webdriver.common.by import By
import time
import os.path
import sys

PATH = "C:\\Users\\xiuxi\\Downloads\\Compressed\\msedgedriver.exe"
driver = webdriver.Edge(PATH)
line = "pgEsyMYZqZI"
driver.get("https://savesubs.com/process?url=https%3A%2F%2Fwww.youtube.com%2Fwatch%3Fv%3D"+line)


sleep(5)

a = driver.find_elements("xpath", "//*[@id=\"root\"]/section/main/section[2]/div[1]/ul/li")
print(a)


index1 = 0
for i in range(0, len(a)):
    try:
        text = a[i].text
        # print(text, type(text))
        # if text == "TXT":
            continue
        if isinstance(text, str) and type(text) == str:
            # print(text, type(text), "a")
            index = text.index("ENGLISH (AUTO")
            if index >= 0:
                print(text, i)
                index1 = i
    except:
        # print("except")
        pass

# index1 = 9

# c = driver.find_elements("xpath", "//*[@id=\"root\"]/section/main/section[2]/div[1]/ul/li[9]")
c = driver.find_elements("xpath", "//*[@id=\"root\"]/section/main/section[2]/div[1]/ul/li[10]")
length = len(a)

search_zh = driver.find_elements("xpath", "//*[@id=\"root\"]/section/main/section[2]/div[1]/ul/li[10]/section/div/div/a[1]") # UU6B3eBZJ3SMlRq-4lE22Kbg
                    
search_zh[0].send_keys(Keys.ENTER)

a = driver.find_elements("xpath", "//span[text()='English (auto']") ; print(a)
print(a)
b = a.find_elements("./../") ; print(b)


search_zh = driver.find_elements("xpath", "//span[text()='English (auto']") 

len(search_zh)

search_zh_1 = search_zh[0]

type(search_zh_1)
# <class 'selenium.webdriver.remote.webelement.WebElement'>
# "C:\Users\xiuxi\AppData\Local\Programs\Python\Python39\Lib\site-packages\selenium\webdriver\remote\webelement.py"



search_zh = driver.find_element("xpath", "//span[text()='English (auto']/parent") ; print(search_zh.text)





# a = [1,2, 3]




