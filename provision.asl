{
  "Comment": "VM Provisioning",
  "StartAt": "PreProvision",
  "States": {
    "PreProvision": {
      "Type": "Pass",
      "Next": "Provision"
    },
    "Provision": {
      "Type": "Task",
      "Resource": "builtin://provision_execute",
      "Next": "SendEmail"
    },
    "SendEmail": {
      "Type": "Task",
      "Resource": "builtin://email",
      "Parameters": {
        "To": "fryguy9@gmail.com",
        "From": "noreply@manageiq.org",
        "Title": "Your provisioning has completed",
        "Body": "Your provisioning request has completed"
      },
      "Next": "Finished"
    },
    "Finished": {
      "Type": "Succeed"
    }
  }
}
