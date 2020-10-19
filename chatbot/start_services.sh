### This script is triggered from within docker contrainer
### to start multiple processes in the same container.
### This script is defined in the CMD option in Dockerfile

cd app/


# Start rasa server with nlu model
rasa run --model models --enable-api --cors "*" --debug \
        -p $PORT

