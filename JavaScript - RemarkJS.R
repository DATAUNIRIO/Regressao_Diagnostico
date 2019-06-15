# FONTE: https://github.com/DATAUNIRIO/IV-SER-RLadies


# JavaScript - RemarkJS
# O Xaringan utiliza o seguinte arquivo javascript: https://remarkjs.com/downloads/remark-latest.min.js

# Por padrão, a apresentação só funcionará online!
  
# Como deixar o RemarkJS offline?
  
#xaringan::summon_remark() # o xaringan irá fazer o download
# da versão mais recente do remark e salvar na pasta /libs

# O yaml deve conter as seguintes linhas: 
#output:
#  xaringan::moon_reader:
#  chakra: libs/remark-latest.min.js
#lib_dir: libs

setwd("C:/Users/Steven/Documents/GitHub/Regressao_Diagnostico")
xaringan::summon_remark()
