# Terraform Install

```mermaid

flowchart LR
    1([Start])
    2[Check Terraform ``terraform version``]
    3[Install Terraform ``winget install HashiCorp.Terraform``]
    4[Verify ``terraform version``]
    5([End])

1 --> 2
2 --> 3
3 --> 4
4 --> 5
```
