# Pode ser necess�rio alterar os comandos abaixo (Caso seu ambiente esteja
# # configurado de forma diferente)
# venvCommand <- 'python -m venv venv';
# installCommand <- 'venv/bin/pip3 install pandas geopandas matplotlib';

# if (!dir.exists('venv')) {
#   system(venvCommand)
#   system(installCommand)
#   
#   # Instalando depend�ncias do R
#   install.packages("sf")
# }

# Instalação do pacote renv
if (!requireNamespace("remotes"))
  install.packages("remotes")
remotes::install_github("rstudio/renv")

# inicializa um novo ambiente
renv::init()

# Restaura o ambiente criado
renv::restore(
  lockfile = "../renv.lock")


# Talvez seja necess�rio editar o working dir
bookdown::render_book("index.Rmd", bookdown::gitbook(lib_dir = "libs"))
