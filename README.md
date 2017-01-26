Reading

- http://blog.ibmjstart.net/2016/01/28/jupyter-notebooks-as-restful-microservices/
- https://jupyter-kernel-gateway.readthedocs.io/en/latest/http-mode.html
- https://github.com/jupyter/kernel_gateway/blob/master/etc/api_examples/api_intro.ipynb

docker-compose.yml

- https://github.com/jupyter/docker-stacks
- https://jupyter-kernel-gateway.readthedocs.io/en/latest/config-options.html

Running

    dc up
    # click the link from the stdout of the notebook service

Testing the API

    curl 'localhost:8889/hello'
    curl 'localhost:8889/hello/person?person=alice'
    curl 'localhost:8889/hello/persons?person=foo&person=bar'
    curl 'localhost:8889/hello/people'
    curl 'localhost:8889/hello/alice'

    curl 'localhost:8889/message'
    curl -X PUT -d 'breakfast=spam+eggs' 'localhost:8889/message'
    curl 'localhost:8889/message'

    curl 'localhost:8889/people'
    curl -X POST -H "Content-Type: application/json" --data-binary '["Alice", "Bob"]' 'localhost:8889/people'
    curl 'localhost:8889/people'
    curl -X PUT -H "Content-Type: application/json" --data-binary '"Charlie"' 'localhost:8889/people'
    curl 'localhost:8889/people'
    curl -X DELETE 'localhost:8889/people/1'
    curl 'localhost:8889/people'

    curl 'localhost:8889/error'
    curl 'localhost:8889/stderr'

    curl -H "Content-Type: application/x-spam" 'localhost:8889/content-type'

Check out swagger UI:

- visit [http://localhost:8887/](http://localhost:8887/)
- paste [http://localhost:8886/_api/spec/swagger.json](http://localhost:8886/_api/spec/swagger.json)
- Explore

