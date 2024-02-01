import '../css/styles.css'

function Form(){
    return(
        <form className="form">
            <input id="item_input" className="formInput input" type="text" placeholder="Add New" />
            <button id="add_button" className="formInput button"> Add To List </button>
        </form>
    )
}

export default Form