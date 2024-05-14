{
  "Comment": "List available IP addresses",
  "StartAt": "IPAddrs",
  "States": {
    "IPAddrs": {
      "Type": "Pass",
      "Result": {
        "option0": "9.37.22.74",
        "option1": "9.37.205.93"
      },
      "ResultPath": "$.values",
      "End": true
    }
  }
}
