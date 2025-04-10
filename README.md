# Azure Data Factory Pipeline Runner

### Page content

* ❗️ Prerequisites
* 🔎 Pipeline definition
* 🏃🏽‍♀️ Running the script
* 💬 Additional information


### ❗️ Prerequisites

The **azure cli*** must be installed on the machine to run the provided script.

1. Press Win + R;
2. Type `cmnd`;
3. Type `winget install --id Microsoft.AzureCLI -e`;
4. Agree on terms;
   
<img width="674" alt="image" src="https://github.com/user-attachments/assets/47e185a1-27c3-4dcf-9f0d-a56488ae5456" />

6. Restart `cmd`
7. Type `az version` to verify the Azure CLI installation
   
<img width="674" alt="image" src="https://github.com/user-attachments/assets/ad844df6-94e1-426a-9625-c04083a9d82d" />


### 🔎 Pipeline definition

To start using the script, the pipeline information must be set in the **run_pipeline.bat**.

Ask the team to provide information for the pipeline:
  1. Subscription Id;
  2. Resource group name;
  3. Data Factory name;
  4. Pipeline name;
```
  set subscriptionId={subscription-id}
  set resourceGroup={resource-group-name}
  set factoryName=df-{factory-name}
  set pipelineName={pipeline-name}
```


### 🏃🏽‍♀️ Running the script

Open the `run_pipeline.bat` file and change the default values to the provided:

<img width="419" alt="image" src="https://github.com/user-attachments/assets/7f84cbfd-40aa-47e9-98b5-ccbf3f993314" />

Save the changes and run the file.

Once the file is run:
1. Log in to the CDW account when the popup window appears;
2. Select the subscription: The provided subscription has to be selected from the list;
3. Await the script ot be finished.

### ⚙️ Running pipeline with parameters

To run the pipeline with the specified parameters, the next steps have to be taken:
1. Understand the type and names of the parameters
> ✅ **Note:** Default values are used if you omit a parameter and it’s defined with a default;

> 💡 **Note:** Nested complex objects aren’t supported beyond flat objects or arrays.
2. Open the `params.json` file and set the required parameter
3. Run the application
> 💡 **Note:** Extra parameters that are not defined in the pipeline will be ignored;
> no cleanup required to run another pipeline with different parameters.

### 💬 Additional information

To find more information on the pipeline run:

1. Log in to the Azure portal: [azure portal](https://portal.azure.com/#home)
2. Search `data factory` by name in search;
3. Launch Data Factory Studio;
4. Click on `Monitor` and find the pipeline run;



