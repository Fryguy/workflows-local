{
  "Comment": "List available IP addresses",
  "StartAt": "IPAddrs",
  "States": {
    "IPAddrs": {
      "Type": "Pass",
      "Result": {
        "9.37.22.74": "9.37.22.74",
        "9.37.205.93": "9.37.205.93"
      },
      "ResultPath": "$.values",
      "End": true
    }
  }
}
