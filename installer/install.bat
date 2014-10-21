@echo off
node-v0.10.26-x86.msi
setup-couchdb-1.5.0_R16B02.exe
timeout 5
start startcouchdb.bat
timeout 4
curl -X DELETE http://localhost:5984/activitylog
curl -X DELETE http://localhost:5984/apps
curl -X DELETE http://localhost:5984/assignmentpaper
curl -X DELETE http://localhost:5984/assignments
curl -X DELETE http://localhost:5984/calendar
curl -X DELETE http://localhost:5984/communities
curl -X DELETE http://localhost:5984/community
curl -X DELETE http://localhost:5984/communityreports
curl -X DELETE http://localhost:5984/configurations
curl -X DELETE http://localhost:5984/courseschedule
curl -X DELETE http://localhost:5984/coursestep
curl -X DELETE http://localhost:5984/feedback
curl -X DELETE http://localhost:5984/groups
curl -X DELETE http://localhost:5984/invitations
curl -X DELETE http://localhost:5984/languages
curl -X DELETE http://localhost:5984/mail
curl -X DELETE http://localhost:5984/meetups
curl -X DELETE http://localhost:5984/members
curl -X DELETE http://localhost:5984/membercourseprogress
curl -X DELETE http://localhost:5984/nationreports
curl -X DELETE http://localhost:5984/publicationdistribution
curl -X DELETE http://localhost:5984/publications
curl -X DELETE http://localhost:5984/report
curl -X DELETE http://localhost:5984/requests
curl -X DELETE http://localhost:5984/resourcefrequency
curl -X DELETE http://localhost:5984/shelf
curl -X DELETE http://localhost:5984/usermeetups

timeout 3

curl -X PUT http://localhost:5984/activitylog
curl -X PUT http://localhost:5984/apps
curl -X PUT http://localhost:5984/assignmentpaper
curl -X PUT http://localhost:5984/assignments
curl -X PUT http://localhost:5984/calendar
curl -X PUT http://localhost:5984/collectionlist
curl -X PUT http://localhost:5984/communities
curl -X PUT http://localhost:5984/community
curl -X PUT http://localhost:5984/communityreports
curl -X PUT http://localhost:5984/configurations
curl -X PUT http://localhost:5984/courseschedule
curl -X PUT http://localhost:5984/coursestep
curl -X PUT http://localhost:5984/feedback
curl -X PUT http://localhost:5984/groups
curl -X PUT http://localhost:5984/invitations
curl -X PUT http://localhost:5984/languages
curl -X PUT http://localhost:5984/mail
curl -X PUT http://localhost:5984/meetups
curl -X PUT http://localhost:5984/members
curl -X PUT http://localhost:5984/membercourseprogress
curl -X PUT http://localhost:5984/nationreports
curl -X PUT http://localhost:5984/publicationdistribution
curl -X PUT http://localhost:5984/publications
curl -X PUT http://localhost:5984/report
curl -X PUT http://localhost:5984/requests
curl -X PUT http://localhost:5984/resourcefrequency
curl -X PUT http://localhost:5984/resources
curl -X PUT http://localhost:5984/shelf
curl -X PUT http://localhost:5984/usermeetups
timeout 1
curl -d @languages.txt -H "Content-Type: application/json" -X POST http://localhost:5984/languages
curl -d @configurations.txt -H "Content-Type: application/json" -X POST http://localhost:5984/configurations
curl -d @admin.txt -H "Content-Type: application/json" -X POST http://localhost:5984/members

curl -d @Design_Docs\design_doc_activitylog.txt -H "Content-Type: application/json" -X POST http://localhost:5984/activitylog
curl -d @Design_Docs\design_doc_assignments.txt -H "Content-Type: application/json" -X POST http://localhost:5984/assignments
curl -d @Design_Docs\design_doc_assignmentpaper.txt -H "Content-Type: application/json" -X POST http://localhost:5984/assignmentpaper
curl -d @Design_Docs\design_doc_calendar -H "Content-Type: application/json" -X POST http://localhost:5984/calendar
curl -d @Design_Docs\design_doc_collectionlist.txt -H "Content-Type: application/json" -X POST http://localhost:5984/collectionlist
curl -d @Design_Docs\design_doc_communityreports.txt -H "Content-Type: application/json" -X POST http://localhost:5984/communityreports
curl -d @Design_Docs\design_doc_courseschedule.txt -H "Content-Type: application/json" -X POST http://localhost:5984/courseschedule
curl -d @Design_Docs\design_doc_coursestep.txt -H "Content-Type: application/json" -X POST http://localhost:5984/coursestep
curl -d @Design_Docs\design_doc_feedback.txt -H "Content-Type: application/json" -X POST http://localhost:5984/feedback
curl -d @Design_Docs\design_doc_groups.txt -H "Content-Type: application/json" -X POST http://localhost:5984/groups
curl -d @Design_Docs\design_doc_invitations.txt -H "Content-Type: application/json" -X POST http://localhost:5984/invitations
curl -d @Design_Docs\design_doc_mail.txt -H "Content-Type: application/json" -X POST http://localhost:5984/mail
curl -d @Design_Docs\design_doc_meetups.txt -H "Content-Type: application/json" -X POST http://localhost:5984/meetups
curl -d @Design_Docs\design_doc_membercourseprogress.txt -H "Content-Type: application/json" -X POST http://localhost:5984/membercourseprogress
curl -d @Design_Docs\design_doc_members.txt -H "Content-Type: application/json" -X POST http://localhost:5984/members
curl -d @Design_Docs\design_doc_nationreports.txt -H "Content-Type: application/json" -X POST http://localhost:5984/nationreports
curl -d @Design_Docs\design_doc_publicationdistribution.txt -H "Content-Type: application/json" -X POST http://localhost:5984/publicationdistribution
curl -d @Design_Docs\design_doc_publications.txt -H "Content-Type: application/json" -X POST http://localhost:5984/publications
curl -d @Design_Docs\design_doc_report.txt -H "Content-Type: application/json" -X POST http://localhost:5984/report
curl -d @Design_Docs\design_doc_requests.txt -H "Content-Type: application/json" -X POST http://localhost:5984/requests
curl -d @Design_Docs\design_doc_resourcefrequency.txt -H "Content-Type: application/json" -X POST http://localhost:5984/resourcefrequency
curl -d @Design_Docs\design_doc_resources.txt -H "Content-Type: application/json" -X POST http://localhost:5984/resources
curl -d @Design_Docs\design_doc_shelf.txt -H "Content-Type: application/json" -X POST http://localhost:5984/shelf
curl -d @Design_Docs\design_doc_usermeetups.txt -H "Content-Type: application/json" -X POST http://localhost:5984/usermeetups
timeout 3
BeLL-Apps\node_modules\.bin\couchapp push BeLL-Apps\app.js http://127.0.0.1:5984/apps
timeout 2
start firefox http://127.0.0.1:5984/apps/_design/bell/MyApp/index.html#login