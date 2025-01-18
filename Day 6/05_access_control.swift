// 05 - Access control

/*
* 3 Types:
*  1. private. Don't let anything outside the struct use this
*  2. fileprivate. Don't let anything outside this file use this
*  3. Let anyone, anywhere
*/

private var funds = 0

// In this example, we can read the value but not change it (only the methods
// can actually do it)