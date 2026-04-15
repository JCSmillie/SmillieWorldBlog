+++
date = '2026-04-14T21:26:53-04:00'
draft = false
tags = [ "Coding","History","Musky","Nora","Panda" ]
categories = [ "Musky","Tech" ]
title = 'Musky Growth This School Year How Did I Get Here Again'
+++
So Musky actually has already been through a few rounds of change in its life. When I first started this project it consisted of three pages:

- Index Page  
- Device Manager 
- Loaner Manager  

 ![Musky Original Device Manger](/images/OriginalDeviceManager.jpg)
 
The base of these pages was written and debugged sitting in Latrobe Hospital Spring 24' while sitting with my Dad through the last days of his life. Hence the name. Musky was my Mom's nickname for my Dad. Musky was short for Muskrat. After he passed, as the ideas came while sitting there, what better way to keep my Dad at the top of my thoughts then to make software after his nickname. The original pages are really just a pretty wrapper for a Command Line call to MOSBasic. This works... as long as you have a working MOSBasic backend, but it can be clunky and like Mosyle is really just about the Here and Now data; lacked history outside of what the Radius tracking module added later for Device Manager.

Fall 26' I started bowling my 29th year on the Scottdale Men's Legion Post 240 Monday night league and tore the bicept out of my left arm. I spent most of the recovery time watching old "B" Movies and a few rewatch cycles for long time found favorites. My mind wasn't engauged however.. Well idle hands is exactly what Musky needed for its next evolution.... From mid October 25' to late November 25' all I worked on was pushing what I can do. I wanted to learn more about Dockers, GoogleSSO, and MySQL. These are things we already use every day for other things that have ran onsite forever, but to be honest I really didn't know enough about these things I thought. I set a goal that I wanted to offer a simple Docker that would let anyone with MosyleAPI access very easily fire up MOSBasic and run these pages. This spirled into what transpired those months.

In that time the following changes and/or features were added:

- **HUGE THING -> Creation of NORA.**  
  Nora was my Grandmother's name.. my Dad's mom. I wanted to create some sort of underpins which would give me more access to history. Mosyle doesn't give us much history about devices; most of it is pretty much what happened last. Nora would utilize MySQL and MOSBasic dumps to create a history repository that would be searchable. NORA started processing live data dumps from MOSBasic in my October 25'.

- **GoogleSSO ->**  
  I had "Smillieware2FA" when I presented last and while I loved seeing the logo roll around I was getting the feeling I was reinventing the wheel almost. Like we have all this stuff in Google. What can it do for me? Well it handles login vitals for the user and tells me their groups perfectly.

- **An Errands system ->**  
  My Grandmother was a task master. Well into our age until she became bed ridden her house was always clean and everything was as it should be. She did a ton of the work, but she was also great and sending the family on errands to help further the progress. Nora's Errand System allows me to interact with other systems directly and intergrate that feedback into my data stack.

- **Device Battery Report ->**  
  Kids ofen came to the help desk and said "My iPad won't charge." Best option we had before was open Settings-> Battery. See what can be seen. Enable extra reporting and tell the user to reutn if it happens again. Now with a click we can pull up a report and Nora will tell us everytime a user checked in and what their battery level was. Once you show that to the student they typically fess up pretty quickly that maybe they are not telling the whole story.. like today is a testing day?
 ![Musky Device Report Header](/images/MuskyDeviceReportHeadRocker.jpg)
 ![Musky Device Battery Report](/images/MuskyDeviceBatteryReport.jpg)


- **Class Explorer ->**  
  Using Class data from Mosyle I can figure who what iPads belong to what Teachers Classes. This lets me show the teacher their class, all devices in it, and give them action options all in one processing pane.

- **Mass Wiping Support ->**  
  Yes you can easily do "Return to Service" wipes in Mosyle directly, but by using Nora Errand's to control the tempo we can ensure what has finished and see easily what devices need more attention. Further this data is shown all in one pane for all the devices selected letting you know at a glance what state we're in.
 ![Musky Wipe Devices a Class Load](/images/MUSKY-WipeDevices.jpg)
 ![Musky Wipe Devices Closer Look](/images/MUSKY-WipeDevices-CloserLook.jpg)

- **Removed Slack Support (From Musky)**

- **Added Slack Errand to Nora.**  
  "Send an Errand" to Nora and she makes the slack happen and logs it.

- **Added IncidentIQ Errand to Nora**  
  This is another toolkit of actions Nora can do as commands to IIQ for instance: Make tickets, make notes, confirm ticket owners, etc.

- **Create a SUPER SIMPLE METHOD for teachers to make tickets in incidentIQ**  
  That routed properly with MINIMAL interaction. This is accessed through Class Explorer. Check a device or two. Click Report a Problem. Away you go.

---

In Late November 2025 I laid the framework out for what I would call the PANDA system. PANDA and all of its submodules are built to handle help desk parts (inventory control,) help desk charges (submission, approval, relayed to skyward,) and history of both of those things in both per user and per device reporting. PANDA is so much that it needs its own note here. I'll come back to that later. Oh and of course the PANDA name comes from my sister Amanda. My dad called her Mandy Pandy and I think my mom tagged her as Panda. I'm not sure and no one is to be honest how this name got on her, but not the less thats why I chose it.

---

2026 has been, until lately, about refinement. Rolling through the code and fixing oddities here and there and adding feature set where it makes sense. Well until I got the call up for MacAdmins... Now its a scramble to security check all this and get the public code posted to the repo BEFORE mac Admins!

\- Jesse