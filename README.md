# Azure Data Factory Pipeline Runner

### Prerequisites

The **azure cli*** must be installed on the machine to run the provided script.

1. Press Win + R;
2. Type `cmnd`;
3. Type `winget install --id Microsoft.AzureCLI -e`;
4. Agree on terms;
5. Type `az version` to verify the Azure CLI installation
<img width="801" alt="image" src="https://github.com/user-attachments/assets/a79a1ead-c5af-45d7-8d3c-6bcb0d054142" />



### Pipeline definition

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


### Runing the script

Open the `run_pipeline.bat` file and change the default values to the provided:
<img width="674" alt="image" src="https://github.com/user-attachments/assets/61ab3525-d573-4e0d-9fbb-52c441a33e81" />

Save the changes and run the file.

Once the file is run:
1. Log in to the CDW account when the popup window appears;
2. Select the subscription: The provided subscription has to be selected from the list;
<img width="674" alt="image" src="https://github.com/user-attachments/assets/52ee713b-ee6e-4117-8028-f8dd41565082" />

3. Await the script ot be finished.


### Additional information

To find more information on the pipeline run:

1. Log in to the Azure portal: [azure portal]([https://www.example.com](https://portal.azure.com/#home)
2. Search `data factory` by name:
<img width="900" alt="image" src="https://github.com/user-attachments/assets/62a07bbd-76fa-4714-8a4e-0e81a9adad04" />

3. Launch studio:
<img width="900" alt="image" src="https://github.com/user-attachments/assets/69c241d0-3c3b-41d9-b660-c95670e25a38" />

4. Click on `Monitor` and find the pipeline run:
<img width="900" alt="image" src="https://github.com/user-attachments/assets/2274099d-e796-47a4-b44b-63c814c16926" />



