# Specifications for the CLI Assessment

Specs:
- [x] Have a CLI for interfacing with the application
The CLI class welcomes the user and asks him to choose from a list of dog groups.
The user is then given a list of breeds in his chosen group. He can pick which
breed he wants more information on and is given a list of breed characteristics.
The user can then choose to get details on another dog breed or exit the program.

- [x] Pull data from an external source
The program scrapes the dog group names, the dog breeds in each group, and the
traits of each breed from the American Kennel Club's website: http://www.akc.org/
No information is hard coded.

- [x] Implement both list and detail views
The user is given two list views - one master list of breed groups, then a
list of breeds in a chosen group.
After choosing a breed within in a group, the user gets a detail view on that
breed - a list of traits specific to that breed.
