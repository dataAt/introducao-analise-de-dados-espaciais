#!/bin/bash

# Script para compilar o material do curso

cd src
Rscript compile.R
cd ../docs

cp introducao.html index.html
