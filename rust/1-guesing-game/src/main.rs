//extern crate rand;
use std::io;
//use rand::Rng;
use std::cmp::Ordering;

fn main() {
    println!("gues the number!");
    //let secret_number = rand::thread_rng().gen_range(1,101);
    let secret_number = 12;
    println!("the secret number is : {} ",secret_number);

    loop{
        println!("pls enter your guess");


        let mut guess = String::new();
        io::stdin().read_line(&mut guess)
            .expect("failed :(");
        let guess: u32 = match guess.trim().parse() {
            Ok(num) => num,
            Err(_) => {
                println!("so?");
                continue;
            },
        };

        println!("you guessed {}",guess);

        match guess.cmp(&secret_number){
            Ordering::Less => println!("too small"),
            Ordering::Greater=> println!("too big"),
            Ordering::Equal => {
                println!("you win!");
                break;
            }
        }

    }

}
