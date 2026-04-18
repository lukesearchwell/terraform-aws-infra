# Terraform Install

```mermaid

flowchart LR
    1([Start])
    2[**Check Terraform** 
    _terraform version_]
    3[**Install Terraform** 
    _winget install HashiCorp.Terraform_]
    4[**Verify** 
    _terraform version_]
    5([End])

1 --> 2
2 --> 3
3 --> 4
4 --> 5
```
