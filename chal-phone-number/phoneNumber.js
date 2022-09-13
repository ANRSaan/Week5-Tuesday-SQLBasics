

// const phone = arr => {
//     string = "("
//     for (i = 0; i < arr.length; i++){
//         if (string.length === 4) {
//             string += ") "
//         }
//         if (string.length === 9){
//             string += "-"
//         }
//         string += arr[i]
//     }
//     return string
// }

const phone = arr => {
    
    arr.unshift('(')
    arr.splice(4, 0, ') ')
    arr.splice(8, 0, '-')

    arr = arr.join('')
    return arr
}

console.log(phone([1,2,3,4,5,6,7,8,9,0]))