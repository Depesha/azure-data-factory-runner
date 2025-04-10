@echo off
setlocal

:: Predefined values
set subscriptionId={subscription-id}

:: Values to setup before your first run
set resourceGroup={resource-group-name}
set factoryName={factory-name}
set pipelineName={pipeline-name}

echo Logging into Azure (Subscription: %subscriptionId%)...

call az login       --only-show-errors --output none
call az account set --subscription %subscriptionId%

echo Adding Azure Data Factory CLI extension...
call az extension add --name datafactory

:: Trigger the pipeline and capture the run ID
echo Triggering pipeline '%pipelineName%'...
FOR /F "usebackq tokens=*" %%i IN (`
    az datafactory pipeline create-run ^
        --resource-group %resourceGroup% ^
        --factory-name %factoryName% ^
        --name %pipelineName% ^
        --query runId ^
        -o tsv
        --parameters @params.json
        `) DO set runId=%%i

:: Display the captured runId
echo Run ID: %runId%

:: Check and display run status
:waitForStatus
echo Checking run status for run ID: %runId%

call az datafactory pipeline-run show ^
    --resource-group %resourceGroup% ^
    --factory-name %factoryName% ^
    --run-id %runId% ^
    --query status -o tsv > status.txt

set /p status=<status.txt

:: Check if the status is one of the desired states
if "%status%"=="Succeeded" (
    echo Pipeline succeeded!
    goto end
)
if "%status%"=="Failed" (
    echo Pipeline failed!
    goto end
)
if "%status%"=="Cancelled" (
    echo Pipeline was cancelled!
    goto end
)

:: If the status is not one of the desired ones, wait and check again
echo Waiting for status to reach 'Succeeded', 'Failed', or 'Cancelled'...
timeout /t 10 > nul
goto waitForStatus

:end
endlocal
pause
