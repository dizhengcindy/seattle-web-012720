import React from "react";
import StudentsBrowser from "./components/StudentsBrowser";
import StudentForm from "./components/StudentForm";
import store from "./redux/store";
import {fetchStudents} from "./redux" 
import { Provider } from "react-redux";



class App extends React.Component {

  componentDidMount() {
    fetchStudents()(store.dispatch)
  }

  render() {
    return (
      <Provider store={store}>
      <div>
        <h1>Hello 012720 from App Component</h1>
        <StudentForm />
        <StudentsBrowser />
      </div>
      </Provider>
    );
  }
}

export default App;
