TLD=(
    "localhost"
    "test"
    "local"
    "dev2"
    "docker"
)

if [ ! -d "/etc/resolver" ]; then
    sudo mkdir -pv /etc/resolver
fi

for i in "${TLD[@]}"
do
	if [ ! -f "/etc/resolver/$i" ]; then
        sudo touch /etc/resolver/$i
        sudo bash -c "echo 'nameserver 127.0.0.1' > /etc/resolver/$i"
        echo "${GREEN}tld \".$i\" resolver has been configured.${NC}" >&1
    fi
done