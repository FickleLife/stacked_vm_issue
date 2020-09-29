# stacked_vm_issue

When the list is reversed, the child views recieve the correct data, but child viewmodels are not run, meaning their state is not updated. 

This is a simple example, the same issue occurs with many graphQL libraries (in this instance flutter_graphQL) when they load data from a local cache. 