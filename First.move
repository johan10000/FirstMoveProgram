module 0x42:: SocialNetwork{ // Let us create a module named SocialNetwork which we run from the address 0x42(as we are running locally, we can have any address here)
    use std::debug; // To import print from the standard library

    // keyword: drop: this can be altered (by default, the type in move is non alterable)
    // keyword: has: define the properties from now on like drop, etc
    struct Person has drop{
        age: u8 // u8: unsigned integer
    }

    public fun set_age(new_age: u8): u8{ // keyword: fun: to tell this is a function
        let person = Person{ age:new_age }; // keyword: let: tells this variable is alterable (by default, the type in move is constant)
        debug::print(&person.age); // print function in move prints the contents at the address
        return person.age
    }

    // run the below when we run move test
    #[test]
    fun test_set_age(){
        let age = set_age(10);
        debug::print(&age);
    }
}
