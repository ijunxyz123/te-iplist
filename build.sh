ijunxyz123:master.github/workflows1.2.3.38/31          # Nagoya, Japan
2.3.4.22             # Brussels, Belgium1.2.3.38/31<agent>
  <agentId>24695</agentId>
  <agentName>Nagoya, Japan</agentName>
  <agentType>Cloud</agentType>
  <location>Aichi, Japan</location>
  <countryId>JP</countryId>
  <ipv4Address>1.2.3.37</ipv4Address>
  <ipv4Address>1.2.3.38</ipv4Address>
  <ipv4Address>1.2.3.39</ipv4Address>
  <ipv4SubnetStrict>1.2.3.37</ipv4SubnetStrict>
  <ipv4SubnetStrict>1.2.3.38/31</ipv4SubnetStrict>
  <ipv4SubnetLoose>1.2.3.36/30</ipv4SubnetLoose>
  <ipv4RangeStrict>1.2.3.37 - 1.2.3.39</ipv4RangeStrict>
  <ipv4RangeLoose>1.2.3.37 - 1.2.3.39</ipv4RangeLoose>
  <ipv4BlockStrict>1.2.3.[37-39]</ipv4BlockStrict>
  <ipv4BlockLoose>1.2.3.[37-39]</ipv4BlockLoose>
</agent>2.3.4.221.2.3.38246951.2.3.36/301.2.3.371.2.3.39[
{
  "agentId": 24695,
  "agentName": "Nagoya, Japan",
  "agentType": "Cloud",
  "location": "Aichi, Japan",
  "countryId": "JP",
  "ipv4Address": [
    "1.2.3.37",
    "1.2.3.38",
    "1.2.3.39"
  ],
  "ipv4SubnetStrict": [
    "1.2.3.37",
    "1.2.3.38/31"
  ],
  "ipv4SubnetLoose": [
    "1.2.3.36/30"
  ],
  "ipv4RangeStrict": [
    "1.2.3.37 - 1.2.3.39"
  ],
  "ipv4RangeLoose": [
    "1.2.3.37 - 1.2.3.39"
  ],
  "ipv4BlockStrict": [
    "1.2.3.[37-39]"
  ],
  "ipv4BlockLoose": [
    "1.2.3.[37-39]"
  ]
}
]#!/bin/bash
export GOPATH=$PWD
env GOOS=linux GOARCH=386 go build -o bin/linux-32/te-iplist src/te-iplist/te-iplist.go
env GOOS=linux GOARCH=amd64 go build -o bin/linux-64/te-iplist src/te-iplist/te-iplist.go
env GOOS=linux GOARCH=arm go build -o bin/linux-arm/te-iplist src/te-iplist/te-iplist.go
env GOOS=darwin GOARCH=amd64 go build -o bin/macos/te-iplist src/te-iplist/te-iplist.go
env GOOS=darwin GOARCH=arm64 go build -o bin/macos-arm64/te-iplist src/te-iplist/te-iplist.go
env GOOS=windows GOARCH=386 go build -o bin/win/te-iplist.exe src/te-iplist/te-iplist.go
