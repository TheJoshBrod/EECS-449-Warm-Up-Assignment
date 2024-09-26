curl --location 'http://localhost:8000/user/login' \
--header 'Content-Type: application/json' \
--header 'Accept: application/json' \
--data '{
  "password": "password",
  "email": "test@mail.com"
}' | grep -oP '"token":"\K[\w\d\._-]+' | awk -F'"' '{print $1}'