# vsts-task-gitProxy
VSTS (Visual Studio Team Services) custom build task to set git config for proxy. You can fetch repositories behind proxy (e.g. on-premises Github Enterprise in a private network) to a VSTS hosted agent.

VSTS staffs recommend using an on-premises agent! You should consider it at first. See https://github.com/Microsoft/vsts-agent/issues/1281


## Installation
1. Install [vsts cli commannd](https://github.com/Microsoft/tfs-cli) and log in to your VSTS account.
1. git clone this repo.
    ```
    $ git clone https://github.com/tinoji/vsts-task-gitProxy
    ```
1. Upload a task to your account. Task path is `vsts-task-gitProxy/setGitHttpsProxy`
    ```
    $ cd vsts-task-gitProxy/setGitHttpsProxy
    $ tfx build tasks upload
    TFS Cross Platform Command Line Interface v0.4.11
    Copyright Microsoft Corporation
    > Task path: .
    ```


## Usage
screen shot here


## References
[Running powershell before Get Sources in VSTS / TFS Build](http://www.codewrecks.com/blog/index.php/2017/06/10/running-powershell-before-get-sources-in-vsts-tfs-build/)


## License
MIT


## Memo
make it extension???
