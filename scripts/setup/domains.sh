if [ ! -f "domains.txt" ]; then
  cp domains.txt.dist domains.txt
  echo "${GREEN}domains.txt has been created.${NC}" >&1
fi
