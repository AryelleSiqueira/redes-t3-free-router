RTR="./rtr.jar"
HWSW="./topology-2/"

tmux new-session -d -s rare 

tmux new-window 'java -jar '$RTR' routersc  '$HWSW'r1-hw.txt  '$HWSW'r1-sw.txt'

tmux split-window -h
tmux send 'java -jar '$RTR' routersc  '$HWSW'r2-hw.txt  '$HWSW'r2-sw.txt' ENTER;

tmux split-window -v
tmux send 'java -jar '$RTR' routersc  '$HWSW'r3-hw.txt  '$HWSW'r3-sw.txt' ENTER;

tmux split-window -v
tmux send 'java -jar '$RTR' routersc  '$HWSW'r4-hw.txt  '$HWSW'r4-sw.txt' ENTER;

tmux select-layout tiled;

tmux a;
