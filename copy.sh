#!/bin/bash

WORDPRESS_DIR="/root/wordpress"

#Enter the domains where clean files will be copied.
DOMAINS=("domain1.com" "domain2.com" "domain3.com")

for DOMAIN in "${DOMAINS[@]}"; do
    USER_NAME=$(/scripts/whoowns "$DOMAIN")
    if [ -n "$USER_NAME" ]; then
        WP_CONTENT_DIR="/home/$USER_NAME/public_html/wp-content"
        DEST_DIR="/home/$USER_NAME/public_html"
        if [ -d "$DEST_DIR" ]; then
            
            OLD_OWNER=$(stat -c '%U' "$WP_CONTENT_DIR")
            OLD_GROUP=$(stat -c '%G' "$WP_CONTENT_DIR")

            
            find "$DEST_DIR" -mindepth 1 ! \( -name 'wp-config.php' -o -path "$WP_CONTENT_DIR*" \) -exec rm -rf {} \;
            
            cp -rfT "$WORDPRESS_DIR" "$DEST_DIR"
            
            chown -R $USER_NAME:$USER_NAME "$DEST_DIR"

            echo "Domain $DOMAIN dosyaları başarıyla taşındı."
        else
            echo "Hata: $DEST_DIR bulunamadı!"
        fi
    else
        echo "Hata: Kullanıcı adı alınamadı for domain $DOMAIN"
    fi
done
