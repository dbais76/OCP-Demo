#!/bin/bash
oc get packagemanifests file-integrity-operator -o jsonpath='{range .status.channels[*]}{.name}{"\n"}{end}'
