#!/bin/bash

notify-send "Meeting Starting Soon" \
    "Your standup meeting begins in 5 minutes." \
    --action="join=Join Now" \
    --action="snooze=Snooze 5m" \
    --action="dismiss=Dismiss"
