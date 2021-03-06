app <- ShinyDriver$new("../", seed = 1)
app$snapshotInit("mytest")

Sys.sleep(1)
app$snapshot()
Sys.sleep(2)
app$setInputs(sidebarMenu = "structure")
Sys.sleep(5)
app$snapshot()
Sys.sleep(1)
app$setInputs(net = "3")
app$setInputs(alg = "hc")
app$setInputs(type = "aic")
app$setInputs(sidebarMenu = "parameters")
app$snapshot()
Sys.sleep(1)
app$setInputs(met = "bayes")
app$setInputs(param = "dotplot")
app$setInputs(Node = "PCWP")
app$setInputs(sidebarMenu = "inference")
app$snapshot()
Sys.sleep(1)
app$setInputs(evidenceNode = "PCWP")
app$setInputs(evidence = "HIGH")
app$setInputs(event = "HIST")
app$setInputs(sidebarMenu = "measures")
Sys.sleep(5)
app$snapshot()
Sys.sleep(1)
app$setInputs(nodeMeasure = "nbr")
app$setInputs(nodeNames = "PCWP")
app$setInputs(dendrogram = "row")
app$setInputs(sidebarMenu = "structure")
app$setInputs(dataInput = "2")
app$uploadFile(file = "learning_test.csv")
Sys.sleep(5)
app$snapshot()
Sys.sleep(1)
app$setInputs(bookmark = "click")
