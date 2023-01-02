function vpn_start
    set PARAM_GTW (cat /data/params/vpn_portal)
    set PARAM_USER (cat /data/params/vpn_email)
    set PARAM_AUTH_GROUP (cat /data/params/vpn_auth-group)
    # set PARAM_CRT (cat /data/params/vpn_crt)
    set PARAM_CRT (p11tool --provider=/usr/lib/libeToken.so --list-all-certs --only-urls | tail -1)
    set PARAM_SERVER_CERT (cat /data/params/vpn_server-cert)
    
    sudo openconnect --authgroup=$PARAM_AUTH_GROUP \
        --protocol=gp -u $PARAM_USER -c $PARAM_CRT -v $PARAM_GTW 
end
