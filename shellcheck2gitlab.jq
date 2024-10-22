map({
  "type": "issue",
  "check_name": .message,
  "description": .message,
  "categories": ["Style"],
  "location": {
    "path": .file,
    "lines": {
      "begin": .line,
      "end": .endLine
    }
  },
  "severity": (if .level == "info" then "info" else "major" end),
  "fingerprint": (.file + "-" + (.line | tostring) + "-" + (.column | tostring) + "-" + (.endLine | tostring) + "-" + (.endColumn | tostring))
})
