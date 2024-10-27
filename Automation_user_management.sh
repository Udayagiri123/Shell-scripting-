#!/bin/bash

# defining the variables here 

ACTION="$1"
USERNAME="$2"

create_user(){
    if [ -z "$USERNAME" ]; then
      echo "Usage: $0 create <username>"
    fi

    useradd -m -s /bin/bash "$USERNAME"
    echo "Create a user with name: $USERNAME"
}

modify_user(){
    if [ -z "$USERNAME" ]; then
      echo "Usage: $0 modify <username>"
    fi

    usermod -s  /bin/bash "$USERNAME"
    echo "Modified a user with name: $USERNAME"
}

delete_user(){
    if [ -z "$USERNAME" ]; then
      echo "Usage: $0 delete <username>"
    fi

    userdel -r "$USERNAME"
    echo "Deleted a user with name: $USERNAME"
}

# Main logic
case $ACTION in 
    create)
          create_user
          ;;
    modify)
          modify_user
          ;;
    delete)
          delete_user
          ;;
    *)
      echo " Usage: $0 {create|modify|delete} ,username"
      exit 1
      ;;
esac