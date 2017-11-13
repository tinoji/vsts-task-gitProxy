# vsts-task-gitProxy
VSTS (Visual Studio Team Services) custom build task to set git config for proxy. You can fetch repositories behind proxy (e.g. on-premises Github Enterprise in a private network) to a VSTS hosted agent.

VSTS staffs recommend using an on-premises agent! You should consider it at first. See https://github.com/Microsoft/vsts-agent/issues/1281


## Installation
1. git clone this repository.
    ```
    git clone https://github.com/tinoji/vsts-task-gitProxy
    ```

1. Download `VstsTaskSdk`, then copy it in `task/ps_modules`.
    ```
    git clone https://github.com/Microsoft/vsts-task-lib
    cp -R vsts-task-lib/powershell/VstsTaskSdk vsts-task-gitProxy/task/ps_modules
    ```

1. Install [vsts cli commannd](https://github.com/Microsoft/tfs-cli) and log in to your VSTS account.

1. Upload a task to your account.
    ```
    cd vsts-task-gitProxy/task
    tfx build tasks upload
    ```
    Enter path in the task path prompt.
    ```
    TFS Cross Platform Command Line Interface v0.4.11
    Copyright Microsoft Corporation
    > Task path: .
    ```


## Usage
Add the task in your build definition.  
![add_task](https://github.com/tinoji/vsts-task-gitProxy/blob/images/images/add_task.png)

Put the task in the top order.  
![order](https://github.com/tinoji/vsts-task-gitProxy/blob/images/images/order.png)

Enter your proxy configuration.   
![configuration](https://github.com/tinoji/vsts-task-gitProxy/blob/images/images/configuration.png)


## References
[Running powershell before Get Sources in VSTS / TFS Build](http://www.codewrecks.com/blog/index.php/2017/06/10/running-powershell-before-get-sources-in-vsts-tfs-build/)

https://github.com/Microsoft/vsts-agent/issues/1281

## License
MIT
