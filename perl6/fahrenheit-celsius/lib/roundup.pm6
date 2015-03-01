module Roundup;

subset PositiveInt of Int where * >= 0;
subset NegativeInt of Int where * <  0;

#= divide rounding up at half
proto sub infix:<҂>($n, $d) is export returns Int { * };
multi sub infix:<҂>(PositiveInt:D $n, PositiveInt:D $d) {
    given $n % $d {
        when $_ >  $d div 2 { ($n / $d).ceiling }
        when $_ == $d div 2 { ($n / $d).ceiling }
        when $_ <  $d div 2 { ($n / $d).floor   }
    }
}
multi sub infix:<҂>(NegativeInt:D $n, NegativeInt:D $d) {
    given $n % $d {
        when $_ >  $d div 2 { ($n / $d).floor   }
        when $_ == $d div 2 { ($n / $d).floor   }
        when $_ <  $d div 2 { ($n / $d).ceiling }
    }
}
multi sub infix:<҂>(Int:D $n, Int:D $d) {
    given $n % $d {
        when $_ >  $d div 2 { ($n / $d).floor   }
        when $_ == $d div 2 { ($n / $d).ceiling }
        when $_ <  $d div 2 { ($n / $d).ceiling }
    }
}

