# Debugging dockerized python scripts with vscode

A template for debugging long running, dockerized programs in python with
vscode.

```
import debugpy

debugpy.listen(("0.0.0.0", 5678))
log.info("Waiting for client to attach...")
debugpy.wait_for_client()
```

## Running

1. Set some breakpoints in `main.py` with either:
   * The vscode UI
   * the base python `breakpoint()` function
2. Run `bash ./run_container.sh` to build the docker image and run the container
3. Once the container is running, select the `Python: Docker Attach` debugging configuration 
4. Debug away :heart_eyes:!

## Required Setup

- TODO - add stuff
## Credit

The function `lorenz_attractor()` is adapted from the blog of scipython.com (https://scipython.com/blog/the-lorenz-attractor/)