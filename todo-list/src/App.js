import './App.css';
import Form from './components/js/Form.js';
import Card from './components/js/Card.js';
import useState from "react";

const Status = {
  TODO: "TODO",
  DONE: "DONE",
};
const listItems = [
  {
      'item' : 'Learn C',
      'status' : Status.TODO
  },
  {
      'item' : 'Learn C++',
      'status' : Status.TODO
  },
  {
      'item' : 'Learn Java',
      'status' : Status.TODO
  },
  {
      'item' : 'Learn Python',
      'status' : Status.TODO
  }
]

function App() {
  return (
    <div className='content'>
      <header className='header'>
        Simple ToDo App
      </header>
      <Form />
      <Card list = {listItems} />
    </div> 
  );
}

export default App;
