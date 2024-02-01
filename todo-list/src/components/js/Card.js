import '../css/styles.css'
import { useState } from 'react'

function Card({list}){
    const [state,setState] = useState('ALL')

    const ls = [...list]

    const render= (ls)=>{
        return ls.map((element)=>{
            return <div>{element.item}</div>
        })
    }

    return(
        <div className="card">
            <nav className="nav">
                <ul>
                    <li>All</li>
                    <li>Active</li>
                    <li>Completed</li>
                </ul>
            </nav>
            <div className='card_content'>
                {render(ls)}
            </div>
        </div>
    )
}

export default Card