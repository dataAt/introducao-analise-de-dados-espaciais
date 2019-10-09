'
Script para "compilar" o bookdown
'

# Pode ser necessário alterar os comandos abaixo (Caso seu ambiente esteja
# configurado de forma diferente)
venvCommand <- 'python -m venv venv';
installCommand <- 'venv/bin/pip3 install pandas geopandas matplotlib';

if (!dir.exists('venv')) {
  system(venvCommand)
  system(installCommand)
  
  # Instalando dependências do R
  install.packages("sf")
}

# Talvez seja necessário editar o working dir
bookdown::render_book("index.Rmd", bookdown::gitbook(lib_dir = "libs"))
