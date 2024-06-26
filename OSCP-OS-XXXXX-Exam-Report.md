---
title: "Penetration Test Report"
subtitle: "Example of a complete penetration test report"
header-left: \includegraphics{"./Icons/OffensiveSecurity-logo-header.png"}
header-right: \rightmark
footer-left: "Marmeus"
subject: "Pentesting report"
keywords: [Pentesting, vulnerabilities, report, Marmeus]
lang: "en"
titlepage: true
titlepage-logo: "./Icons/OSCP-logo.png"
# MODE 1
# ------
titlepage-mode-1: true
titlepage-logo-width: 5cm
titlepage-background: "./Assets/background.png"
#
# MODE 2
# ------
# titlepage-mode-2: true
# logo-width: 0.8
#
# OPTIONAL
# --------
titlepage-left-header: "./Icons/Pentesting-logo-header2.png"
author: ["Marmeus"]
date: "01-12-2022"
colorlinks: true
linkcolor: gray
toccolor: gray
urlcolor: blue
lof: true
# END OPTIONAL
titlepage-color: "000000"
titlepage-text-color: "E1E1E1"
titlepage-rule-color: "FFFFFF"
titlepage-rule-height: 0
book: true
classoption: oneside
code-block-font-size: \scriptsize
caption-justification: centering
table-use-row-colors: true
---

# Offensive Security Exam Penetration Test Report 

## Introduction

The Offensive Security Exam penetration test report contains all efforts that were conducted in order to pass the Offensive Security exam. This report will be graded from a standpoint of correctness and fullness to all aspects of the exam. The purpose of this report is to ensure that the student has a full understanding of penetration testing methodologies as well as the technical knowledge to pass the qualifications for the Offensive Security Certified Professional.

## Objective 

The objective of this assessment is to perform an internal penetration test against the Offensive Security Exam network. The student is tasked with following a methodical approach in obtaining access to the objective goals. This test should simulate an actual penetration test and how you would start from beginning to end, including the overall report. An example page has already been created for you at the latter portions of this document that should give you ample information on what is expected to pass this course. Use the sample report as a guideline to get you through the reporting. 

## Requirements 

The student will be required to fill out this penetration testing report fully and to include the following sections:

* Overall High-Level Summary and Recommendations (non-technical) 
* Methodology walkthrough and detailed outline of steps taken 
* Each finding with included screenshots, walkthrough, sample code, and proof.txt if applicable. 
* Any additional items that were not included

# High-Level Summary 

I was tasked with performing an internal penetration test towards the Offensive Security Exam. An internal penetration test is a dedicated attack against internally connected systems. The focus of this test is to perform attacks, similar to those of a hacker and attempt to infiltrate Offensive Security’s internal exam systems. My overall objective was to evaluate the network, identify systems, and exploit flaws while reporting the findings back to Offensive Security. When performing the internal penetration test, there were several alarming vulnerabilities that were identified on Offensive Security’s network. When performing the attacks, I was able to gain access to multiple machines, primarily due to outdated patches and poor security configurations. During the testing, I had administrative level access to multiple systems. All systems were successfully exploited and access granted. These systems as well as a brief description on how access was obtained are listed below: 

* IP-1
* IP-2
* IP-3
* IP-4
* IP-5

## Recommendations 

I recommend patching the vulnerabilities identified during the testing to ensure that an attacker cannot exploit these systems in the future. One thing to remember is that these systems require frequent patching and once patched, should remain on a regular patch program to protect additional vulnerabilities that are discovered at a later date. 

# Methodologies

I utilised a widely adopted approach to performing penetration testing that is effective in testing how well the Offensive Security Exam environment is secured. Below is a breakout of how I was able to identify and exploit the variety of systems and include all individual vulnerabilities found. 

## Information Gathering

The information-gathering portion of a penetration test focuses on identifying the scope of the penetration test. During this penetration test, I was tasked with exploiting the exam network. The specific IP addresses were: 

**Exam Network** 

* IP-1
* IP-2
* IP-3
* IP-4
* IP-5

## Report - Service Enumeration

The service enumeration portion of a penetration test focuses on gathering information about what services are alive on a system or systems. This is valuable to an attacker as it provides detailed information on potential attack vectors in a system. Understanding what applications are running on the system provides an attacker with vital information before conducting the actual penetration test. In some cases, some ports may not be listed.

### IP-1

| Server IP Address | Ports Open                            | Service Banner |
| ----------------- | ------------------------------------- | -------------- |
| 192.168.31.218    | **TCP**: 80, 3389 \linebreak **UDP**: | Apache / RDP   |

### IP-2

### IP-3

### IP-4

### IP-5

## Report - Penetration 

The penetration testing portion of the assessment focuses heavily on gaining access to a variety of systems. During this penetration test, OS-XXXXX was able to successfully gain access to 10 out of the 50 systems

* **Vulnerability Exploited**:  KikChat - (LFI/RCE) Multiple Vulnerability 
* **System Vulnerable**: 192.168.31.218 
* **Vulnerability Explanation**: The \enquote{KikChat} web application suffers from a Local File Include (LFI), as well as a Remote Code Execution (RCE) vulnerability. A combination of these vulnerabilities was used to obtain a low privilege shell. 
* **Privilege Escalation Vulnerability**: Named Pipe Impersonation (In Memory/Admin) 
* **Severity**: \textcolor{Critical}{Critical} \textcolor{High}{High} \textcolor{Medium}{Medium} \textcolor{Low}{Low}
* **Proof Of Concept**:

![Local File Inclusion](Images/image-20220720173611995.png)

* **Confirming RCE (ScreenShot)**:
  * Linux: `hostname && whoami && ip address && cat proof.txt`
  * Winodws (Powershell): `hostname ; whoami ; ipconfig ; type proof.txt`
* **Vulnerability Fix**: No known patch or update for this issue. 

##  Report – House Cleaning

The house-cleaning portion of the assessment ensures that remnants of the penetration test are removed. Oftentimes, fragments of tools or user accounts are left on an organization’s computer, which can cause security issues down the road. Ensuring that we are meticulous and no remnants of our penetration test are leftover is of paramount importance. After the objectives on both the lab network and exam network were successfully completed, OS-XXXXX removed all user accounts and passwords as well as the Meterpreter services installed on the system. Offensive Security should not have to remove any user accounts or services from any of the systems.



# Annexe

## Annexe 1 - Local and Proof contents

| Host | Local.txt | Proof.txt |
| ---- | --------- | --------- |
|      |           |           |
|      |           |           |
|      |           |           |
|      |           |           |
|      |           |           |

## Anex 2 -  Metasploit/Meterpreter

For the exam, I used my Metasploit/Meterpreter allowance on the following machine: 

* 
