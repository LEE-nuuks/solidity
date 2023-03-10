//SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.4.16 <0.9.0;

contract SolidityType {
    // Value Types

    // Booleans
    int a= 3;
    bool isVerified=false;
    function validation() public returns (bool) {
        if (a == 2)
            isVerified = true;
            return isVerified;
    }

    // Integers
    int myNum;
    int8 eBit;
    int16 sBit;
    int pow;
    int leftshift;
    int rightshift;
    uint r;
    int sq;
    int x;
    int re;
    int ra;
    int w;
    int wm;
    int rev;

    function set(int u_num) public {
        myNum = u_num;
    }
    function get() public view returns (int) {
        return myNum;
    }

    function setEbit(int8 ebit) public {
        eBit = ebit;
    }
    function getEbit() public view returns(int8) {
        return eBit;
    }

    function setSbit(int16 sbit) public {
        sBit = sbit;
    }
    function getSbit() public view returns(int16) {
        return sBit;
    }


    function typeCheck() public view returns(int) {
        return type(int).max;
    }


    function power(int num, int exp) public {
        if (num > exp)
            pow = num - exp;
        pow = exp - num;
    }

    function sub() public view returns (int) {
        return pow;
    }

    function bitOperation() public view returns(bool) {
        if (~int8(0) == int(-1))
            return true;
        return false;
    }

    function shift(int n) public {
        leftshift = n << 1;
        rightshift = n >> 1;
    }

    function shifLeft() public view returns (int) {
        return leftshift;
    }

    function shiftRight() public view returns (int) {
        return rightshift;
    }

    function f(uint a, uint b) public returns (uint) {
        if (a > b)
            r = a - b;
        if (b > a)
          r = b - a;
        
        r++;
        r--;
        r += 2;
        r -= 2;
        r *= 2;
        r /= 2;
    }

    function fview() public view returns(uint) {
        return r;
    }

    function sqr(int num) public  {
        sq = num ** 2;
    }

    function showSqr() public view returns (int) {
        return sq;
    }

    function check() public view returns (int) {
        int x = type(int).min;
        unchecked {
            assert (-x == x);
        }
    }

    function intCheck(int32 m, int256 n) public view returns (int) {
        return m+n;
    }


    function int32T() public view returns (int) {
        return type(int64).min;
    }

    function division(int16 a, int8 b, int16 c) public view returns(bool) {
        if (int16(a) / int8(b) == int16(c))
            return true;
        else
            return false;
    }

    //function rational(uint128 ab) public view returns (uint128) {
        //ra = ab*2;
        //return 1+ab+0.5;
    //}

    function div(int a, int n) public {
        w = int(a/n);
        wm = a%n;
        rev = a - (n * w);
    }

    function divResult() public view returns (int) {
        return w;
    }

    function wmr() public view returns (int) {
        return wm;
    }

    function revr() public view returns (int) {
        return rev;
    }

    function exp(uint8 mynum, uint8 ex) public view returns(uint8) {
        return mynum ** ex;
    }

    
}
