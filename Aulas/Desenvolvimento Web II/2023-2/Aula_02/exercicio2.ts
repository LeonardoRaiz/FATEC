namespace exercicio2 {
    let num1: number = 1, num2: number = 2, num3: number = 3, num4: number = -1;
    
    if(num4 > num3){
        console.log(num4, num3, num2, num1);
    } else if(num4 > num2){
        console.log(num3, num4, num2, num1)
    } else if(num4 > num1){
        console.log(num3, num2, num4, num1);
    } else {
        console.log(num3, num2, num1, num4);
    }
}