#!/bin/bash

# Detener el servicio ZeroTier
sudo systemctl stop zerotier-one

# Eliminar los archivos de identificación
sudo rm /var/lib/zerotier-one/identity.public
sudo rm /var/lib/zerotier-one/identity.secret

# Reiniciar el servicio ZeroTier
sudo service zerotier-one restart

echo "Configuración de ZeroTier actualizada."
