#!/bin/bash

# Función para obtener el timestamp
get_timestamp() {
    date +"%Y-%m-%d,%H:%M:%S"
}

# Función para realizar el speedtest y guardar los resultados en el archivo CSV
run_speedtest() {
    speedtest-cli --secure --csv | awk -F ',' -v OFS=',' '{print $1, $2, $7/8/1024/1024, $8/8/1024/1024}' >> /YOUR/FAVORITE/ROUTE/speedtest.csv
}

# Encabezado del archivo CSV si no existe
if [ ! -f /YOUR/FAVORITE/ROUTE/speedtest.csv ]; then
    echo "Date,Time,Download (MB/s),Upload (MB/s) \n" > /YOUR/FAVORITE/ROUTE/speedtest.csv
fi

run_speedtest
