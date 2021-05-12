/* This program solves
   the Tower of Hanoi riddle.

   Sean McLeod
   2021/05/11
*/

func hanoi(nOfDisks: Int, startPeg: Int, endPeg: Int) {
    // This function calculates where the disks should be placed in
    let pegNumber:Int = 6;
    if nOfDisks == 1 {
        print("Move disk 1 from peg \(startPeg) to \(endPeg)")
    } else {
        hanoi(nOfDisks: nOfDisks - 1, startPeg: startPeg,
              endPeg: pegNumber - startPeg - endPeg)
        print("Move disk \(nOfDisks) from peg \(startPeg) to \(endPeg)")
        hanoi(nOfDisks: nOfDisks - 1, startPeg: pegNumber - startPeg - endPeg,
              endPeg: endPeg)
    }
}

let startPeg:Int = 1
let endPeg:Int = 3

print("Tower of Hanoi")

// input
print("\nHow many disks do you want?: ", terminator: "")
let userInput = readLine()

if let nOfDisks = Int(userInput!) {
    print()
    if nOfDisks > 0 {
        // process
        hanoi(nOfDisks: nOfDisks, startPeg: startPeg, endPeg: endPeg)
    } else {
        print("\nPlease enter a positive integer")
    }
} else {
    print("\nThis is not an integer")
}
