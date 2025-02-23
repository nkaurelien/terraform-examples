# invoke
1. First, save the following JSON payload to a file called payload.json:
```python
{
  "key1": "World"
}
```
2. Next, use the AWS CLI to invoke the function and pass the payload as input:
```console
aws lambda invoke --function-name Test_Lambda_Function --payload file://payload.json output.json

```
3. See output.json
```json
{
  "StatusCode": 200,
  "ExecutedVersion": "$LATEST",
  "Payload": "{\"message\": \"Hello World !\"}"
}

```
# Credits

- https://spacelift.io/blog/terraform-aws-lambda
- https://github.com/terraform-aws-modules/terraform-aws-lambda/tree/master/examples/