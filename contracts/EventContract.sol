pragma solidity >0.5.0;
pragma experimental ABIEncoderV2;


contract EventContract {

    uint256 public testNumber;

    event TestEvent(
        address hello,
        uint256 number
    );

    function emitEvent(uint256 newNumber) public {
        testNumber = newNumber;

        emit TestEvent(
            msg.sender,
            newNumber
        );
    }
}
