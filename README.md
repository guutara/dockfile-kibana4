Example

- Build

docker build -t guutara/kibana4-b2

- Run

docker run -d -p 5601:5601 --name kibana4 guutara/kibana4-b2 -e (elasticsearch URI)
