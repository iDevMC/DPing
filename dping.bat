@echo off
color 5
title DPing - Private IP pinger
mode 120,30
:greetings
cls

ECHO.
ECHO.
ECHO                          :::::::::       :::::::::       :::::::::::       ::::    :::       :::::::: 
ECHO                         :+:    :+:      :+:    :+:          :+:           :+:+:   :+:      :+:    :+: 
ECHO                        +:+    +:+      +:+    +:+          +:+           :+:+:+  +:+      +:+         
ECHO                       +#+    +:+      +#++:++#+           +#+           +#+ +:+ +#+      :#:          
ECHO                      +#+    +#+      +#+                 +#+           +#+  +#+#+#      +#+   +#+#    
ECHO                     #+#    #+#      #+#                 #+#           #+#   #+#+#      #+#    #+#     
ECHO                    #########       ###             ###########       ###    ####       ########       
ECHO                                                     [36mby[0m  [34mi[0m[32mM[0m[33mP[0m[37mD[0m[36me[0m[34mv[0m[36mM[0m[33mC[0m
ECHO.
ECHO.

@TIMEOUT /T 2 /nobreak >nul

set /p IP= [96mInternet Protocol[0m [90m^> [0m
:top
PING -n 1 %IP% | FIND "TTL="
IF ERRORLEVEL 1 (SET in=04 & echo Connection failed)
color %in%
ping -t 2 0 10 127.0.0.1 >nul
GoTo top
