use std::collections::HashSet;
use std::fs::File;
use std::io::Read;

fn read_file(filename: &str) -> String {
    let mut f: File = File::open(filename).expect("file not found");
    let mut contents: String = String::new();
    f.read_to_string(&mut contents)
        .expect("something went wrong reading the file");
    contents
}

fn score(s: String) -> i32 {
    let freqs = "etainoshrdlcumwfgypbvkjxqz";
    s.chars().map(|c| freqs.find(c).unwrap() as i32).sum()
}

fn uniq(s: String) -> String {
    let mut uniq = HashSet::new();
    s.chars().filter(|c| uniq.insert(*c)).collect()
}

fn main() {
    let lenn = 5;
    let contents: String = read_file("/usr/share/dict/cracklib-small");
    let mut words = contents
        .lines()
        .filter(|line| line.len() == lenn)
        .filter(|line| line.chars().all(|c| c.is_alphabetic()))
        .map(|word| word.to_lowercase())
        .filter(|word| uniq(word.to_string()).len() == word.chars().count())
        .collect::<Vec<String>>();

    words.sort_by_key(|word| score(word.to_string()));

    words.iter().take(10).for_each(|ele| println!("{}", ele));
}
