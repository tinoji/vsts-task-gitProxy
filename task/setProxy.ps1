[CmdletBinding()]
param ()

try {
    $proxy = Get-VstsInput -Name 'ProxyConfig' -Require

    git config --global https.sslVerify true
    git config --global http.sslVerify true
    git config --global https.proxy $proxy
    git config --global http.proxy $proxy
} finally {
    Trace-VstsLeavingInvocation $MyInvocation
}
