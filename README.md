# Debugging dockerized python scripts with vscode

A template for debugging long running, containerized ML applications in python with
vscode.

```
import debugpy

debugpy.listen(("0.0.0.0", 5678))
print("Waiting for client to attach...")
debugpy.wait_for_client()
```
See medium post for a full explanation: [Debugging for Dockerized ML applications in Python](https://towardsdatascience.com/debugging-for-dockerized-ml-applications-in-python-2f7dec30573d)

## Running

1. Set some breakpoints in `main.py` with either:
   * The vscode UI
   * Use the `debugpy.breakpoint()` function
2. Run `bash ./run_container.sh` to build the docker image and run the container
3. Once the container is running, select the `Python: Docker Attach` debugging configuration 
4. Debug away :heart_eyes:
