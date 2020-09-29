# stacked_vm_issue

When the list is **reversed**, the child views recieve the correct data, but child viewmodels are not run, meaning their state is not updated. 

This is a simple example, the same issue occurs with many graphQL libraries (in this instance flutter_graphQL) when they load data from a local cache. 

## Pics

The coloured box lerps from red to green, from 0 - 100. This is defined in a child viewmodel. 

![Test Image 1](./img1.png | width=400)

When adding items programmatically to a **reversed** list, the state of the child viewmodels remain and the top 5 colours do not change regardless of the number in the listitem.

![Test Image 1](./img2.png | width=400)