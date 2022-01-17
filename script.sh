#!/bin/sh
sudo docker exec -it gitlab bash
gitlab-rails console
user = User.find_by_username "root"
user.password = "Password123"
user.password_confirmation = "Password123"
user.save!
