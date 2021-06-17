# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

    Question.create(question: "What is the login name of the administrator in Linux?", answer_a: "root", answer_b: "administrator", answer_c: "admin", answer_d: "All of the mentioned", answer_e: "None of the mentioned", correctanswer: "root")
    Question.create(question: "How to delete a pod in Kubernetes using the type and name specified in pod.json?", answer_a: "kubectl delete .\/pod.json", answer_b: "kubectl delete -f .\/pod.json", answer_c: "kubectl remove -f .\/pod.json", answer_d: "kubectl remove .\/pod.json", correctanswer: "kubectl delete -f .\/pod.json")
    Question.create(question: "Which of the following command can give documentation of a command?", answer_a: "man", answer_b: "info", answer_c: "doc", answer_d: "show", answer_e: "help", correctanswer: "man")
    Question.create(question: "Deployment Controllers are part of", answer_a: "Master Controller Manager", answer_b: "kube-scheduler", answer_c: "etcd manager", answer_d: "API Controller Manager", correctanswer: "Master Controller Manager", explanation: "A Deployment provides declarative updates for Pods and ReplicaSets.You describe a desired state in a Deployment, and the Deployment Controller changes the actual state to the desired state at a controlled rate. You can define Deployments to create new ReplicaSets, or to remove existing Deployments and adopt all their resources with new Deployments.")
    Question.create(question: "How do we change permissions on files", answer_a: "chown", answer_b: "chmod", answer_c: "chattr", answer_d: "lsattr", answer_e: "We Can't change them", correctanswer: "chmod")
    Question.create(question: "Which command to use for complete details of a command on the shell?", answer_a: "help", answer_b: "man", answer_c: "?", answer_d: "info", correctanswer: "man")
    Question.create(question: "Which command can be used to change file access permission bits?", answer_a: "chmod", answer_b: "chown", answer_c: "umask", answer_d: "chperm", correctanswer: "chmod")
    Question.create(question: "HTML supports", answer_a: "ordered lists", answer_b: "unordered lists", answer_c: "both type of lists", answer_d: "does not support those types", correctanswer: "both type of lists")
    Question.create(question: "From which file does the command `free` takes it's information", answer_a: "\/proc\/meminfo", answer_b: "\/proc\/freemem", answer_c: "\/proc\/memfree", answer_d: "\/dev\/meminfo", answer_e: "\/dev\/freemem", answer_f: "\/dev\/memfree", correctanswer: "\/proc\/meminfo")
    Question.create(question: "Which command is used to create new directory?", answer_a: "dir", answer_b: "newdir", answer_c: "mkdir", answer_d: "cdir", correctanswer: "mkdir")