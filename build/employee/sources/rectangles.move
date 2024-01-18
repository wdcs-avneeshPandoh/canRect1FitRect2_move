address 0x1 {
module rectangles {
    use std::debug;

    public fun CanRect_A_fit_Rect_B(a: u64, b: u64, c: u64, d: u64): bool {
        if ((a*b > c*d) && (a > c) && (b > d)) {
            debug::print(&false,); 
            false
        } else {
            debug::print(&true,); 
            true
        }
    }

    #[test]
    fun test_CanRect_A_fit_Rect_B() { 
        let result = CanRect_A_fit_Rect_B(10, 20, 5, 12);
        let address = 0;
        address = address + 1;
        debug::print(&address);
        assert!(!result, 1666);
    }
}
}
