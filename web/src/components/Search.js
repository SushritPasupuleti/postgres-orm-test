import React, {useState} from 'react'
const { useLazyQuery, gql } = require("@apollo/client");

const USERS = gql`
query SearchQuery($match: String) {
    ctos(order_by: { first_name: asc }, where: { first_name: { _ilike: $match } }) {
      id
      last_name
      first_name
    }
  }
  
`

function SearchedUsers() {
    const [inputVal, setInputVal] = useState("");
    const [search, { loading, error, data }] = useLazyQuery(USERS);

    if (loading) {
        return (
            <div>
                🔃
            </div>
        )
    }

    if (error) {
        return (
            <div>
                🛑
            </div>
        )
    }

    return (
        <div>
            <input type="text" onChange={(e) => setInputVal(e.target.value)}></input>
            <button onClick={() => search({ variables: { match: `%${inputVal}%` } })}>Search</button>
            {
                !data ? null :data.ctos.map(({
                    id, first_name, last_name
                }) => (
                    <div key={id} style={{display: 'flex', flexWrap: 'nowrap'}}>
                        <h3 style={{marginRight: '10px'}}>{first_name}</h3>
                        <h4>{last_name}</h4>
                    </div>
                ))
            }
        </div>
    )
}

export default SearchedUsers
