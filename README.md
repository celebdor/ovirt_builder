# oVirt builder

Builds minimal (for now Firefox only) centos7 rpms for the engine.

Build and run this docker container with a gerrit change reference/branch/tag
and get the rpms in the current dir.

## oVirt Engine

It's the backend and frontend of the oVirt manager.

### Building the ovirt-engine builder container
```
docker build -t celebdor/ovirt_builder ovirt_engine
```

### Building oVirt-engine using the container
```
docker run -v path_to_where_where_to_put_rpms:/data -ti celebdor/ovirt_builder
```

### Building oVirt-engine using the container for a specific change
```
docker run -v path_to_where_where_to_put_rpms:/data -ti  celebdor/ovirt_builder "refs/changes/98/36298/1"
```

## oVirt Virtual Desktop and Server Manager

It's the hypervisor controller component that sits on each host.

### Building the vdsm builder container
```
docker build -t celebdor/vdsm_builder vdsm
```

### Building vdsm using the container
```
docker run -v path_to_where_where_to_put_rpms:/data -ti celebdor/vdsm_builder
```

### Building vdsm using the container for a specific change
```
docker run -v path_to_where_where_to_put_rpms:/data -ti  celebdor/vdsm_builder "refs/changes/98/36298/1"
```
