// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract TodoList{
    // struct is like an object actually you can see the details in docs
    struct Todo{
        string text;
        bool completed;
    }
    //  creating array of structs
    Todo[] public todos;

    
    function create(string calldata _text) external{
        todos.push(Todo({
            text:_text,
            completed:false
        }));
    }
    // this function updates the array
    function updateText(uint256 _index, string calldata _text) external{
        todos[_index].text = _text;
    }
    
    function get(uint _index) external view returns(string memory, bool){
        Todo memory todo = todos[_index];
        return (todo.text, todo.completed);
    }
    //  this function changes the type to bool
    function toggleCompleted(uint _index) external {
        todos[_index].completed = !todos[_index].completed;
    }
}