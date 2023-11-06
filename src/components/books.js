import React from 'react'

export default function Books(props) {
  return (
    <div>
        <h1>This Books are from API</h1>
        {props.books.map((book) => {
        return (
            <div key={book.id}>
            <h2>{book.title}</h2>
            <p>{book.body}</p>
            </div>
        ) }
    ) } 
    </div>
    
    

  )
}